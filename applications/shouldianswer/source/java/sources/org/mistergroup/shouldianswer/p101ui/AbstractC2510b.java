package org.mistergroup.shouldianswer.p101ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0443f;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/b.class */
public abstract class AbstractC2510b extends C2512c {

    /* renamed from: a */
    protected ActivityC2499a f7383a;

    /* renamed from: b */
    private Toolbar f7384b;

    /* renamed from: c */
    private AbstractC0078a f7385c;

    /* renamed from: org.mistergroup.shouldianswer.ui.b$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/b$a.class */
    static final class View$OnClickListenerC2511a implements View.OnClickListener {
        View$OnClickListenerC2511a() {
            AbstractC2510b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC2510b abstractC2510b = AbstractC2510b.this;
            C1694h.m3122a((Object) view, "it");
            abstractC2510b.m858a(view);
        }
    }

    /* renamed from: a */
    public final ActivityC2499a m859a() {
        ActivityC2499a activityC2499a = this.f7383a;
        if (activityC2499a == null) {
            C1694h.m3116b("baseActivity");
        }
        return activityC2499a;
    }

    /* renamed from: a */
    public void m858a(View view) {
        C1694h.m3117b(view, "it");
        ActivityC2499a activityC2499a = this.f7383a;
        if (activityC2499a == null) {
            C1694h.m3116b("baseActivity");
        }
        ActivityC2499a activityC2499a2 = activityC2499a;
        Intent m6654a = C0443f.m6654a(activityC2499a2);
        if (m6654a == null) {
            C3104j.m157a(C3104j.f9124a, "ACTIVITY:onAppToolbarClick upIntent=null -> finish()", (String) null, 2, (Object) null);
            activityC2499a.finish();
            return;
        }
        if (!C0443f.m6653a(activityC2499a2, m6654a)) {
            ActivityC2499a activityC2499a3 = this.f7383a;
            if (activityC2499a3 == null) {
                C1694h.m3116b("baseActivity");
            }
            Intent intent = activityC2499a3.getIntent();
            C1694h.m3122a((Object) intent, "baseActivity.intent");
            if ((intent.getFlags() & 268435456) == 0) {
                C3104j.m157a(C3104j.f9124a, "ACTIVITY:onAppToolbarClick finish", (String) null, 2, (Object) null);
                activityC2499a.finish();
                return;
            }
        }
        C3104j.m157a(C3104j.f9124a, "ACTIVITY:onAppToolbarClick startActivity", (String) null, 2, (Object) null);
        activityC2499a.startActivity(m6654a);
        activityC2499a.finish();
    }

    /* renamed from: a */
    public abstract void mo240a(ActivityC2499a activityC2499a, Bundle bundle);

    /* renamed from: b */
    public final AbstractC0078a m857b() {
        return this.f7385c;
    }

    /* renamed from: c */
    public abstract Toolbar mo238c();

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0057, code lost:
        if (r0.isEmpty() != false) goto L17;
     */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityCreated(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.AbstractC2510b.onActivityCreated(android.os.Bundle):void");
    }
}
