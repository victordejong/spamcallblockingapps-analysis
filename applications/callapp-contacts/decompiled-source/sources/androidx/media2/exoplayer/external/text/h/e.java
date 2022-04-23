package androidx.media2.exoplayer.external.text.h;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import androidx.media2.exoplayer.external.util.j;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/e.class */
public final class e extends androidx.media2.exoplayer.external.text.a {
    public final long p;
    public final long q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.h.e$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/e$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3920a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f3920a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3920a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3920a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        long f3921a;

        /* renamed from: b  reason: collision with root package name */
        long f3922b;

        /* renamed from: c  reason: collision with root package name */
        SpannableStringBuilder f3923c;

        /* renamed from: d  reason: collision with root package name */
        Layout.Alignment f3924d;
        float e;
        int f;
        int g;
        float h;
        int i;
        float j;

        public a() {
            a();
        }

        private a c() {
            if (this.f3924d == null) {
                this.i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            } else {
                int i = AnonymousClass1.f3920a[this.f3924d.ordinal()];
                if (i == 1) {
                    this.i = 0;
                } else if (i == 2) {
                    this.i = 1;
                } else if (i != 3) {
                    String valueOf = String.valueOf(this.f3924d);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                    sb.append("Unrecognized alignment: ");
                    sb.append(valueOf);
                    j.a("WebvttCueBuilder", sb.toString());
                    this.i = 0;
                } else {
                    this.i = 2;
                }
            }
            return this;
        }

        public final void a() {
            this.f3921a = 0L;
            this.f3922b = 0L;
            this.f3923c = null;
            this.f3924d = null;
            this.e = Float.MIN_VALUE;
            this.f = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.h = Float.MIN_VALUE;
            this.i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.j = Float.MIN_VALUE;
        }

        public final e b() {
            if (this.h != Float.MIN_VALUE && this.i == Integer.MIN_VALUE) {
                c();
            }
            return new e(this.f3921a, this.f3922b, this.f3923c, this.f3924d, this.e, this.f, this.g, this.h, this.i, this.j);
        }
    }

    public e(long j, long j2, CharSequence charSequence) {
        this(j, j2, charSequence, null, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE);
    }

    public e(long j, long j2, CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3);
        this.p = j;
        this.q = j2;
    }

    public e(CharSequence charSequence) {
        this(0L, 0L, charSequence);
    }
}
