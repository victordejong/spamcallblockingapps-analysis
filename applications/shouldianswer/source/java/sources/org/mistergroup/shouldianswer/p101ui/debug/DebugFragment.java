package org.mistergroup.shouldianswer.p101ui.debug;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2249k;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
/* renamed from: org.mistergroup.shouldianswer.ui.debug.DebugFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/debug/DebugFragment.class */
public final class DebugFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2517a f7400b = new C2517a(null);

    /* renamed from: c */
    private AbstractC2249k f7401c;

    /* renamed from: org.mistergroup.shouldianswer.ui.debug.DebugFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/debug/DebugFragment$a.class */
    public static final class C2517a {
        private C2517a() {
        }

        public /* synthetic */ C2517a(C1691e c1691e) {
            this();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017c  */
    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo240a(org.mistergroup.shouldianswer.p101ui.ActivityC2499a r10, android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.debug.DebugFragment.mo240a(org.mistergroup.shouldianswer.ui.a, android.os.Bundle):void");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        return null;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558434, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f7401c = (AbstractC2249k) m5843a;
        AbstractC2249k abstractC2249k = this.f7401c;
        if (abstractC2249k == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2249k.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }
}
