package p193e.p194a.p1164r.p1166a0;

import android.text.style.ClickableSpan;
import android.view.View;
import com.truecaller.wizard.C4861R;
import java.util.Objects;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.C8413d;
import s1.z.c.l;
/* renamed from: e.a.r.a0.t */
/* loaded from: classes16-dex2jar.jar:e/a/r/a0/t.class */
public final class C19724t extends ClickableSpan {

    /* renamed from: a */
    public final /* synthetic */ u f54760a;

    /* renamed from: b */
    public final /* synthetic */ String f54761b;

    public C19724t(u uVar, String str) {
        this.f54760a = uVar;
        this.f54761b = str;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        l.e(view, "widget");
        z RA = this.f54760a.b.RA();
        String str = this.f54761b;
        l.d(str, "url");
        z zVar = RA;
        Objects.requireNonNull(zVar);
        l.e(str, "url");
        zVar.m.m12877d(str);
        if (zVar.l.mo13429d()) {
            AbstractC26992b0 abstractC26992b0 = (x) zVar.f57683a;
            if (abstractC26992b0 == null) {
                return;
            }
            zVar.r.m12914a(abstractC26992b0, str);
            return;
        }
        Integer valueOf = C25225a.m3976Q(C8413d.f26092b, str) ? Integer.valueOf(C4861R.string.Welcome_offlineToSTitle) : C25225a.m3976Q(C8413d.f26091a, str) ? Integer.valueOf(C4861R.string.Welcome_offlinePPTitle) : null;
        x xVar = (x) zVar.f57683a;
        if (xVar == null) {
            return;
        }
        xVar.yv(valueOf, str);
    }
}
