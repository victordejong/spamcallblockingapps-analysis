package org.mistergroup.shouldianswer.p101ui.main;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p101ui.C2512c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.main.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/d.class */
public abstract class AbstractC2709d extends C2512c {

    /* renamed from: a */
    private MainActivity f8024a;

    /* renamed from: b */
    private boolean f8025b;

    public AbstractC2709d() {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + " object init", (String) null, 2, (Object) null);
    }

    /* renamed from: a */
    public final MainActivity m567a() {
        return this.f8024a;
    }

    /* renamed from: a */
    public final void m566a(MainActivity mainActivity) {
        this.f8024a = mainActivity;
    }

    /* renamed from: a */
    public final void m565a(boolean z) {
        this.f8025b = z;
    }

    /* renamed from: b */
    public final boolean m564b() {
        return this.f8025b;
    }

    /* renamed from: c */
    public abstract void mo563c();

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onActivityCreated", (String) null, 2, (Object) null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        C1694h.m3117b(context, "context");
        super.onAttach(context);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onAttach", (String) null, 2, (Object) null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(attributeSet, "attrs");
        super.onInflate(context, attributeSet, bundle);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, getClass().getSimpleName() + ".onInflate", (String) null, 2, (Object) null);
    }
}
