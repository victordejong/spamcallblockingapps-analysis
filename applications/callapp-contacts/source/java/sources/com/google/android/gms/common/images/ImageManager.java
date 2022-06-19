package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.C12024c;
import com.google.android.gms.internal.base.C13155e;
import com.google.android.gms.internal.base.C13159i;
import com.google.android.gms.internal.base.HandlerC13160j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {

    /* renamed from: a */
    private static final Object f39454a = new Object();

    /* renamed from: b */
    private static HashSet<Uri> f39455b = new HashSet<>();

    /* renamed from: c */
    private final Context f39456c;

    /* renamed from: d */
    private final Handler f39457d = new HandlerC13160j(Looper.getMainLooper());

    /* renamed from: e */
    private final ExecutorService f39458e = C13159i.m13593a().mo13596a();

    /* renamed from: f */
    private final C13155e f39459f = new C13155e();

    /* renamed from: g */
    private final Map<AbstractC11967e, ImageReceiver> f39460g = new HashMap();

    /* renamed from: h */
    private final Map<Uri, ImageReceiver> f39461h = new HashMap();

    /* renamed from: i */
    private final Map<Uri, Long> f39462i = new HashMap();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri zab;
        private final ArrayList<AbstractC11967e> zac = new ArrayList<>();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ImageReceiver(Uri uri) {
            super(new HandlerC13160j(Looper.getMainLooper()));
            ImageManager.this = r6;
            this.zab = uri;
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.f39458e.execute(new RunnableC11963a(ImageManager.this, this.zab, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zaa(AbstractC11967e abstractC11967e) {
            C12024c.m19189a("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zac.add(abstractC11967e);
        }

        public final void zab(AbstractC11967e abstractC11967e) {
            C12024c.m19189a("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zac.remove(abstractC11967e);
        }

        public final void zac() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.setPackage("com.google.android.gms");
            intent.putExtra("com.google.android.gms.extras.uri", this.zab);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.f39456c.sendBroadcast(intent);
        }
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/ImageManager$a.class */
    public interface AbstractC11962a {
    }

    private ImageManager(Context context, boolean z) {
        this.f39456c = context.getApplicationContext();
    }
}
