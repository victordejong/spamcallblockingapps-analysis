package com.bytedance.sdk.adnet.p141b;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.C4215l;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.err.VAdError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.bytedance.sdk.adnet.b.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d.class */
public class C4166d {

    /* renamed from: b */
    private final C4215l f15272b;

    /* renamed from: d */
    private final AbstractC4176b f15274d;

    /* renamed from: a */
    private final ExecutorService f15271a = Executors.newCachedThreadPool();

    /* renamed from: c */
    private int f15273c = 50;

    /* renamed from: e */
    private final Map<String, C4175a> f15275e = Collections.synchronizedMap(new HashMap());

    /* renamed from: f */
    private final Map<String, C4175a> f15276f = Collections.synchronizedMap(new HashMap());

    /* renamed from: g */
    private final Handler f15277g = new Handler(Looper.getMainLooper());

    /* renamed from: com.bytedance.sdk.adnet.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$a.class */
    public static class C4175a {

        /* renamed from: a */
        private final Request<?> f15301a;

        /* renamed from: b */
        private C4218m<Bitmap> f15302b;

        /* renamed from: c */
        private Bitmap f15303c;

        /* renamed from: d */
        private VAdError f15304d;

        /* renamed from: e */
        private final List<C4177c> f15305e;

        public C4175a(Request<?> request, C4177c c4177c) {
            List<C4177c> synchronizedList = Collections.synchronizedList(new ArrayList());
            this.f15305e = synchronizedList;
            this.f15301a = request;
            synchronizedList.add(c4177c);
        }

        /* renamed from: a */
        public VAdError m36251a() {
            return this.f15304d;
        }

        /* renamed from: a */
        public void m36248a(C4177c c4177c) {
            this.f15305e.add(c4177c);
        }

        /* renamed from: a */
        public void m36247a(C4218m<Bitmap> c4218m) {
            this.f15302b = c4218m;
        }

        /* renamed from: a */
        public void m36246a(VAdError vAdError) {
            this.f15304d = vAdError;
        }

        /* renamed from: b */
        public C4218m<Bitmap> m36245b() {
            return this.f15302b;
        }
    }

    /* renamed from: com.bytedance.sdk.adnet.b.d$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$b.class */
    public interface AbstractC4176b {
        /* renamed from: a */
        String mo33489a(String str, int i, int i2, ImageView.ScaleType scaleType);

        /* renamed from: a */
        void mo33488a(String str, Bitmap bitmap, byte[] bArr);

        /* renamed from: a */
        byte[] mo36242a(String str);

        /* renamed from: b */
        Bitmap mo33486b(String str);
    }

    /* renamed from: com.bytedance.sdk.adnet.b.d$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$c.class */
    public class C4177c {

        /* renamed from: b */
        private Bitmap f15307b;

        /* renamed from: c */
        private final AbstractC4179e f15308c;

        /* renamed from: d */
        private final String f15309d;

        /* renamed from: e */
        private byte[] f15310e;

        /* renamed from: f */
        private final String f15311f;

        public C4177c(byte[] bArr, Bitmap bitmap, String str, String str2, AbstractC4179e abstractC4179e) {
            C4166d.this = r4;
            this.f15310e = bArr;
            this.f15307b = bitmap;
            this.f15311f = str;
            this.f15309d = str2;
            this.f15308c = abstractC4179e;
        }

        /* renamed from: a */
        public Bitmap m36241a() {
            return this.f15307b;
        }
    }

    /* renamed from: com.bytedance.sdk.adnet.b.d$d */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$d.class */
    public interface AbstractC4178d {
        /* renamed from: a */
        Bitmap mo36097a(byte[] bArr);
    }

    /* renamed from: com.bytedance.sdk.adnet.b.d$e */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/d$e.class */
    public interface AbstractC4179e extends C4218m.AbstractC4219a<Bitmap> {
        /* renamed from: a */
        void mo33424a();

        /* renamed from: a */
        void mo33423a(C4177c c4177c, boolean z);

        /* renamed from: a */
        boolean mo33421a(byte[] bArr);

        /* renamed from: b */
        void mo33420b();
    }

    public C4166d(C4215l c4215l, AbstractC4176b abstractC4176b) {
        this.f15272b = c4215l;
        this.f15274d = abstractC4176b == null ? new C4157a() : abstractC4176b;
    }

    /* renamed from: a */
    private String m36261a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        String mo33489a = this.f15274d.mo33489a(str, i, i2, scaleType);
        if (!TextUtils.isEmpty(mo33489a)) {
            return mo33489a;
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

    /* renamed from: a */
    private void m36259a(final String str, C4175a c4175a) {
        this.f15276f.put(str, c4175a);
        this.f15277g.postDelayed(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.6
            @Override // java.lang.Runnable
            public void run() {
                C4175a c4175a2 = (C4175a) C4166d.this.f15276f.get(str);
                if (c4175a2 != null) {
                    for (C4177c c4177c : c4175a2.f15305e) {
                        if (c4177c.f15308c != null) {
                            if (c4175a2.m36251a() == null) {
                                c4177c.f15310e = c4175a2.f15302b.f15469b.f15504b;
                                c4177c.f15307b = c4175a2.f15303c;
                                c4177c.f15308c.mo33423a(c4177c, false);
                            } else {
                                c4177c.f15308c.mo33419b(c4175a2.m36245b());
                            }
                            c4177c.f15308c.mo33420b();
                        }
                    }
                }
                C4166d.this.f15276f.remove(str);
            }
        }, this.f15273c);
    }

    /* renamed from: b */
    public void m36252b(String str, final AbstractC4179e abstractC4179e, AbstractC4178d abstractC4178d, int i, int i2, ImageView.ScaleType scaleType) {
        this.f15277g.post(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.2
            @Override // java.lang.Runnable
            public void run() {
                abstractC4179e.mo33424a();
            }
        });
        String m36261a = m36261a(str, i, i2, scaleType);
        Bitmap mo33486b = this.f15274d.mo33486b(m36261a);
        byte[] mo36242a = this.f15274d.mo36242a(m36261a);
        if (mo33486b != null || mo36242a.length > 0) {
            final C4177c c4177c = new C4177c(this.f15274d.mo36242a(m36261a), mo33486b, str, null, null);
            this.f15277g.post(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.3
                @Override // java.lang.Runnable
                public void run() {
                    abstractC4179e.mo33423a(c4177c, true);
                    abstractC4179e.mo33420b();
                }
            });
            return;
        }
        C4177c c4177c2 = new C4177c(new byte[0], null, str, m36261a, abstractC4179e);
        C4175a c4175a = this.f15275e.get(m36261a);
        C4175a c4175a2 = c4175a;
        if (c4175a == null) {
            c4175a2 = this.f15276f.get(m36261a);
        }
        if (c4175a2 != null) {
            c4175a2.m36248a(c4177c2);
            return;
        }
        Request<Bitmap> m36260a = m36260a(str, i, i2, scaleType, m36261a, abstractC4178d, abstractC4179e);
        this.f15272b.m36123a(m36260a);
        this.f15275e.put(m36261a, new C4175a(m36260a, c4177c2));
    }

    /* renamed from: a */
    protected Request<Bitmap> m36260a(String str, int i, int i2, ImageView.ScaleType scaleType, final String str2, final AbstractC4178d abstractC4178d, final AbstractC4179e abstractC4179e) {
        return new C4180e(str, new C4218m.AbstractC4219a<Bitmap>() { // from class: com.bytedance.sdk.adnet.b.d.4
            @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: a */
            public void mo33422a(final C4218m<Bitmap> c4218m) {
                C4166d.this.f15271a.execute(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C4166d.this.m36254a(str2, c4218m, abstractC4179e);
                    }
                });
            }

            @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: b */
            public void mo33419b(final C4218m<Bitmap> c4218m) {
                C4166d.this.f15271a.execute(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C4166d.this.m36255a(str2, c4218m);
                    }
                });
            }
        }, i, i2, scaleType, Bitmap.Config.ARGB_4444) { // from class: com.bytedance.sdk.adnet.b.d.5
            @Override // com.bytedance.sdk.adnet.p141b.C4180e
            /* renamed from: a */
            public Bitmap mo36237a(byte[] bArr) {
                AbstractC4178d abstractC4178d2 = abstractC4178d;
                return abstractC4178d2 != null ? abstractC4178d2.mo36097a(bArr) : super.mo36237a(bArr);
            }
        };
    }

    /* renamed from: a */
    public void m36258a(String str, AbstractC4179e abstractC4179e) {
        m36257a(str, abstractC4179e, 0, 0);
    }

    /* renamed from: a */
    public void m36257a(String str, AbstractC4179e abstractC4179e, int i, int i2) {
        m36256a(str, abstractC4179e, null, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    /* renamed from: a */
    public void m36256a(final String str, final AbstractC4179e abstractC4179e, final AbstractC4178d abstractC4178d, final int i, final int i2, final ImageView.ScaleType scaleType) {
        this.f15271a.execute(new Runnable() { // from class: com.bytedance.sdk.adnet.b.d.1
            @Override // java.lang.Runnable
            public void run() {
                C4166d.this.m36252b(str, abstractC4179e, abstractC4178d, i, i2, scaleType);
            }
        });
    }

    /* renamed from: a */
    protected void m36255a(String str, C4218m<Bitmap> c4218m) {
        C4175a remove = this.f15275e.remove(str);
        if (remove != null) {
            remove.m36246a(c4218m.f15470c);
            remove.m36247a(c4218m);
            m36259a(str, remove);
        }
    }

    /* renamed from: a */
    protected void m36254a(String str, C4218m<Bitmap> c4218m, AbstractC4179e abstractC4179e) {
        this.f15274d.mo33488a(str, c4218m.f15468a, abstractC4179e.mo33421a(c4218m.f15469b.f15504b) ? c4218m.f15469b.f15504b : new byte[0]);
        C4175a remove = this.f15275e.remove(str);
        if (remove != null) {
            remove.f15303c = c4218m.f15468a;
            remove.m36247a(c4218m);
            m36259a(str, remove);
        }
    }
}
