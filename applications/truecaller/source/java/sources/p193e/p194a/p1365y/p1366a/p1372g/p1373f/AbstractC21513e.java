package p193e.p194a.p1365y.p1366a.p1372g.p1373f;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import java.util.Random;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018��2\u00020\u0001:\u0001$B\u000f\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\t\u0010\bJ/\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001f\u001a\u00020\u001a8\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006%"}, d2 = {"Le/a/y/a/g/f/e;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Ls1/s;", "onAttachedToWindow", "()V", "Landroidx/constraintlayout/widget/ConstraintLayout$a;", "layoutParams", "g1", "(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V", "h1", "", "viewSize", "emojiSize", "", "alpha", "totalNumber", "f1", "(IIFI)V", "Le/a/y/a/g/f/e$a;", "u", "Le/a/y/a/g/f/e$a;", "getEmojiAttributes$flash_release", "()Le/a/y/a/g/f/e$a;", "setEmojiAttributes$flash_release", "(Le/a/y/a/g/f/e$a;)V", "emojiAttributes", "Ljava/util/Random;", "t", "Ljava/util/Random;", "getRandom", "()Ljava/util/Random;", "random", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "<init>", "(Landroid/content/Context;)V", "a", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.y.a.g.f.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/g/f/e.class */
public abstract class AbstractC21513e extends ConstraintLayout {

    /* renamed from: t */
    public final Random f60059t = new Random();

    /* renamed from: u */
    public C21514a f60060u;

    /* renamed from: e.a.y.a.g.f.e$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/g/f/e$a.class */
    public static class C21514a {

        /* renamed from: a */
        public final String f60061a;

        /* renamed from: b */
        public final float f60062b;

        /* renamed from: c */
        public final float f60063c;

        /* renamed from: d */
        public final float f60064d;

        /* renamed from: e */
        public final float f60065e;

        public C21514a(String str, float f, float f2, float f3, float f4) {
            l.e(str, "displayableUnicode");
            this.f60061a = str;
            this.f60062b = f;
            this.f60063c = f2;
            this.f60064d = f3;
            this.f60065e = f4;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC21513e(Context context) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* renamed from: f1 */
    public final void m9570f1(int i, int i2, float f, int i3) {
        C21514a c21514a = this.f60060u;
        if (c21514a != null) {
            int i4 = 1;
            if (1 > i3) {
                return;
            }
            while (true) {
                TextView textView = new TextView(getContext());
                textView.setId(getChildCount());
                textView.setText(c21514a.f60061a);
                textView.setTextSize(0, i2);
                textView.setAlpha(f);
                float nextFloat = this.f60059t.nextFloat() * (-20.0f);
                if (i4 % 2 != 0) {
                    nextFloat = -nextFloat;
                }
                textView.setRotation(nextFloat);
                ConstraintLayout.C0111a c0111a = new ConstraintLayout.C0111a(i, i);
                c0111a.f651q = 0;
                c0111a.f653s = 0;
                c0111a.f660z = this.f60059t.nextFloat();
                mo9568g1(c0111a);
                addView(textView, c0111a);
                if (i4 == i3) {
                    return;
                }
                i4++;
            }
        }
    }

    /* renamed from: g1 */
    public abstract void mo9568g1(ConstraintLayout.C0111a c0111a);

    public final C21514a getEmojiAttributes$flash_release() {
        return this.f60060u;
    }

    public final Random getRandom() {
        return this.f60059t;
    }

    /* renamed from: h1 */
    public abstract void mo9567h1(ConstraintLayout.C0111a c0111a);

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C21514a c21514a = this.f60060u;
        if (c21514a != null) {
            View guideline = new Guideline(getContext());
            guideline.setId(21);
            ConstraintLayout.C0111a c0111a = new ConstraintLayout.C0111a(-1, -2);
            c0111a.f627c = c21514a.f60062b;
            c0111a.f614R = 0;
            addView(guideline, c0111a);
            m9570f1(getResources().getDimensionPixelSize(C3909R.dimen.dp60), getResources().getDimensionPixelSize(C3909R.dimen.sp40), 1.0f, 4);
            m9570f1(getResources().getDimensionPixelSize(C3909R.dimen.dp48), getResources().getDimensionPixelSize(C3909R.dimen.sp32), 0.9f, 6);
            m9570f1(getResources().getDimensionPixelSize(C3909R.dimen.dp32), getResources().getDimensionPixelSize(C3909R.dimen.sp20), 0.8f, 8);
        }
    }

    public final void setEmojiAttributes$flash_release(C21514a c21514a) {
        this.f60060u = c21514a;
    }
}
