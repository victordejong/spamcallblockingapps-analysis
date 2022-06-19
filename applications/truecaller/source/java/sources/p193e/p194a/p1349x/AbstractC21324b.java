package p193e.p194a.p1349x;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import kotlin.Metadata;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p717f.p734z.C13827k0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b#\u0010\u000fJ!\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00118$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0013¨\u0006$"}, d2 = {"Le/a/x/b;", "Landroidx/fragment/app/Fragment;", "Le/a/x/g;", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/f/z/k0;", "profilePicture", "C3", "(Le/a/f/z/k0;)V", "C5", "()V", "T1", "Landroid/widget/TextView;", "PA", "()Landroid/widget/TextView;", "regularCallerLabel", "Le/a/b0/a/b/a;", "a", "Le/a/b0/a/b/a;", "getAvatarPresenter", "()Le/a/b0/a/b/a;", "setAvatarPresenter", "(Le/a/b0/a/b/a;)V", "avatarPresenter", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "OA", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar", "QA", "simSlot", "<init>", "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.x.b */
/* loaded from: classes9-dex2jar.jar:e/a/x/b.class */
public abstract class AbstractC21324b extends Fragment implements AbstractC21334g {

    /* renamed from: a */
    public C8243a f59716a;

    @Override // p193e.p194a.p1349x.AbstractC21334g
    /* renamed from: C3 */
    public void mo9883C3(C13827k0 c13827k0) {
        l.e(c13827k0, "profilePicture");
        C8243a c8243a = this.f59716a;
        if (c8243a == null) {
            l.l("avatarPresenter");
            throw null;
        }
        C8243a.m28739ok(c8243a, C17891a1.C17902k.m15647R0(c13827k0), false, 2, null);
        C19286f.m13684T(mo9865OA());
    }

    @Override // p193e.p194a.p1349x.AbstractC21334g
    /* renamed from: C5 */
    public void mo9882C5() {
        C19286f.m13689O(mo9863QA());
    }

    /* renamed from: OA */
    public abstract AvatarXView mo9865OA();

    /* renamed from: PA */
    public abstract TextView mo9864PA();

    /* renamed from: QA */
    public abstract TextView mo9863QA();

    @Override // p193e.p194a.p1349x.AbstractC21334g
    /* renamed from: T1 */
    public final void mo9881T1() {
        C19286f.m13689O(mo9864PA());
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        AbstractC21324b.super.onViewCreated(view, bundle);
        Context context = mo9865OA().getContext();
        l.d(context, "avatar.context");
        this.f59716a = new C8243a(new C19235i0(context));
        AvatarXView mo9865OA = mo9865OA();
        C8243a c8243a = this.f59716a;
        if (c8243a != null) {
            mo9865OA.setPresenter(c8243a);
        } else {
            l.l("avatarPresenter");
            throw null;
        }
    }
}
