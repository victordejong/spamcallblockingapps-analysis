package androidx.fragment.app;

import android.view.View;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m815d2 = {"findFragment", "F", "Landroidx/fragment/app/Fragment;", "Landroid/view/View;", "(Landroid/view/View;)Landroidx/fragment/app/Fragment;", "fragment-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ViewKt.class */
public final class ViewKt {
    public static final <F extends Fragment> F findFragment(View view) {
        C15149k.m377b(view, "$this$findFragment");
        F f = (F) FragmentManager.findFragment(view);
        C15149k.m383a((Object) f, "FragmentManager.findFragment(this)");
        return f;
    }
}
