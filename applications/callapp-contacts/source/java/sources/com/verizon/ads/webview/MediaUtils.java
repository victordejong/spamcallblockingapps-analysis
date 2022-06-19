package com.verizon.ads.webview;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import com.verizon.ads.EnvironmentInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.support.utils.ActivityUtils;
import com.verizon.ads.utils.IOUtils;
import java.io.File;
/* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/MediaUtils.class */
public class MediaUtils {

    /* renamed from: a */
    private static final Logger f62107a = Logger.getInstance(MediaUtils.class);

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/MediaUtils$PlayVideoListener.class */
    public interface PlayVideoListener {
        void onError(String str);

        void onVideoStarted(Uri uri);
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/MediaUtils$SavePictureListener.class */
    public interface SavePictureListener {
        void onError(String str);

        void onPictureSaved(File file);
    }

    /* renamed from: a */
    private static File m4991a(Context context) {
        File file;
        String str;
        if (Build.VERSION.SDK_INT >= 23) {
            File[] externalMediaDirs = context.getExternalMediaDirs();
            file = externalMediaDirs.length > 0 ? externalMediaDirs[0] : null;
        } else {
            file = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            str = packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            f62107a.m5564e("Could not retrieve the application label", e);
            str = "Saved";
        }
        File file2 = file;
        if (file != null) {
            file2 = new File(file.getAbsolutePath() + File.separator + "Verizon" + File.separator + str);
            file2.mkdirs();
        }
        return file2;
    }

    /* renamed from: a */
    public static void m4989a(Context context, final File file, final SavePictureListener savePictureListener, final boolean z) {
        MediaScannerConnection.scanFile(context, new String[]{file.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.verizon.ads.webview.MediaUtils.2
            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public final void onScanCompleted(String str, Uri uri) {
                if (uri != null) {
                    savePictureListener.onPictureSaved(file);
                    return;
                }
                if (z) {
                    file.delete();
                }
                savePictureListener.onError("Failed to scan file ".concat(String.valueOf(str)));
            }
        });
    }

    public static void savePicture(final Context context, String str, String str2, final SavePictureListener savePictureListener) {
        if (savePictureListener == null) {
            f62107a.m5565e("PictureListener is required");
        } else if (!new EnvironmentInfo(context).getDeviceInfo().isExternalStorageWritable()) {
            savePictureListener.onError("Storage not mounted, cannot add image to photo library");
        } else if (str == null) {
            savePictureListener.onError("url is required");
        } else {
            Uri parse = Uri.parse(str);
            if (!parse.getScheme().startsWith("http")) {
                File file = new File(parse.getPath());
                if (file.exists()) {
                    m4989a(context, file, savePictureListener, false);
                    return;
                }
                savePictureListener.onError("No file found at " + file.getAbsolutePath());
                return;
            }
            File m4991a = m4991a(context);
            if (m4991a == null) {
                savePictureListener.onError("Cannot access pictures directory");
                return;
            }
            File uniqueFileName = str2 == null ? IOUtils.getUniqueFileName(m4991a, parse.getLastPathSegment()) : IOUtils.getUniqueFileName(m4991a, str2);
            if (uniqueFileName == null) {
                savePictureListener.onError("Unable to store photo");
            } else {
                IOUtils.downloadFile(str, null, uniqueFileName, new IOUtils.DownloadListener() { // from class: com.verizon.ads.webview.MediaUtils.1
                    @Override // com.verizon.ads.utils.IOUtils.DownloadListener
                    public final void onDownloadFailed(Throwable th) {
                        savePictureListener.onError("Unable to download file");
                    }

                    @Override // com.verizon.ads.utils.IOUtils.DownloadListener
                    public final void onDownloadSucceeded(File file2) {
                        if (Logger.isLogLevelEnabled(3)) {
                            Logger logger = MediaUtils.f62107a;
                            logger.m5567d("Picture downloaded to: " + file2.getAbsolutePath());
                        }
                        MediaUtils.m4989a(context, file2, savePictureListener, true);
                    }
                });
            }
        }
    }

    public static void startVideoPlayer(Context context, String str, PlayVideoListener playVideoListener) {
        if (playVideoListener == null) {
            f62107a.m5565e("VideoListener is required");
        } else if (str == null) {
            playVideoListener.onError("url is required");
        } else {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(parse, "video/*");
            if (ActivityUtils.startActivity(context, intent)) {
                playVideoListener.onVideoStarted(parse);
            } else {
                playVideoListener.onError("No video application installed");
            }
        }
    }
}
