package zendesk.belvedere;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import zendesk.belvedere.C2598L;
import zendesk.belvedere.MediaIntent;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/Belvedere.class */
public class Belvedere {
    static final String LOG_TAG = "Belvedere";
    private static final String MIME_TYPE_IMAGE = "image";
    @SuppressLint({"StaticFieldLeak"})
    private static Belvedere instance;
    private final Context context;
    private MediaSource mediaSource;
    private IntentRegistry intentRegistry = new IntentRegistry();
    private Storage storage = new Storage();

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/Belvedere$Builder.class */
    public static class Builder {
        Context context;
        C2598L.Logger logger = new C2598L.DefaultLogger();
        boolean debug = false;

        public Builder(Context context) {
            this.context = context;
        }

        public Belvedere build() {
            return new Belvedere(this);
        }

        public Builder debug(boolean z) {
            this.debug = z;
            return this;
        }

        public Builder logger(C2598L.Logger logger) {
            this.logger = logger;
            return this;
        }
    }

    Belvedere(Builder builder) {
        this.context = builder.context;
        builder.logger.setLoggable(builder.debug);
        C2598L.setLogger(builder.logger);
        this.mediaSource = new MediaSource(this.context, this.storage, this.intentRegistry);
        C2598L.m7d(LOG_TAG, "Belvedere initialized");
    }

    @NonNull
    public static Belvedere from(@NonNull Context context) {
        synchronized (Belvedere.class) {
            try {
                if (instance == null) {
                    if (context == null || context.getApplicationContext() == null) {
                        throw new IllegalArgumentException("Invalid context provided");
                    }
                    instance = new Builder(context.getApplicationContext()).build();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static void setSingletonInstance(@NonNull Belvedere belvedere) {
        if (belvedere == null) {
            throw new IllegalArgumentException("Belvedere must not be null.");
        }
        synchronized (Belvedere.class) {
            try {
                if (instance != null) {
                    throw new IllegalStateException("Singleton instance already exists.");
                }
                instance = belvedere;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public MediaIntent.CameraIntentBuilder camera() {
        return new MediaIntent.CameraIntentBuilder(this.intentRegistry.reserveSlot(), this.mediaSource, this.intentRegistry);
    }

    public void clearStorage() {
        C2598L.m7d(LOG_TAG, "Clear Belvedere cache");
        this.storage.clearStorage(this.context);
    }

    @NonNull
    public MediaIntent.DocumentIntentBuilder document() {
        return new MediaIntent.DocumentIntentBuilder(this.intentRegistry.reserveSlot(), this.mediaSource);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0, types: [long] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zendesk.belvedere.MediaResult getFile(@android.support.annotation.NonNull java.lang.String r15, @android.support.annotation.NonNull java.lang.String r16) {
        /*
            r14 = this;
            r0 = r14
            zendesk.belvedere.Storage r0 = r0.storage
            r1 = r14
            android.content.Context r1 = r1.context
            r2 = r15
            r3 = r16
            java.io.File r0 = r0.getFile(r1, r2, r3)
            r15 = r0
            java.lang.String r0 = "Belvedere"
            java.util.Locale r1 = java.util.Locale.US
            java.lang.String r2 = "Get internal File: %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r15
            r4[r5] = r6
            java.lang.String r1 = java.lang.String.format(r1, r2, r3)
            zendesk.belvedere.C2598L.m7d(r0, r1)
            r0 = r15
            if (r0 == 0) goto L_0x0097
            r0 = r14
            zendesk.belvedere.Storage r0 = r0.storage
            r1 = r14
            android.content.Context r1 = r1.context
            r2 = r15
            android.net.Uri r0 = r0.getFileProviderUri(r1, r2)
            r17 = r0
            r0 = r17
            if (r0 == 0) goto L_0x0097
            r0 = r14
            android.content.Context r0 = r0.context
            r1 = r17
            zendesk.belvedere.MediaResult r0 = zendesk.belvedere.Storage.getMediaResultForUri(r0, r1)
            r18 = r0
            r0 = r18
            java.lang.String r0 = r0.getMimeType()
            java.lang.String r1 = "image"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0074
            r0 = r15
            android.util.Pair r0 = zendesk.belvedere.BitmapUtils.getImageDimensions(r0)
            r19 = r0
            r0 = r19
            java.lang.Object r0 = r0.first
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            long r0 = (long) r0
            r20 = r0
            r0 = r19
            java.lang.Object r0 = r0.second
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            long r0 = (long) r0
            r22 = r0
            goto L_0x007d
        L_0x0074:
            r0 = -1
            r20 = r0
            r0 = r20
            r22 = r0
        L_0x007d:
            zendesk.belvedere.MediaResult r0 = new zendesk.belvedere.MediaResult
            r1 = r0
            r2 = r15
            r3 = r17
            r4 = r17
            r5 = r16
            r6 = r18
            java.lang.String r6 = r6.getMimeType()
            r7 = r18
            long r7 = r7.getSize()
            r8 = r20
            r9 = r22
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return r0
        L_0x0097:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.belvedere.Belvedere.getFile(java.lang.String, java.lang.String):zendesk.belvedere.MediaResult");
    }

    public void getFilesFromActivityOnResult(int i, int i2, Intent intent, @NonNull Callback<List<MediaResult>> callback) {
        getFilesFromActivityOnResult(i, i2, intent, callback, true);
    }

    public void getFilesFromActivityOnResult(int i, int i2, Intent intent, @NonNull Callback<List<MediaResult>> callback, boolean z) {
        this.mediaSource.getFilesFromActivityOnResult(this.context, i, i2, intent, callback, z);
    }

    @NonNull
    public Intent getShareIntent(@NonNull Uri uri, @NonNull String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.STREAM", uri);
        if (!TextUtils.isEmpty(str)) {
            intent.setType(str);
        }
        grantPermissionsForUri(intent, uri);
        return intent;
    }

    @NonNull
    public Intent getViewIntent(@NonNull Uri uri, @Nullable String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(str)) {
            intent.setDataAndType(uri, str);
        }
        grantPermissionsForUri(intent, uri);
        return intent;
    }

    public void grantPermissionsForUri(@NonNull Intent intent, @NonNull Uri uri) {
        C2598L.m7d(LOG_TAG, String.format(Locale.US, "Grant Permission - Intent: %s - Uri: %s", intent, uri));
        this.storage.grantPermissionsForUri(this.context, intent, uri, 3);
    }

    public void resolveUris(@NonNull List<Uri> list, @NonNull String str, @NonNull Callback<List<MediaResult>> callback) {
        if (list == null || list.size() <= 0) {
            callback.internalSuccess(new ArrayList(0));
        } else {
            ResolveUriTask.start(this.context, this.storage, callback, list, str);
        }
    }

    public void revokePermissionsForUri(@NonNull Uri uri) {
        C2598L.m7d(LOG_TAG, String.format(Locale.US, "Revoke Permission - Uri: %s", uri));
        this.storage.revokePermissionsFromUri(this.context, uri, 3);
    }
}
