package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.internal.base.e;
import com.google.android.gms.internal.base.i;
import com.google.android.gms.internal.base.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f22814a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static HashSet<Uri> f22815b = new HashSet<>();

    /* renamed from: c  reason: collision with root package name */
    private final Context f22816c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f22817d = new j(Looper.getMainLooper());
    private final ExecutorService e = i.a().a();
    private final e f = new e();
    private final Map<e, ImageReceiver> g = new HashMap();
    private final Map<Uri, ImageReceiver> h = new HashMap();
    private final Map<Uri, Long> i = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri zab;
        private final ArrayList<e> zac = new ArrayList<>();

        ImageReceiver(Uri uri) {
            super(new j(Looper.getMainLooper()));
            this.zab = uri;
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.e.execute(new com.google.android.gms.common.images.a(ImageManager.this, this.zab, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zaa(e eVar) {
            c.a("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zac.add(eVar);
        }

        public final void zab(e eVar) {
            c.a("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zac.remove(eVar);
        }

        public final void zac() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.setPackage("com.google.android.gms");
            intent.putExtra("com.google.android.gms.extras.uri", this.zab);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.f22816c.sendBroadcast(intent);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/ImageManager$a.class */
    public interface a {
    }

    private ImageManager(Context context, boolean z) {
        this.f22816c = context.getApplicationContext();
    }
}
