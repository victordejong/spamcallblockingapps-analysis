package p193e.p194a.p294b.p295a.p296a.p304c;

import android.app.Activity;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p682e.C12864a2;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.a.c.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/d.class */
public final class C7622d {

    /* renamed from: a */
    public final g f23973a = C25225a.m3978P1(new C7623a());

    /* renamed from: b */
    public final AbstractC19223c0 f23974b;

    /* renamed from: e.a.b.a.a.c.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/d$a.class */
    public static final class C7623a extends m implements a<Paint> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7623a() {
            super(0);
            C7622d.this = r4;
        }

        public Object invoke() {
            int mo13770H = C7622d.this.f23974b.mo13770H(C3478R.dimen.subCategoryBoxTextSize);
            Paint paint = new Paint();
            paint.setTypeface(Typeface.SANS_SERIF);
            paint.setTextSize(mo13770H);
            return paint;
        }
    }

    @Inject
    public C7622d(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        this.f23974b = abstractC19223c0;
    }

    /* renamed from: a */
    public final int m29468a(List<C8551c> list, int i, Activity activity) {
        l.e(list, "tags");
        l.e(activity, "activity");
        AbstractC19223c0 abstractC19223c0 = this.f23974b;
        int i2 = C3478R.dimen.doubleSpace;
        int mo13770H = abstractC19223c0.mo13770H(i2);
        int mo13770H2 = this.f23974b.mo13770H(i2);
        int i3 = C12864a2.m22542p(activity).widthPixels;
        Rect rect = new Rect();
        int i4 = 1;
        ((Paint) this.f23973a.getValue()).getTextBounds("S", 0, 1, rect);
        int height = rect.height();
        int mo13770H3 = this.f23974b.mo13770H(i2);
        int mo13770H4 = (i / ((((mo13770H3 * 2) + mo13770H3) + height) + this.f23974b.mo13770H(C3478R.dimen.semiSpace))) - 1;
        int i5 = 0;
        int i6 = 0;
        for (C8551c c8551c : list) {
            Rect rect2 = new Rect();
            Paint paint = (Paint) this.f23973a.getValue();
            String str = c8551c.f26351b;
            paint.getTextBounds(str, 0, str.length(), rect2);
            int width = rect2.width() + (mo13770H2 * 2) + (mo13770H * 2);
            if (i4 == mo13770H4) {
                break;
            }
            i5 += width;
            if (i5 <= i3 - mo13770H) {
                i6++;
            } else if (i4 >= mo13770H4) {
                break;
            } else {
                i6++;
                i4++;
                i5 = width;
            }
        }
        return i6;
    }
}
