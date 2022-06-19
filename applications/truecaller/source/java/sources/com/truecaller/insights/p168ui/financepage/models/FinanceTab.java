package com.truecaller.insights.p168ui.financepage.models;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p437c.p438a.p521s.C9593d;
import s1.f0.r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u00012\u00020\u0002B\u0011\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0005R\u0019\u0010\u0007\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\u0005j\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/truecaller/insights/ui/financepage/models/FinanceTab;", "", "Le/a/c/a/s/d$c;", "", "title", "()Ljava/lang/String;", RemoteMessageConst.Notification.TAG, "value", "Ljava/lang/String;", "getValue", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "ALL", "CREDIT", "DEBIT", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.financepage.models.FinanceTab */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/models/FinanceTab.class */
public enum FinanceTab implements C9593d.AbstractC9596c {
    ALL("All"),
    CREDIT("Credit"),
    DEBIT("Debit");
    
    private final String value;

    FinanceTab(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // p193e.p194a.p437c.p438a.p521s.C9593d.AbstractC9596c
    public String tag() {
        String str = this.value;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase();
        l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
        return lowerCase;
    }

    @Override // p193e.p194a.p437c.p438a.p521s.C9593d.AbstractC9596c
    public String title() {
        return r.l(this.value);
    }
}
