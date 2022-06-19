package p193e.p194a.p1399z.p1400a.p1401a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import com.google.android.gms.ads.RequestConfiguration;
import com.truecaller.personalsafety.C4318R;
import e.m.a.g.e.e;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\b&\u0018��*\b\b��\u0010\u0002*\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0010\u001a\u00028��2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH&¢\u0006\u0004\b\u0010\u0010\u0011R$\u0010\u0018\u001a\u0004\u0018\u00018��8\u0014@\u0014X\u0094\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Le/a/z/a/a/b;", "Landroidx/databinding/ViewDataBinding;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Le/m/a/g/e/e;", "", "getTheme", "()I", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "OA", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;", "a", "Landroidx/databinding/ViewDataBinding;", "getBinding", "()Landroidx/databinding/ViewDataBinding;", "setBinding", "(Landroidx/databinding/ViewDataBinding;)V", "binding", "<init>", "()V", "personal-safety_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.z.a.a.b */
/* loaded from: classes11-dex2jar.jar:e/a/z/a/a/b.class */
public abstract class AbstractC21824b<T extends ViewDataBinding> extends e {

    /* renamed from: a */
    public T f60690a;

    /* renamed from: OA */
    public abstract T mo9030OA(LayoutInflater layoutInflater, ViewGroup viewGroup);

    public int getTheme() {
        return C4318R.style.PersonalSafetyBottomSheetDialog;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        AbstractC21824b.super.onCreateView(layoutInflater, viewGroup, bundle);
        T mo9030OA = mo9030OA(C17422k.m16050u0(layoutInflater, true), viewGroup);
        this.f60690a = mo9030OA;
        return mo9030OA != null ? mo9030OA.getRoot() : null;
    }
}
