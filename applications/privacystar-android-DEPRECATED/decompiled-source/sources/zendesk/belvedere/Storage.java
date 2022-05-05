package zendesk.belvedere;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/Storage.class */
class Storage {
    private static final String ATTACHMENT_NAME = "attachment_%s";
    private static final String CAMERA_DATETIME_STRING_FORMAT = "yyyyMMddHHmmssSSS";
    private static final String CAMERA_IMG_NAME = "camera_image_%s";
    private static final String CAMERA_IMG_SUFFIX = ".jpg";
    private static final String FILE_DIR_BELVEDERE = "belvedere-data-v2";
    private static final String FILE_DIR_MEDIA = "media";
    private static final String FILE_DIR_USER = "user";

    private void clearDirectory(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                clearDirectory(file2);
            }
        }
        file.delete();
    }

    private File createTempFile(File file, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        sb.append(str2);
        return new File(file, sb.toString());
    }

    private File getAttachmentDir(Context context, String str) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            str2 = str + File.separator;
        } else {
            str2 = "";
        }
        File file = new File(getRootDir(context) + File.separator + FILE_DIR_BELVEDERE + File.separator + str2);
        if (!file.isDirectory()) {
            file.mkdirs();
        }
        if (!file.isDirectory()) {
            file = null;
        }
        return file;
    }

    private static String getExtension(Context context, Uri uri, boolean z) {
        String str;
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String scheme = uri.getScheme();
        if (FirebaseAnalytics.Param.CONTENT.equals(scheme)) {
            str = singleton.getExtensionFromMimeType(context.getContentResolver().getType(uri));
        } else {
            str = "tmp";
            if ("file".equals(scheme)) {
                String lastPathSegment = uri.getLastPathSegment();
                int lastIndexOf = lastPathSegment.lastIndexOf(".");
                str = "tmp";
                if (lastIndexOf != -1) {
                    str = lastPathSegment.substring(lastIndexOf + 1, lastPathSegment.length());
                }
            }
        }
        return z ? String.format(Locale.US, ".%s", str) : str;
    }

    private static String getFileNameFromUri(Context context, Uri uri) {
        String str;
        String scheme = uri.getScheme();
        if (FirebaseAnalytics.Param.CONTENT.equals(scheme)) {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            str = "";
            if (query != null) {
                str = "";
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(0);
                    }
                } finally {
                    query.close();
                }
            }
        } else {
            str = "";
            if ("file".equals(scheme)) {
                str = uri.getLastPathSegment();
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v9 */
    public static MediaResult getMediaResultForUri(Context context, Uri uri) {
        String str = "";
        String str2 = "";
        boolean z = true;
        if (FirebaseAnalytics.Param.CONTENT.equals(uri.getScheme())) {
            ContentResolver contentResolver = context.getContentResolver();
            Cursor query = contentResolver.query(uri, new String[]{"_size", "_display_name"}, null, null, null);
            String type = contentResolver.getType(uri);
            str2 = "";
            str = type;
            z = true;
            if (query != null) {
                str2 = "";
                boolean z2 = true;
                try {
                    if (query.moveToFirst()) {
                        long j = query.getLong(query.getColumnIndex("_size"));
                        str2 = query.getString(query.getColumnIndex("_display_name"));
                        z2 = j;
                    }
                    query.close();
                    str = type;
                    z = z2;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
        }
        long j2 = z ? 1L : 0L;
        long j3 = z ? 1L : 0L;
        long j4 = z ? 1L : 0L;
        return new MediaResult(null, uri, uri, str2, str, j2, -1L, -1L);
    }

    private String getRootDir(Context context) {
        return context.getCacheDir().getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearStorage(Context context) {
        File file = new File(getRootDir(context) + File.separator + FILE_DIR_BELVEDERE);
        if (file.isDirectory()) {
            clearDirectory(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File getFile(Context context, String str, String str2) {
        String str3;
        if (!TextUtils.isEmpty(str)) {
            str3 = FILE_DIR_USER + File.separator + str;
        } else {
            str3 = FILE_DIR_USER;
        }
        File attachmentDir = getAttachmentDir(context, str3);
        if (attachmentDir != null) {
            return createTempFile(attachmentDir, str2, null);
        }
        C2598L.m4w("Belvedere", "Error creating cache directory");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File getFileForCamera(Context context) {
        File attachmentDir = getAttachmentDir(context, FILE_DIR_MEDIA);
        if (attachmentDir == null) {
            C2598L.m4w("Belvedere", "Error creating cache directory");
            return null;
        }
        return createTempFile(attachmentDir, String.format(Locale.US, CAMERA_IMG_NAME, new SimpleDateFormat(CAMERA_DATETIME_STRING_FORMAT, Locale.US).format(new Date(System.currentTimeMillis()))), CAMERA_IMG_SUFFIX);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File getFileForUri(Context context, Uri uri, String str) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            str2 = FILE_DIR_USER + File.separator + str;
        } else {
            str2 = FILE_DIR_MEDIA;
        }
        File attachmentDir = getAttachmentDir(context, str2);
        String str3 = null;
        if (attachmentDir == null) {
            C2598L.m4w("Belvedere", "Error creating cache directory");
            return null;
        }
        String fileNameFromUri = getFileNameFromUri(context, uri);
        String str4 = fileNameFromUri;
        if (TextUtils.isEmpty(fileNameFromUri)) {
            str4 = String.format(Locale.US, ATTACHMENT_NAME, new SimpleDateFormat(CAMERA_DATETIME_STRING_FORMAT, Locale.US).format(new Date(System.currentTimeMillis())));
            str3 = getExtension(context, uri, true);
        }
        return createTempFile(attachmentDir, str4, str3);
    }

    String getFileProviderAuthority(Context context) {
        return String.format(Locale.US, "%s%s", context.getPackageName(), context.getString(C2603R.string.belvedere_sdk_fpa_suffix_v2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Uri getFileProviderUri(Context context, File file) {
        String fileProviderAuthority = getFileProviderAuthority(context);
        try {
            return BelvedereFileProvider.getUriForFile(context, fileProviderAuthority, file);
        } catch (IllegalArgumentException e) {
            C2598L.m6e("Belvedere", String.format(Locale.US, "The selected file can't be shared %s", file.toString()));
            return null;
        } catch (NullPointerException e2) {
            String format = String.format(Locale.US, "=====================\nFileProvider failed to retrieve file uri. There might be an issue with the FileProvider \nPlease make sure that manifest-merger is working, and that you have defined the applicationId (package name) in the build.gradle\nManifest merger: http://tools.android.com/tech-docs/new-build-system/user-guide/manifest-merger\nIf your are not able to use gradle or the manifest merger, please add the following to your AndroidManifest.xml:\n        <provider\n            android:name=\"com.zendesk.belvedere.BelvedereFileProvider\"\n            android:authorities=\"${applicationId}%s\"\n            android:exported=\"false\"\n            android:grantUriPermissions=\"true\">\n            <meta-data\n                android:name=\"android.support.FILE_PROVIDER_PATHS\"\n                android:resource=\"@xml/belvedere_attachment_storage_v2\" />\n        </provider>\n=====================", fileProviderAuthority);
            Log.e("Belvedere", format, e2);
            C2598L.m5e("Belvedere", format, e2);
            throw new RuntimeException("Please specify your application id");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void grantPermissionsForUri(Context context, Intent intent, Uri uri, int i) {
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
            context.grantUriPermission(resolveInfo.activityInfo.packageName, uri, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void revokePermissionsFromUri(Context context, Uri uri, int i) {
        context.revokeUriPermission(uri, i);
    }
}
