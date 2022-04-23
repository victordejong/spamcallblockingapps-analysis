package com.bytedance.sdk.adnet.b;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.core.l;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.err.VAdError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d.class */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private final l f8210b;

    /* renamed from: d  reason: collision with root package name */
    private final b f8212d;

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f8209a = Executors.newCachedThreadPool();

    /* renamed from: c  reason: collision with root package name */
    private int f8211c = 50;
    private final Map<String, a> e = Collections.synchronizedMap(new HashMap());
    private final Map<String, a> f = Collections.synchronizedMap(new HashMap());
    private final Handler g = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Request<?> f8233a;

        /* renamed from: b  reason: collision with root package name */
        private m<Bitmap> f8234b;

        /* renamed from: c  reason: collision with root package name */
        private Bitmap f8235c;

        /* renamed from: d  reason: collision with root package name */
        private VAdError f8236d;
        private final List<c> e;

        public a(Request<?> request, c cVar) {
            List<c> synchronizedList = Collections.synchronizedList(new ArrayList());
            this.e = synchronizedList;
            this.f8233a = request;
            synchronizedList.add(cVar);
        }

        public VAdError a() {
            return this.f8236d;
        }

        public void a(c cVar) {
            this.e.add(cVar);
        }

        public void a(m<Bitmap> mVar) {
            this.f8234b = mVar;
        }

        public void a(VAdError vAdError) {
            this.f8236d = vAdError;
        }

        public m<Bitmap> b() {
            return this.f8234b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$b.class */
    public interface b {
        String a(String str, int i, int i2, ImageView.ScaleType scaleType);

        void a(String str, Bitmap bitmap, byte[] bArr);

        byte[] a(String str);

        Bitmap b(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$c.class */
    public class c {

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f8238b;

        /* renamed from: c  reason: collision with root package name */
        private final e f8239c;

        /* renamed from: d  reason: collision with root package name */
        private final String f8240d;
        private byte[] e;
        private final String f;

        public c(byte[] bArr, Bitmap bitmap, String str, String str2, e eVar) {
            this.e = bArr;
            this.f8238b = bitmap;
            this.f = str;
            this.f8240d = str2;
            this.f8239c = eVar;
        }

        public Bitmap a() {
            return this.f8238b;
        }
    }

    /* renamed from: com.bytedance.sdk.adnet.b.d$d  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$d.class */
    public interface AbstractC0157d {
        Bitmap a(byte[] bArr);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$e.class */
    public interface e extends m.a<Bitmap> {
        void a();

        void a(c cVar, boolean z);

        boolean a(byte[] bArr);

        void b();
    }

    public d(l lVar, b bVar) {
        this.f8210b = lVar;
        this.f8212d = bVar == null ? new com.bytedance.sdk.adnet.b.a() : bVar;
    }

    private String a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        String a2 = this.f8212d.a(str, i, i2, scaleType);
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        StringBuilder sb = new StringBuilder(str.length() + 12);
        sb.append("#W");
        sb.append(i);
        sb.append("#H");
        sb.append(i2);
        sb.append("#S");
        sb.append(scaleType.ordinal());
        sb.append(str);
        return sb.toString();
    }

    private void a(final String str, a aVar) {
        this.f.put(str, aVar);
        this.g.postDelayed(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.6
            @Override // java.lang.Runnable
            public void run() {
                a aVar2 = (a) d.this.f.get(str);
                if (aVar2 != null) {
                    for (c cVar : aVar2.e) {
                        if (cVar.f8239c != null) {
                            if (aVar2.a() == null) {
                                cVar.e = aVar2.f8234b.f8333b.f8363b;
                                cVar.f8238b = aVar2.f8235c;
                                cVar.f8239c.a(cVar, false);
                            } else {
                                cVar.f8239c.b(aVar2.b());
                            }
                            cVar.f8239c.b();
                        }
                    }
                }
                d.this.f.remove(str);
            }
        }, this.f8211c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, final e eVar, AbstractC0157d dVar, int i, int i2, ImageView.ScaleType scaleType) {
        this.g.post(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.2
            @Override // java.lang.Runnable
            public void run() {
                eVar.a();
            }
        });
        String a2 = a(str, i, i2, scaleType);
        Bitmap b2 = this.f8212d.b(a2);
        byte[] a3 = this.f8212d.a(a2);
        if (b2 != null || a3.length > 0) {
            final c cVar = new c(this.f8212d.a(a2), b2, str, null, null);
            this.g.post(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.3
                @Override // java.lang.Runnable
                public void run() {
                    eVar.a(cVar, true);
                    eVar.b();
                }
            });
            return;
        }
        c cVar2 = new c(new byte[0], null, str, a2, eVar);
        a aVar = this.e.get(a2);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = this.f.get(a2);
        }
        if (aVar2 != null) {
            aVar2.a(cVar2);
            return;
        }
        Request<Bitmap> a4 = a(str, i, i2, scaleType, a2, dVar, eVar);
        this.f8210b.a(a4);
        this.e.put(a2, new a(a4, cVar2));
    }

    protected Request<Bitmap> a(String str, int i, int i2, ImageView.ScaleType scaleType, final String str2, final AbstractC0157d dVar, final e eVar) {
        return new com.bytedance.sdk.adnet.b.e(str, new m.a<Bitmap>() { // from class: com.bytedance.sdk.adnet.b.d.4
            @Override // com.bytedance.sdk.adnet.core.m.a
            public void a(final m<Bitmap> mVar) {
                d.this.f8209a.execute(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.a(str2, mVar, eVar);
                    }
                });
            }

            @Override // com.bytedance.sdk.adnet.core.m.a
            public void b(final m<Bitmap> mVar) {
                d.this.f8209a.execute(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.a(str2, mVar);
                    }
                });
            }
        }, i, i2, scaleType, Bitmap.Config.ARGB_4444) { // from class: com.bytedance.sdk.adnet.b.d.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.adnet.b.e
            public Bitmap a(byte[] bArr) {
                AbstractC0157d dVar2 = dVar;
                return dVar2 != null ? dVar2.a(bArr) : super.a(bArr);
            }
        };
    }

    public void a(String str, e eVar) {
        a(str, eVar, 0, 0);
    }

    public void a(String str, e eVar, int i, int i2) {
        a(str, eVar, null, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public void a(final String str, final e eVar, final AbstractC0157d dVar, final int i, final int i2, final ImageView.ScaleType scaleType) {
        this.f8209a.execute(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.b(str, eVar, dVar, i, i2, scaleType);
            }
        });
    }

    protected void a(String str, m<Bitmap> mVar) {
        a remove = this.e.remove(str);
        if (remove != null) {
            remove.a(mVar.f8334c);
            remove.a(mVar);
            a(str, remove);
        }
    }

    protected void a(String str, m<Bitmap> mVar, e eVar) {
        this.f8212d.a(str, mVar.f8332a, eVar.a(mVar.f8333b.f8363b) ? mVar.f8333b.f8363b : new byte[0]);
        a remove = this.e.remove(str);
        if (remove != null) {
            remove.f8235c = mVar.f8332a;
            remove.a(mVar);
            a(str, remove);
        }
    }
}
