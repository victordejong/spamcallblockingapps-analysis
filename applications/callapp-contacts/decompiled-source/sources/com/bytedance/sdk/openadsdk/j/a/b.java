package com.bytedance.sdk.openadsdk.j.a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.l;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.openadsdk.j.a.a;
import com.bytedance.sdk.openadsdk.j.a.c;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final l f9621a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f9622b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, d> f9623c = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b$a.class */
    public static class a implements AbstractC0175b {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.j.a.b.AbstractC0175b
        public void a() {
        }

        @Override // com.bytedance.sdk.openadsdk.j.a.b.AbstractC0175b
        public void a(c cVar) {
        }

        @Override // com.bytedance.sdk.openadsdk.j.a.b.AbstractC0175b
        public void a(String str, byte[] bArr) {
        }

        @Override // com.bytedance.sdk.openadsdk.j.a.b.AbstractC0175b
        public void b(c cVar) {
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.j.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b$b.class */
    public interface AbstractC0175b {
        void a();

        void a(c cVar);

        void a(String str, byte[] bArr);

        void b(c cVar);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b$c.class */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f9637a;

        /* renamed from: b  reason: collision with root package name */
        private final AbstractC0175b f9638b;

        /* renamed from: c  reason: collision with root package name */
        private final String f9639c;

        /* renamed from: d  reason: collision with root package name */
        private final String f9640d;
        private final VAdError e;

        public c(VAdError vAdError, AbstractC0175b bVar, String str, String str2) {
            this.e = vAdError;
            this.f9638b = bVar;
            this.f9639c = str;
            this.f9640d = str2;
            this.f9637a = null;
        }

        public c(byte[] bArr, AbstractC0175b bVar, String str, String str2) {
            this.f9637a = bArr;
            this.f9638b = bVar;
            this.f9639c = str;
            this.f9640d = str2;
            this.e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b$d.class */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        com.bytedance.sdk.openadsdk.j.a.c f9641a;

        /* renamed from: b  reason: collision with root package name */
        m f9642b;

        /* renamed from: c  reason: collision with root package name */
        List<AbstractC0175b> f9643c = Collections.synchronizedList(new ArrayList());

        /* renamed from: d  reason: collision with root package name */
        VAdError f9644d;
        byte[] e;

        public d(com.bytedance.sdk.openadsdk.j.a.c cVar, AbstractC0175b bVar) {
            this.f9641a = cVar;
            a(bVar);
        }

        void a(AbstractC0175b bVar) {
            if (bVar != null) {
                this.f9643c.add(bVar);
            }
        }

        boolean a() {
            return this.f9644d == null && this.e != null;
        }
    }

    public b(l lVar) {
        this.f9621a = lVar;
    }

    public static a a() {
        return new a();
    }

    private com.bytedance.sdk.openadsdk.j.a.c a(final String str, int i, int i2, ImageView.ScaleType scaleType, final String str2) {
        return new com.bytedance.sdk.openadsdk.j.a.c(str, new c.a() { // from class: com.bytedance.sdk.openadsdk.j.a.b.4
            @Override // com.bytedance.sdk.adnet.core.m.a
            public void a(m<byte[]> mVar) {
                d dVar = (d) b.this.f9623c.remove(str2);
                if (dVar != null) {
                    dVar.f9642b = mVar;
                    dVar.e = mVar.f8332a;
                    b.this.a(str2, str, dVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.j.a.c.a
            public void a(String str3, byte[] bArr) {
                d dVar = (d) b.this.f9623c.get(str2);
                if (dVar != null) {
                    for (AbstractC0175b bVar : dVar.f9643c) {
                        if (bVar != null) {
                            bVar.a(str3, bArr);
                        }
                    }
                }
            }

            @Override // com.bytedance.sdk.adnet.core.m.a
            public void b(m<byte[]> mVar) {
                d dVar = (d) b.this.f9623c.remove(str2);
                if (dVar != null) {
                    dVar.f9642b = mVar;
                    dVar.f9644d = mVar.f8334c;
                    b.this.a(str2, str, dVar);
                }
            }
        }, i, i2, scaleType, Bitmap.Config.RGB_565);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, d dVar) {
        if (dVar != null) {
            boolean a2 = dVar.a();
            if (dVar.f9643c != null) {
                for (AbstractC0175b bVar : dVar.f9643c) {
                    if (bVar != null) {
                        if (a2) {
                            bVar.a(new c(dVar.e, bVar, str, str2));
                        } else {
                            bVar.b(new c(dVar.f9644d, bVar, str, str2));
                        }
                    }
                }
                dVar.f9643c.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final String str, final AbstractC0175b bVar, int i, int i2, ImageView.ScaleType scaleType) {
        String a2 = com.bytedance.sdk.openadsdk.j.a.a.a().a(str, i, i2, scaleType);
        final a.C0174a b2 = com.bytedance.sdk.openadsdk.j.a.a.a().b(a2);
        if (b2 == null || b2.f9620a == null) {
            d dVar = this.f9623c.get(a2);
            if (dVar != null) {
                dVar.a(bVar);
                return;
            }
            com.bytedance.sdk.openadsdk.j.a.c a3 = a(str, i, i2, scaleType, a2);
            d dVar2 = new d(a3, bVar);
            this.f9621a.a(a3);
            this.f9623c.put(a2, dVar2);
            return;
        }
        final c cVar = new c(b2.f9620a, bVar, a2, str);
        this.f9622b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.j.a.b.3
            @Override // java.lang.Runnable
            public void run() {
                AbstractC0175b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(str, b2.f9620a);
                }
                AbstractC0175b bVar3 = bVar;
                if (bVar3 != null) {
                    bVar3.a(cVar);
                }
            }
        });
    }

    public void a(String str, AbstractC0175b bVar, int i, int i2) {
        a(str, bVar, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public void a(final String str, final AbstractC0175b bVar, final int i, final int i2, final ImageView.ScaleType scaleType) {
        if (bVar != null) {
            this.f9622b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.j.a.b.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0175b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a();
                    }
                }
            });
        }
        e.a(new g("GifLoader_get") { // from class: com.bytedance.sdk.openadsdk.j.a.b.2
            @Override // java.lang.Runnable
            public void run() {
                b.this.b(str, bVar, i, i2, scaleType);
            }
        }, 5);
    }
}
