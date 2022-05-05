package com.android.contacts;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.v4.a.a.h;
import android.support.v4.a.a.j;
import android.util.Log;
import android.util.LruCache;
import android.widget.ImageView;
import com.android.contacts.k;
import com.android.contacts.util.BitmapUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.UriUtils;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/contacts/l.class */
public final class l extends k implements Handler.Callback {
    private static final String[] e = new String[0];
    private static final String[] f = {"_id", "data15"};
    private static int s;
    private final Context g;
    private final LruCache<Object, a> h;
    private final int j;
    private final LruCache<Object, Bitmap> k;
    private b n;
    private boolean o;
    private boolean p;
    private volatile boolean i = true;
    private final ConcurrentHashMap<ImageView, c> l = new ConcurrentHashMap<>();
    private final Handler m = new Handler(this);
    private final AtomicInteger q = new AtomicInteger();
    private final AtomicInteger r = new AtomicInteger();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final byte[] f1595a;

        /* renamed from: b  reason: collision with root package name */
        final int f1596b;
        volatile boolean c = true;
        Bitmap d;
        Reference<Bitmap> e;
        int f;

        public a(byte[] bArr, int i) {
            this.f1595a = bArr;
            this.f1596b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/l$b.class */
    public final class b extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        Handler f1597a;
        private final ContentResolver c;
        private byte[] i;
        private final StringBuilder d = new StringBuilder();
        private final Set<Long> e = new HashSet();
        private final Set<String> f = new HashSet();
        private final Set<c> g = new HashSet();
        private final List<Long> h = new ArrayList();
        private int j = 0;

        public b(ContentResolver contentResolver) {
            super("ContactPhotoLoader");
            this.c = contentResolver;
        }

        /* JADX WARN: Removed duplicated region for block: B:78:0x0198 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0130 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(boolean r8) {
            /*
                Method dump skipped, instructions count: 487
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.l.b.a(boolean):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x0150 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void c() {
            /*
                Method dump skipped, instructions count: 368
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.l.b.c():void");
        }

        public final void a() {
            if (this.f1597a == null) {
                this.f1597a = new Handler(getLooper(), this);
            }
        }

        public final void b() {
            if (this.j != 2) {
                a();
                if (!this.f1597a.hasMessages(1)) {
                    this.f1597a.sendEmptyMessageDelayed(0, 1000L);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00ef  */
        @Override // android.os.Handler.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean handleMessage(android.os.Message r8) {
            /*
                Method dump skipped, instructions count: 499
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.l.b.handleMessage(android.os.Message):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/l$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final long f1599a;

        /* renamed from: b  reason: collision with root package name */
        final Uri f1600b;
        final int c;
        final boolean d;
        private final boolean e;
        private final k.c f;

        c(long j, Uri uri, int i, boolean z, boolean z2, k.c cVar) {
            this.f1599a = j;
            this.f1600b = uri;
            this.e = z;
            this.c = i;
            this.f = cVar;
            this.d = z2;
        }

        public static c a(Uri uri, int i, boolean z, boolean z2, k.c cVar) {
            return new c(0L, uri, i, z, z2, cVar);
        }

        public final Object a() {
            return this.f1600b == null ? Long.valueOf(this.f1599a) : this.f1600b;
        }

        public final void a(ImageView imageView, int i, boolean z) {
            this.f.a(imageView, this.c, this.e, i, z, z ? k.a(this.f1600b) ? k.d.j : k.d.i : k.a(this.f1600b) ? k.d.h : k.d.g);
        }

        public final boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (obj == null) {
                    z = false;
                } else if (getClass() != obj.getClass()) {
                    z = false;
                } else {
                    c cVar = (c) obj;
                    if (this.f1599a != cVar.f1599a) {
                        z = false;
                    } else if (this.c != cVar.c) {
                        z = false;
                    } else if (!UriUtils.areEqual(this.f1600b, cVar.f1600b)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            int i = (int) (this.f1599a ^ (this.f1599a >>> 32));
            return (this.f1600b == null ? 0 : this.f1600b.hashCode()) + ((((i + 31) * 31) + this.c) * 31);
        }
    }

    public l(Context context) {
        this.g = context;
        float f2 = MemoryUtils.getTotalMemorySize() >= 671088640 ? 1.0f : 0.5f;
        this.k = new LruCache<Object, Bitmap>((int) (1769472.0f * f2)) { // from class: com.android.contacts.l.1
            @Override // android.util.LruCache
            protected final /* bridge */ /* synthetic */ void entryRemoved(boolean z, Object obj, Bitmap bitmap, Bitmap bitmap2) {
            }

            @Override // android.util.LruCache
            protected final /* synthetic */ int sizeOf(Object obj, Bitmap bitmap) {
                return bitmap.getByteCount();
            }
        };
        int i = (int) (2000000.0f * f2);
        this.h = new LruCache<Object, a>(i) { // from class: com.android.contacts.l.2
            @Override // android.util.LruCache
            protected final /* bridge */ /* synthetic */ void entryRemoved(boolean z, Object obj, a aVar, a aVar2) {
            }

            @Override // android.util.LruCache
            protected final /* bridge */ /* synthetic */ int sizeOf(Object obj, a aVar) {
                a aVar2 = aVar;
                return aVar2.f1595a != null ? aVar2.f1595a.length : 0;
            }
        };
        this.j = (int) (i * 0.75d);
        Log.i("ContactPhotoManager", "Cache adj: " + f2);
        s = context.getResources().getDimensionPixelSize(2131099973);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Drawable a(Resources resources, Bitmap bitmap, c cVar) {
        BitmapDrawable bitmapDrawable;
        if (cVar.d) {
            h a2 = j.a(resources, bitmap);
            a2.f26b.setAntiAlias(true);
            a2.invalidateSelf();
            float height = bitmap.getHeight() / 2;
            bitmapDrawable = a2;
            if (a2.d != height) {
                a2.f = false;
                if (h.a(height)) {
                    a2.f26b.setShader(a2.c);
                } else {
                    a2.f26b.setShader(null);
                }
                a2.d = height;
                a2.invalidateSelf();
                bitmapDrawable = a2;
            }
        } else {
            bitmapDrawable = new BitmapDrawable(resources, bitmap);
        }
        return bitmapDrawable;
    }

    private void a(ImageView imageView, c cVar, int i) {
        if (a(imageView, cVar, false, i)) {
            this.l.remove(imageView);
            return;
        }
        this.l.put(imageView, cVar);
        if (!this.p) {
            i();
        }
    }

    private static void a(a aVar, int i) {
        int findOptimalSampleSize = BitmapUtil.findOptimalSampleSize(aVar.f1596b, i);
        byte[] bArr = aVar.f1595a;
        if (bArr != null && bArr.length != 0) {
            if (findOptimalSampleSize == aVar.f && aVar.e != null) {
                aVar.d = aVar.e.get();
                if (aVar.d != null) {
                    return;
                }
            }
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inPurgeable = true;
                options.inSampleSize = findOptimalSampleSize;
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                int height = decodeByteArray.getHeight();
                int width = decodeByteArray.getWidth();
                Bitmap bitmap = decodeByteArray;
                if (height != width) {
                    bitmap = decodeByteArray;
                    if (Math.min(height, width) <= s * 2) {
                        int min = Math.min(height, width);
                        bitmap = ThumbnailUtils.extractThumbnail(decodeByteArray, min, min);
                    }
                }
                aVar.f = findOptimalSampleSize;
                aVar.d = bitmap;
                aVar.e = new SoftReference(bitmap);
            } catch (OutOfMemoryError e2) {
            }
        }
    }

    static /* synthetic */ void a(l lVar, Object obj, byte[] bArr, boolean z, int i) {
        a aVar = new a(bArr, bArr == null ? -1 : BitmapUtil.getSmallerExtentFromBytes(bArr));
        if (!z) {
            a(aVar, i);
            if (aVar.d == null) {
                Log.w("ContactPhotoManager", "cacheBitmap bitmap is null. Cannot load photo " + obj);
                aVar = new a(null, -1);
                a(aVar, i);
            }
        }
        lVar.h.put(obj, aVar);
        lVar.i = false;
    }

    static /* synthetic */ void a(l lVar, Set set, Set set2, Set set3) {
        set.clear();
        set2.clear();
        set3.clear();
        boolean z = false;
        for (c cVar : lVar.l.values()) {
            a aVar = lVar.h.get(cVar.a());
            if (aVar != null && aVar.f1595a != null && aVar.c && (aVar.e == null || aVar.e.get() == null)) {
                a(aVar, cVar.c);
                z = true;
            } else if (aVar == null || !aVar.c) {
                if (cVar.f1600b != null) {
                    set3.add(cVar);
                } else {
                    set.add(Long.valueOf(cVar.f1599a));
                    set2.add(String.valueOf(cVar.f1599a));
                }
            }
        }
        if (z) {
            lVar.m.sendEmptyMessage(2);
        }
    }

    private boolean a(ImageView imageView, c cVar, boolean z, int i) {
        boolean z2;
        a aVar = this.h.get(cVar.a());
        if (aVar == null) {
            if (imageView.getDrawable() == null) {
                cVar.a(imageView, i, cVar.d);
            }
            z2 = false;
        } else if (aVar.f1595a == null) {
            cVar.a(imageView, i, cVar.d);
            z2 = aVar.c;
        } else {
            Bitmap bitmap = aVar.e == null ? null : aVar.e.get();
            Bitmap bitmap2 = bitmap;
            if (bitmap == null) {
                if (aVar.f1595a.length < 8192) {
                    a(aVar, cVar.c);
                    Bitmap bitmap3 = aVar.d;
                    bitmap2 = bitmap3;
                    if (bitmap3 == null) {
                        z2 = false;
                    }
                } else {
                    cVar.a(imageView, i, cVar.d);
                    z2 = false;
                }
            }
            Drawable drawable = imageView.getDrawable();
            if (!z || drawable == null) {
                imageView.setImageDrawable(a(this.g.getResources(), bitmap2, cVar));
            } else if (!com.android.contacts.ezmode.h.a(this.g)) {
                Drawable[] drawableArr = new Drawable[2];
                if (drawable instanceof TransitionDrawable) {
                    TransitionDrawable transitionDrawable = (TransitionDrawable) drawable;
                    drawableArr[0] = transitionDrawable.getDrawable(transitionDrawable.getNumberOfLayers() - 1);
                } else {
                    drawableArr[0] = drawable;
                }
                drawableArr[1] = a(this.g.getResources(), bitmap2, cVar);
                TransitionDrawable transitionDrawable2 = new TransitionDrawable(drawableArr);
                imageView.setImageDrawable(transitionDrawable2);
                transitionDrawable2.startTransition(200);
            } else {
                imageView.setImageDrawable(a(this.g.getResources(), bitmap2, cVar));
            }
            if (bitmap2.getByteCount() < this.k.maxSize() / 6) {
                this.k.put(cVar.a(), bitmap2);
            }
            aVar.d = null;
            z2 = aVar.c;
        }
        return z2;
    }

    private void i() {
        if (!this.o) {
            this.o = true;
            this.m.sendEmptyMessage(1);
        }
    }

    private void j() {
        if (this.n == null) {
            this.n = new b(this.g.getContentResolver());
            this.n.start();
        }
    }

    @Override // com.android.contacts.k
    public final void a() {
        this.p = true;
    }

    @Override // com.android.contacts.k
    public final void a(Uri uri, Bitmap bitmap, byte[] bArr) {
        int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
        c a2 = c.a(uri, min, false, false, f1578a);
        a aVar = new a(bArr, min);
        aVar.e = new SoftReference(bitmap);
        this.h.put(a2.a(), aVar);
        this.i = false;
        this.k.put(a2.a(), bitmap);
    }

    @Override // com.android.contacts.k
    public final void a(ImageView imageView, long j, boolean z, boolean z2, k.d dVar, k.c cVar) {
        if (j == 0) {
            cVar.a(imageView, -1, z, -1, z2, dVar);
            this.l.remove(imageView);
            return;
        }
        a(imageView, new c(j, null, -1, z, z2, cVar), -1);
    }

    @Override // com.android.contacts.k
    public final void a(ImageView imageView, Uri uri, int i, k.c cVar, int i2) {
        if (uri == null) {
            cVar.a(imageView, i, false, i2, false, null);
            this.l.remove(imageView);
            return;
        }
        a(imageView, c.a(uri, i, false, false, cVar), i2);
    }

    @Override // com.android.contacts.k
    public final void a(ImageView imageView, Uri uri, int i, boolean z, k.c cVar, boolean z2, k.d dVar) {
        if (uri == null) {
            cVar.a(imageView, i, z, -1, z2, dVar);
            this.l.remove(imageView);
        } else if (uri.getAuthority().compareTo("sim") != 0) {
            a(imageView, c.a(uri, i, z, z2, cVar), -1);
        } else if (uri.getLastPathSegment().equals("2")) {
            a(imageView, 0L, z, z2, (k.d) null, d);
        } else {
            a(imageView, 0L, z, z2, (k.d) null, c);
        }
    }

    @Override // com.android.contacts.k
    public final void a(ImageView imageView, Uri uri, k.c cVar) {
        a(imageView, uri, -1, cVar, -1);
    }

    @Override // com.android.contacts.k
    public final void b() {
        this.p = false;
        if (!this.l.isEmpty()) {
            i();
        }
    }

    @Override // com.android.contacts.k
    public final void c() {
        if (!this.i) {
            this.i = true;
            for (a aVar : this.h.snapshot().values()) {
                aVar.c = false;
            }
        }
    }

    @Override // com.android.contacts.k
    public final void d() {
        j();
        this.n.b();
    }

    @Override // com.android.contacts.k
    public final void e() {
        this.l.clear();
        this.h.evictAll();
        this.k.evictAll();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z = false;
        switch (message.what) {
            case 1:
                this.o = false;
                if (!this.p) {
                    j();
                    b bVar = this.n;
                    bVar.a();
                    bVar.f1597a.removeMessages(0);
                    bVar.f1597a.sendEmptyMessage(1);
                }
                z = true;
                break;
            case 2:
                if (!this.p) {
                    Iterator<ImageView> it = this.l.keySet().iterator();
                    while (it.hasNext()) {
                        ImageView next = it.next();
                        if (a(next, this.l.get(next), true, -1)) {
                            it.remove();
                        }
                    }
                    for (a aVar : this.h.snapshot().values()) {
                        aVar.d = null;
                    }
                    if (!this.l.isEmpty()) {
                        i();
                    }
                }
                z = true;
                break;
        }
        return z;
    }

    @Override // com.android.contacts.k, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i >= 60) {
            e();
        }
    }
}
