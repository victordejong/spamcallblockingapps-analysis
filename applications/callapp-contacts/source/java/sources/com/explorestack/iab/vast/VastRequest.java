package com.explorestack.iab.vast;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastUrlProcessorRegistry;
import com.explorestack.iab.vast.activity.VastActivity;
import com.explorestack.iab.vast.activity.VastView;
import com.explorestack.iab.vast.processor.C9659a;
import com.explorestack.iab.vast.processor.C9660b;
import com.explorestack.iab.vast.processor.DefaultMediaPicker;
import com.explorestack.iab.vast.processor.VastAd;
import com.explorestack.iab.vast.processor.VastMediaPicker;
import com.explorestack.iab.vast.tags.C9666d;
import com.explorestack.iab.vast.tags.MediaFileTag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastRequest.class */
public class VastRequest implements Parcelable {
    private static final String CACHE_DIRECTORY = "/vast_rtb_cache/";
    private static final int CACHE_SIZE = 5;
    public static final String PARAMS_ERROR_CODE = "params_error_code";
    private static final String TAG = "VastRequest";
    private boolean autoClose;
    private float companionCloseTime;
    private Bundle extras;
    private Uri fileUri;
    private boolean forceUseNativeCloseTime;
    private final String hash;
    private int maxDurationMillis;
    private VastMediaPicker<MediaFileTag> mediaFilePicker;
    private boolean preCache;
    private boolean preloadCompanion;

    /* renamed from: r1 */
    private boolean f32642r1;

    /* renamed from: r2 */
    private boolean f32643r2;
    private int requestedOrientation;
    private boolean useScreenSizeForCompanionOrientation;
    private boolean useScreenSizeForVideoOrientation;
    private VastAd vastAd;
    private float videoCloseTime;
    private VideoType videoType;
    private String xmlUrl;
    private static final VastUrlProcessorRegistry.AbstractC9618a fireUrlProcessCallback = new VastUrlProcessorRegistry.AbstractC9618a() { // from class: com.explorestack.iab.vast.VastRequest.5
        @Override // com.explorestack.iab.vast.VastUrlProcessorRegistry.AbstractC9618a
        /* renamed from: a */
        public final void mo24012a(String str) {
            VastLog.m24015d(VastRequest.TAG, String.format("Fire url: %s", str));
            Utils.httpGetURL(str);
        }
    };
    public static final Parcelable.Creator<VastRequest> CREATOR = new Parcelable.Creator<VastRequest>() { // from class: com.explorestack.iab.vast.VastRequest.6
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ VastRequest createFromParcel(Parcel parcel) {
            return new VastRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ VastRequest[] newArray(int i) {
            return new VastRequest[i];
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastRequest$Builder.class */
    public class Builder {
        public Builder() {
            VastRequest.this = r4;
        }

        public Builder addExtra(String str, String str2) {
            VastRequest.this.addExtra(str, str2);
            return this;
        }

        public VastRequest build() {
            return VastRequest.this;
        }

        public Builder forceUseNativeCloseTime(boolean z) {
            VastRequest.this.forceUseNativeCloseTime = z;
            return this;
        }

        public Builder setAutoClose(boolean z) {
            VastRequest.this.autoClose = z;
            return this;
        }

        public Builder setCompanionCloseTime(int i) {
            VastRequest.this.companionCloseTime = i;
            return this;
        }

        public Builder setMaxDuration(int i) {
            VastRequest.this.maxDurationMillis = i;
            return this;
        }

        public Builder setMediaFilePicker(VastMediaPicker<MediaFileTag> vastMediaPicker) {
            VastRequest.this.mediaFilePicker = vastMediaPicker;
            return this;
        }

        public Builder setPreCache(boolean z) {
            VastRequest.this.preCache = z;
            return this;
        }

        public Builder setPreloadCompanion(boolean z) {
            VastRequest.this.preloadCompanion = z;
            return this;
        }

        public Builder setUseScreenSizeForCompanionOrientation(boolean z) {
            VastRequest.this.useScreenSizeForCompanionOrientation = z;
            return this;
        }

        public Builder setUseScreenSizeForVideoOrientation(boolean z) {
            VastRequest.this.useScreenSizeForVideoOrientation = z;
            return this;
        }

        public Builder setVideoCloseTime(int i) {
            VastRequest.this.videoCloseTime = i;
            return this;
        }

        public Builder setXmlUrl(String str) {
            VastRequest.this.xmlUrl = str;
            return this;
        }
    }

    /* renamed from: com.explorestack.iab.vast.VastRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastRequest$a.class */
    public final class C9616a implements Comparable {

        /* renamed from: a */
        public long f32659a;

        /* renamed from: b */
        public File f32660b;

        public C9616a(File file) {
            VastRequest.this = r5;
            this.f32660b = file;
            this.f32659a = file.lastModified();
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            long j = this.f32659a;
            long j2 = ((C9616a) obj).f32659a;
            if (j > j2) {
                return -1;
            }
            return j == j2 ? 0 : 1;
        }
    }

    private VastRequest() {
        this.videoType = VideoType.NonRewarded;
        this.videoCloseTime = -1.0f;
        this.requestedOrientation = 0;
        this.preCache = true;
        this.useScreenSizeForVideoOrientation = false;
        this.useScreenSizeForCompanionOrientation = true;
        this.preloadCompanion = true;
        this.f32642r1 = false;
        this.f32643r2 = false;
        this.hash = Integer.toHexString(hashCode());
    }

    protected VastRequest(Parcel parcel) {
        this.videoType = VideoType.NonRewarded;
        this.videoCloseTime = -1.0f;
        this.requestedOrientation = 0;
        this.preCache = true;
        this.useScreenSizeForVideoOrientation = false;
        this.useScreenSizeForCompanionOrientation = true;
        this.preloadCompanion = true;
        this.f32642r1 = false;
        this.f32643r2 = false;
        this.hash = parcel.readString();
        this.fileUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.vastAd = (VastAd) parcel.readParcelable(VastAd.class.getClassLoader());
        this.xmlUrl = parcel.readString();
        this.videoType = (VideoType) parcel.readSerializable();
        this.extras = parcel.readBundle(Bundle.class.getClassLoader());
        this.videoCloseTime = parcel.readFloat();
        this.companionCloseTime = parcel.readFloat();
        this.forceUseNativeCloseTime = parcel.readByte() != 0;
        this.maxDurationMillis = parcel.readInt();
        this.requestedOrientation = parcel.readInt();
        this.preCache = parcel.readByte() != 0;
        this.autoClose = parcel.readByte() != 0;
        this.useScreenSizeForVideoOrientation = parcel.readByte() != 0;
        this.useScreenSizeForCompanionOrientation = parcel.readByte() != 0;
        this.preloadCompanion = parcel.readByte() != 0;
        this.f32642r1 = parcel.readByte() != 0;
        this.f32643r2 = parcel.readByte() != 0;
        VastAd vastAd = this.vastAd;
        if (vastAd != null) {
            vastAd.setVastRequest(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    private void cache(Context context, String str) throws Exception {
        String cacheDirName = getCacheDirName(context);
        if (cacheDirName != null) {
            File file = new File(cacheDirName);
            if (!file.exists()) {
                file.mkdirs();
            }
            int length = file.getPath().length();
            String str2 = "temp" + System.currentTimeMillis();
            String replace = str.substring(0, Math.min(230 - length, str.length())).replace("/", "").replace(":", "");
            File file2 = new File(file, replace);
            if (file2.exists()) {
                this.fileUri = Uri.fromFile(file2);
                return;
            }
            File file3 = new File(file, str2);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            InputStream inputStream = httpURLConnection.getInputStream();
            FileOutputStream fileOutputStream = new FileOutputStream(file3);
            long contentLength = httpURLConnection.getContentLength();
            char c = 0;
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
                c += read;
            }
            fileOutputStream.close();
            if (contentLength == c) {
                file3.renameTo(new File(file, replace));
            }
            this.fileUri = Uri.fromFile(new File(file, replace));
            return;
        }
        throw new FileNotFoundException("No dir for caching file");
    }

    private void clearCache(Context context) {
        File[] listFiles;
        int i;
        try {
            String cacheDirName = getCacheDirName(context);
            if (cacheDirName == null || (listFiles = new File(cacheDirName).listFiles()) == null || listFiles.length <= 5) {
                return;
            }
            C9616a[] c9616aArr = new C9616a[listFiles.length];
            for (int i2 = 0; i2 < listFiles.length; i2++) {
                c9616aArr[i2] = new C9616a(listFiles[i2]);
            }
            Arrays.sort(c9616aArr);
            int i3 = 0;
            while (true) {
                if (i3 < listFiles.length) {
                    listFiles[i3] = c9616aArr[i3].f32660b;
                    i3++;
                }
            }
            for (i = 5; i < listFiles.length; i++) {
                if (!Uri.fromFile(listFiles[i]).equals(this.fileUri)) {
                    listFiles[i].delete();
                }
            }
        } catch (Exception e) {
            VastLog.m24016a(TAG, e);
        }
    }

    private String getCacheDirName(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            return externalFilesDir.getPath() + CACHE_DIRECTORY;
        }
        return null;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public void sendError(final Context context, final int i, final VastErrorListener vastErrorListener) {
        VastLog.m24015d(TAG, "sendError, code: ".concat(String.valueOf(i)));
        if (VastError.m24020a(i)) {
            sendVastModelError(i);
        }
        if (vastErrorListener != null) {
            Utils.m24110a(new Runnable() { // from class: com.explorestack.iab.vast.VastRequest.4
                @Override // java.lang.Runnable
                public final void run() {
                    vastErrorListener.onVastError(context, VastRequest.this, i);
                }
            });
        }
    }

    private void sendReady(final VastRequestListener vastRequestListener) {
        VastLog.m24015d(TAG, "sendReady");
        if (vastRequestListener != null) {
            Utils.m24110a(new Runnable() { // from class: com.explorestack.iab.vast.VastRequest.3
                @Override // java.lang.Runnable
                public final void run() {
                    vastRequestListener.onVastLoaded(VastRequest.this);
                }
            });
        }
    }

    private void sendVastModelError(int i) {
        try {
            sendError(i);
        } catch (Exception e) {
            VastLog.m24016a(TAG, e);
        }
    }

    public void addExtra(String str, String str2) {
        if (this.extras == null) {
            this.extras = new Bundle();
        }
        this.extras.putString(str, str2);
    }

    public boolean checkFile() {
        boolean z;
        try {
            Uri uri = this.fileUri;
            z = false;
            if (uri != null) {
                z = false;
                if (!TextUtils.isEmpty(uri.getPath())) {
                    z = false;
                    if (new File(this.fileUri.getPath()).exists()) {
                        z = true;
                    }
                }
            }
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void display(Context context, VideoType videoType, VastActivityListener vastActivityListener) {
        VastLog.m24015d(TAG, "play");
        if (this.vastAd == null) {
            VastLog.m24015d(TAG, "vastAd is null; nothing to play");
        } else if (!Utils.m24118a(context)) {
            sendError(context, 1, vastActivityListener);
        } else {
            this.videoType = videoType;
            this.requestedOrientation = context.getResources().getConfiguration().orientation;
            VastActivity.C9621a c9621a = new VastActivity.C9621a();
            c9621a.f32671a = this;
            c9621a.f32672b = vastActivityListener;
            c9621a.m24001a(context);
        }
    }

    public void display(VastView vastView) {
        if (this.vastAd == null) {
            VastLog.m24015d(TAG, "vastAd is null; nothing to play");
            return;
        }
        this.videoType = VideoType.NonRewarded;
        vastView.m23984a(this, false);
    }

    public void fireErrorUrls(List<String> list, Bundle bundle) {
        fireUrls(list, bundle);
    }

    public void fireUrls(List<String> list, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.extras;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        if (list != null) {
            VastUrlProcessorRegistry.m24013a(list, bundle2, fireUrlProcessCallback);
        } else {
            VastLog.m24015d(TAG, "Url list is null");
        }
    }

    public float getCompanionCloseTime() {
        return this.companionCloseTime;
    }

    public Uri getFileUri() {
        return this.fileUri;
    }

    public String getHash() {
        return this.hash;
    }

    public int getMaxDurationMillis() {
        return this.maxDurationMillis;
    }

    public int getPreferredVideoOrientation() {
        if (!shouldUseScreenSizeForVideoOrientation()) {
            return 0;
        }
        VastAd vastAd = this.vastAd;
        if (vastAd == null) {
            return 2;
        }
        MediaFileTag pickedMediaFileTag = vastAd.getPickedMediaFileTag();
        return Utils.m24120a(pickedMediaFileTag.m23842d("width"), pickedMediaFileTag.m23842d("height"));
    }

    public int getRequestedOrientation() {
        return this.requestedOrientation;
    }

    public VastAd getVastAd() {
        return this.vastAd;
    }

    public float getVideoCloseTime() {
        return this.videoCloseTime;
    }

    public VideoType getVideoType() {
        return this.videoType;
    }

    public boolean isAutoClose() {
        return this.autoClose;
    }

    public boolean isForceUseNativeCloseTime() {
        return this.forceUseNativeCloseTime;
    }

    public boolean isPreCache() {
        return this.preCache;
    }

    public boolean isR1() {
        return this.f32642r1;
    }

    public boolean isR2() {
        return this.f32643r2;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.explorestack.iab.vast.VastRequest$2] */
    public void loadVideoWithData(final Context context, final String str, final VastRequestListener vastRequestListener) {
        VastLog.m24015d(TAG, "loadVideoWithData\n".concat(String.valueOf(str)));
        this.vastAd = null;
        if (!Utils.m24118a(context)) {
            sendError(context, 1, vastRequestListener);
            return;
        }
        try {
            new Thread() { // from class: com.explorestack.iab.vast.VastRequest.2
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    VastRequest.this.loadVideoWithDataSync(context, str, vastRequestListener);
                }
            }.start();
        } catch (Exception e) {
            sendError(context, VastError.ERROR_CODE_BAD_URI, vastRequestListener);
        }
    }

    public void loadVideoWithDataSync(Context context, String str, VastRequestListener vastRequestListener) {
        VastMediaPicker<MediaFileTag> vastMediaPicker = this.mediaFilePicker;
        DefaultMediaPicker defaultMediaPicker = vastMediaPicker;
        if (vastMediaPicker == null) {
            defaultMediaPicker = new DefaultMediaPicker(context);
        }
        C9660b m23884a = new C9659a(this, defaultMediaPicker).m23884a(str);
        if (!m23884a.m23879a()) {
            sendError(context, m23884a.f32773c, vastRequestListener);
            return;
        }
        VastAd vastAd = m23884a.f32772b;
        this.vastAd = vastAd;
        vastAd.setVastRequest(this);
        C9666d appodealExtension = this.vastAd.getAppodealExtension();
        if (appodealExtension != null) {
            Boolean mo23861l = appodealExtension.mo23861l();
            if (mo23861l != null) {
                if (mo23861l.booleanValue()) {
                    this.useScreenSizeForVideoOrientation = false;
                    this.useScreenSizeForCompanionOrientation = false;
                } else {
                    this.useScreenSizeForVideoOrientation = true;
                    this.useScreenSizeForCompanionOrientation = true;
                }
            }
            if (appodealExtension.mo23872a().f32829f > BitmapDescriptorFactory.HUE_RED) {
                this.companionCloseTime = appodealExtension.mo23872a().f32829f;
            }
            if (appodealExtension.mo23860m() != null) {
                this.videoCloseTime = appodealExtension.mo23860m().floatValue();
            }
            this.f32642r1 = appodealExtension.mo23858o();
            this.f32643r2 = appodealExtension.mo23857p();
        }
        if (!this.preCache) {
            sendReady(vastRequestListener);
            return;
        }
        try {
            cache(context, this.vastAd.getPickedMediaFileTag().getText());
            Uri uri = this.fileUri;
            if (uri != null && !TextUtils.isEmpty(uri.getPath()) && new File(this.fileUri.getPath()).exists()) {
                Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(this.fileUri.getPath(), 1);
                if (createVideoThumbnail == null) {
                    VastLog.m24015d(TAG, "video file not supported");
                    sendError(context, VastError.ERROR_CODE_BAD_FILE, vastRequestListener);
                } else if (!createVideoThumbnail.equals(Bitmap.createBitmap(createVideoThumbnail.getWidth(), createVideoThumbnail.getHeight(), createVideoThumbnail.getConfig()))) {
                    try {
                        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                        mediaMetadataRetriever.setDataSource(context, this.fileUri);
                        long parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
                        int i = this.maxDurationMillis;
                        if (i == 0 || parseLong <= i) {
                            sendReady(vastRequestListener);
                        } else {
                            sendError(context, 202, vastRequestListener);
                        }
                    } catch (Exception e) {
                        VastLog.m24016a(TAG, e);
                        sendError(context, VastError.ERROR_CODE_BAD_FILE, vastRequestListener);
                    }
                } else {
                    VastLog.m24015d(TAG, "empty thumbnail");
                    sendError(context, VastError.ERROR_CODE_BAD_FILE, vastRequestListener);
                }
                clearCache(context);
                return;
            }
            VastLog.m24015d(TAG, "fileUri is null");
            sendError(context, VastError.ERROR_CODE_BAD_URI, vastRequestListener);
        } catch (Exception e2) {
            VastLog.m24015d(TAG, "exception when to cache file");
            sendError(context, VastError.ERROR_CODE_BAD_URI, vastRequestListener);
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.explorestack.iab.vast.VastRequest$1] */
    public void loadVideoWithUrl(final Context context, final String str, final VastRequestListener vastRequestListener) {
        VastLog.m24015d(TAG, "loadVideoWithUrl ".concat(String.valueOf(str)));
        this.vastAd = null;
        if (!Utils.m24118a(context)) {
            sendError(context, 1, vastRequestListener);
            return;
        }
        try {
            new Thread() { // from class: com.explorestack.iab.vast.VastRequest.1
                /* JADX WARN: Removed duplicated region for block: B:45:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // java.lang.Thread, java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 182
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.vast.VastRequest.C96101.run():void");
                }
            }.start();
        } catch (Exception e) {
            sendError(context, VastError.ERROR_CODE_BAD_URI, vastRequestListener);
        }
    }

    public void sendError(int i) {
        if (this.vastAd != null) {
            Bundle bundle = new Bundle();
            bundle.putInt(PARAMS_ERROR_CODE, i);
            fireErrorUrls(this.vastAd.getErrorUrlList(), bundle);
        }
    }

    public boolean shouldPreloadCompanion() {
        return this.preloadCompanion;
    }

    public boolean shouldUseScreenSizeForCompanionOrientation() {
        return this.useScreenSizeForCompanionOrientation;
    }

    public boolean shouldUseScreenSizeForVideoOrientation() {
        return this.useScreenSizeForVideoOrientation;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.hash);
        parcel.writeParcelable(this.fileUri, i);
        parcel.writeParcelable(this.vastAd, i);
        parcel.writeString(this.xmlUrl);
        parcel.writeSerializable(this.videoType);
        parcel.writeBundle(this.extras);
        parcel.writeFloat(this.videoCloseTime);
        parcel.writeFloat(this.companionCloseTime);
        parcel.writeByte(this.forceUseNativeCloseTime ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.maxDurationMillis);
        parcel.writeInt(this.requestedOrientation);
        parcel.writeByte(this.preCache ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.autoClose ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.useScreenSizeForVideoOrientation ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.useScreenSizeForCompanionOrientation ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.preloadCompanion ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f32642r1 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f32643r2 ? (byte) 1 : (byte) 0);
    }
}
