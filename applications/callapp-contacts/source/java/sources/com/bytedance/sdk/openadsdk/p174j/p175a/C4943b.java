package com.bytedance.sdk.openadsdk.p174j.p175a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.C4215l;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.openadsdk.p174j.p175a.C4940a;
import com.bytedance.sdk.openadsdk.p174j.p175a.C4952c;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.j.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b.class */
public class C4943b {

    /* renamed from: a */
    private final C4215l f17978a;

    /* renamed from: b */
    private final Handler f17979b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private final Map<String, C4951d> f17980c = Collections.synchronizedMap(new HashMap());

    /* renamed from: com.bytedance.sdk.openadsdk.j.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b$a.class */
    public static class C4948a implements AbstractC4949b {
        C4948a() {
        }

        @Override // com.bytedance.sdk.openadsdk.p174j.p175a.C4943b.AbstractC4949b
        /* renamed from: a */
        public void mo33466a() {
        }

        @Override // com.bytedance.sdk.openadsdk.p174j.p175a.C4943b.AbstractC4949b
        /* renamed from: a */
        public void mo33465a(C4950c c4950c) {
        }

        @Override // com.bytedance.sdk.openadsdk.p174j.p175a.C4943b.AbstractC4949b
        /* renamed from: a */
        public void mo33464a(String str, byte[] bArr) {
        }

        @Override // com.bytedance.sdk.openadsdk.p174j.p175a.C4943b.AbstractC4949b
        /* renamed from: b */
        public void mo33463b(C4950c c4950c) {
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.j.a.b$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b$b.class */
    public interface AbstractC4949b {
        /* renamed from: a */
        void mo33466a();

        /* renamed from: a */
        void mo33465a(C4950c c4950c);

        /* renamed from: a */
        void mo33464a(String str, byte[] bArr);

        /* renamed from: b */
        void mo33463b(C4950c c4950c);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.j.a.b$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b$c.class */
    public static class C4950c {

        /* renamed from: a */
        private final byte[] f17997a;

        /* renamed from: b */
        private final AbstractC4949b f17998b;

        /* renamed from: c */
        private final String f17999c;

        /* renamed from: d */
        private final String f18000d;

        /* renamed from: e */
        private final VAdError f18001e;

        public C4950c(VAdError vAdError, AbstractC4949b abstractC4949b, String str, String str2) {
            this.f18001e = vAdError;
            this.f17998b = abstractC4949b;
            this.f17999c = str;
            this.f18000d = str2;
            this.f17997a = null;
        }

        public C4950c(byte[] bArr, AbstractC4949b abstractC4949b, String str, String str2) {
            this.f17997a = bArr;
            this.f17998b = abstractC4949b;
            this.f17999c = str;
            this.f18000d = str2;
            this.f18001e = null;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.j.a.b$d */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/b$d.class */
    public static class C4951d {

        /* renamed from: a */
        C4952c f18002a;

        /* renamed from: b */
        C4218m f18003b;

        /* renamed from: c */
        List<AbstractC4949b> f18004c = Collections.synchronizedList(new ArrayList());

        /* renamed from: d */
        VAdError f18005d;

        /* renamed from: e */
        byte[] f18006e;

        public C4951d(C4952c c4952c, AbstractC4949b abstractC4949b) {
            this.f18002a = c4952c;
            m33461a(abstractC4949b);
        }

        /* renamed from: a */
        void m33461a(AbstractC4949b abstractC4949b) {
            if (abstractC4949b != null) {
                this.f18004c.add(abstractC4949b);
            }
        }

        /* renamed from: a */
        boolean m33462a() {
            return this.f18005d == null && this.f18006e != null;
        }
    }

    public C4943b(C4215l c4215l) {
        this.f17978a = c4215l;
    }

    /* renamed from: a */
    public static C4948a m33475a() {
        return new C4948a();
    }

    /* renamed from: a */
    private C4952c m33471a(final String str, int i, int i2, ImageView.ScaleType scaleType, final String str2) {
        return new C4952c(str, new C4952c.AbstractC4955a() { // from class: com.bytedance.sdk.openadsdk.j.a.b.4
            @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: a */
            public void mo33422a(C4218m<byte[]> c4218m) {
                C4951d c4951d = (C4951d) C4943b.this.f17980c.remove(str2);
                if (c4951d != null) {
                    c4951d.f18003b = c4218m;
                    c4951d.f18006e = c4218m.f15468a;
                    C4943b.this.m33468a(str2, str, c4951d);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.p174j.p175a.C4952c.AbstractC4955a
            /* renamed from: a */
            public void mo33456a(String str3, byte[] bArr) {
                C4951d c4951d = (C4951d) C4943b.this.f17980c.get(str2);
                if (c4951d != null) {
                    for (AbstractC4949b abstractC4949b : c4951d.f18004c) {
                        if (abstractC4949b != null) {
                            abstractC4949b.mo33464a(str3, bArr);
                        }
                    }
                }
            }

            @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: b */
            public void mo33419b(C4218m<byte[]> c4218m) {
                C4951d c4951d = (C4951d) C4943b.this.f17980c.remove(str2);
                if (c4951d != null) {
                    c4951d.f18003b = c4218m;
                    c4951d.f18005d = c4218m.f15470c;
                    C4943b.this.m33468a(str2, str, c4951d);
                }
            }
        }, i, i2, scaleType, Bitmap.Config.RGB_565);
    }

    /* renamed from: a */
    public void m33468a(String str, String str2, C4951d c4951d) {
        if (c4951d == null) {
            return;
        }
        boolean m33462a = c4951d.m33462a();
        if (c4951d.f18004c == null) {
            return;
        }
        for (AbstractC4949b abstractC4949b : c4951d.f18004c) {
            if (abstractC4949b != null) {
                if (m33462a) {
                    abstractC4949b.mo33465a(new C4950c(c4951d.f18006e, abstractC4949b, str, str2));
                } else {
                    abstractC4949b.mo33463b(new C4950c(c4951d.f18005d, abstractC4949b, str, str2));
                }
            }
        }
        c4951d.f18004c.clear();
    }

    /* renamed from: b */
    public void m33467b(final String str, final AbstractC4949b abstractC4949b, int i, int i2, ImageView.ScaleType scaleType) {
        String m33483a = C4940a.m33485a().m33483a(str, i, i2, scaleType);
        final C4940a.C4942a m33479b = C4940a.m33485a().m33479b(m33483a);
        if (m33479b != null && m33479b.f17977a != null) {
            final C4950c c4950c = new C4950c(m33479b.f17977a, abstractC4949b, m33483a, str);
            this.f17979b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.j.a.b.3
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC4949b abstractC4949b2 = abstractC4949b;
                    if (abstractC4949b2 != null) {
                        abstractC4949b2.mo33464a(str, m33479b.f17977a);
                    }
                    AbstractC4949b abstractC4949b3 = abstractC4949b;
                    if (abstractC4949b3 != null) {
                        abstractC4949b3.mo33465a(c4950c);
                    }
                }
            });
            return;
        }
        C4951d c4951d = this.f17980c.get(m33483a);
        if (c4951d != null) {
            c4951d.m33461a(abstractC4949b);
            return;
        }
        C4952c m33471a = m33471a(str, i, i2, scaleType, m33483a);
        C4951d c4951d2 = new C4951d(m33471a, abstractC4949b);
        this.f17978a.m36123a(m33471a);
        this.f17980c.put(m33483a, c4951d2);
    }

    /* renamed from: a */
    public void m33470a(String str, AbstractC4949b abstractC4949b, int i, int i2) {
        m33469a(str, abstractC4949b, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    /* renamed from: a */
    public void m33469a(final String str, final AbstractC4949b abstractC4949b, final int i, final int i2, final ImageView.ScaleType scaleType) {
        if (abstractC4949b != null) {
            this.f17979b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.j.a.b.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC4949b abstractC4949b2 = abstractC4949b;
                    if (abstractC4949b2 != null) {
                        abstractC4949b2.mo33466a();
                    }
                }
            });
        }
        C5052e.m33161a(new AbstractRunnableC5055g("GifLoader_get") { // from class: com.bytedance.sdk.openadsdk.j.a.b.2
            @Override // java.lang.Runnable
            public void run() {
                C4943b.this.m33467b(str, abstractC4949b, i, i2, scaleType);
            }
        }, 5);
    }
}
