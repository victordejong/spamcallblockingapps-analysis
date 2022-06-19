package p193e.p194a.p1365y.p1366a.p1372g.p1373f;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.AbstractC21513e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006¨\u0006\f"}, d2 = {"Le/a/y/a/g/f/h;", "Le/a/y/a/g/f/e;", "Landroidx/constraintlayout/widget/ConstraintLayout$a;", "layoutParams", "Ls1/s;", "g1", "(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V", "h1", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "<init>", "(Landroid/content/Context;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.y.a.g.f.h */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/g/f/h.class */
public final class C21518h extends AbstractC21513e {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21518h(Context context) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.p1373f.AbstractC21513e
    /* renamed from: g1 */
    public void mo9568g1(ConstraintLayout.C0111a c0111a) {
        l.e(c0111a, "layoutParams");
        AbstractC21513e.C21514a emojiAttributes$flash_release = getEmojiAttributes$flash_release();
        if (emojiAttributes$flash_release != null) {
            c0111a.f643k = 0;
            c0111a.f637h = 21;
            c0111a.f597A = getRandom().nextFloat() * emojiAttributes$flash_release.f60063c;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.p1373f.AbstractC21513e
    /* renamed from: h1 */
    public void mo9567h1(ConstraintLayout.C0111a c0111a) {
        l.e(c0111a, "layoutParams");
        AbstractC21513e.C21514a emojiAttributes$flash_release = getEmojiAttributes$flash_release();
        if (emojiAttributes$flash_release != null) {
            c0111a.f637h = 0;
            c0111a.f643k = 21;
            float f = emojiAttributes$flash_release.f60065e;
            c0111a.f597A = (getRandom().nextFloat() * f) + f;
        }
    }
}
