package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.RequestConfiguration;
import com.truecaller.bizmon.newBusiness.components.OnboardingViewPagerWithNavigator;
import kotlin.Metadata;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018��*\b\b��\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u000f\u0010\u000bJ\u001d\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0004¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Le/a/b/a/c/a/a/d;", "Le/a/b/a/c/a/r;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroidx/fragment/app/Fragment;", "Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;", "Le/a/b/a/c/a/q;", "parentPresenter", "Ls1/s;", "OA", "(Le/a/b/a/c/a/q;)V", "E6", "()V", "xy", "a", "Le/a/b/a/c/a/q;", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/d.class */
public abstract class AbstractC7675d<T extends AbstractC7745r> extends Fragment implements AbstractC7745r, OnboardingViewPagerWithNavigator.AbstractC3494a {

    /* renamed from: a */
    public AbstractC7744q<T> f24060a;

    @Override // com.truecaller.bizmon.newBusiness.components.OnboardingViewPagerWithNavigator.AbstractC3494a
    /* renamed from: E6 */
    public void mo29452E6() {
        AbstractC7744q<T> abstractC7744q = this.f24060a;
        if (abstractC7744q != null) {
            abstractC7744q.mo29338kc();
        } else {
            l.l("parentPresenter");
            throw null;
        }
    }

    /* renamed from: OA */
    public final void m29451OA(AbstractC7744q<T> abstractC7744q) {
        l.e(abstractC7744q, "parentPresenter");
        this.f24060a = abstractC7744q;
    }

    @Override // com.truecaller.bizmon.newBusiness.components.OnboardingViewPagerWithNavigator.AbstractC3494a
    /* renamed from: xy */
    public void mo29450xy() {
        AbstractC7744q<T> abstractC7744q = this.f24060a;
        if (abstractC7744q != null) {
            abstractC7744q.mo29337xd();
        } else {
            l.l("parentPresenter");
            throw null;
        }
    }
}
