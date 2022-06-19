package androidx.media2.exoplayer.external.text.p078h;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C2009j;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: androidx.media2.exoplayer.external.text.h.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/e.class */
public final class C1910e extends C1856a {

    /* renamed from: p */
    public final long f7684p;

    /* renamed from: q */
    public final long f7685q;

    /* renamed from: androidx.media2.exoplayer.external.text.h.e$1 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/e$1.class */
    public static final /* synthetic */ class C19111 {

        /* renamed from: a */
        static final /* synthetic */ int[] f7686a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f7686a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7686a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7686a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.h.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/e$a.class */
    public static final class C1912a {

        /* renamed from: a */
        long f7687a;

        /* renamed from: b */
        long f7688b;

        /* renamed from: c */
        SpannableStringBuilder f7689c;

        /* renamed from: d */
        Layout.Alignment f7690d;

        /* renamed from: e */
        float f7691e;

        /* renamed from: f */
        int f7692f;

        /* renamed from: g */
        int f7693g;

        /* renamed from: h */
        float f7694h;

        /* renamed from: i */
        int f7695i;

        /* renamed from: j */
        float f7696j;

        public C1912a() {
            m41904a();
        }

        /* renamed from: c */
        private C1912a m41902c() {
            if (this.f7690d == null) {
                this.f7695i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            } else {
                int i = C19111.f7686a[this.f7690d.ordinal()];
                if (i == 1) {
                    this.f7695i = 0;
                } else if (i == 2) {
                    this.f7695i = 1;
                } else if (i != 3) {
                    String valueOf = String.valueOf(this.f7690d);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                    sb.append("Unrecognized alignment: ");
                    sb.append(valueOf);
                    C2009j.m41584a("WebvttCueBuilder", sb.toString());
                    this.f7695i = 0;
                } else {
                    this.f7695i = 2;
                }
            }
            return this;
        }

        /* renamed from: a */
        public final void m41904a() {
            this.f7687a = 0L;
            this.f7688b = 0L;
            this.f7689c = null;
            this.f7690d = null;
            this.f7691e = Float.MIN_VALUE;
            this.f7692f = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f7693g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f7694h = Float.MIN_VALUE;
            this.f7695i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f7696j = Float.MIN_VALUE;
        }

        /* renamed from: b */
        public final C1910e m41903b() {
            if (this.f7694h != Float.MIN_VALUE && this.f7695i == Integer.MIN_VALUE) {
                m41902c();
            }
            return new C1910e(this.f7687a, this.f7688b, this.f7689c, this.f7690d, this.f7691e, this.f7692f, this.f7693g, this.f7694h, this.f7695i, this.f7696j);
        }
    }

    public C1910e(long j, long j2, CharSequence charSequence) {
        this(j, j2, charSequence, null, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE);
    }

    public C1910e(long j, long j2, CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3);
        this.f7684p = j;
        this.f7685q = j2;
    }

    public C1910e(CharSequence charSequence) {
        this(0L, 0L, charSequence);
    }
}
