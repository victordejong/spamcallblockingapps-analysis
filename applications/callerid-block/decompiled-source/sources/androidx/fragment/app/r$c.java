package androidx.fragment.app;

import android.transition.Transition;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r$c.class */
class r$c implements Transition.TransitionListener {

    /* renamed from: a */
    final /* synthetic */ Object f2006a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f2007b;

    /* renamed from: c */
    final /* synthetic */ Object f2008c;

    /* renamed from: d */
    final /* synthetic */ ArrayList f2009d;

    /* renamed from: e */
    final /* synthetic */ Object f2010e;

    /* renamed from: f */
    final /* synthetic */ ArrayList f2011f;

    /* renamed from: g */
    final /* synthetic */ r f2012g;

    r$c(r rVar, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.f2012g = rVar;
        this.f2006a = obj;
        this.f2007b = arrayList;
        this.f2008c = obj2;
        this.f2009d = arrayList2;
        this.f2010e = obj3;
        this.f2011f = arrayList3;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        Object obj = this.f2006a;
        if (obj != null) {
            this.f2012g.q(obj, this.f2007b, (ArrayList) null);
        }
        Object obj2 = this.f2008c;
        if (obj2 != null) {
            this.f2012g.q(obj2, this.f2009d, (ArrayList) null);
        }
        Object obj3 = this.f2010e;
        if (obj3 != null) {
            this.f2012g.q(obj3, this.f2011f, (ArrayList) null);
        }
    }
}
