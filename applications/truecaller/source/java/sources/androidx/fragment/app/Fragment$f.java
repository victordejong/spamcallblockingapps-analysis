package androidx.fragment.app;

import androidx.activity.result.ActivityResultRegistry;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$f.class */
public class Fragment$f implements AbstractC25640a<Void, ActivityResultRegistry> {

    /* renamed from: a */
    public final /* synthetic */ ActivityResultRegistry f792a;

    public Fragment$f(Fragment fragment, ActivityResultRegistry activityResultRegistry) {
        this.f792a = activityResultRegistry;
    }

    @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
    public ActivityResultRegistry apply(Void r3) {
        return this.f792a;
    }
}
