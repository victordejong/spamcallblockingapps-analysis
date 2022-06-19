package p193e.p194a.p195a.p244k.p245a.p246a;

import com.truecaller.api.services.messenger.p138v1.models.GroupAction;
import com.truecaller.messaging.C4161R;
import com.truecaller.messaging.data.types.ImGroupPermissions;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.r */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/r.class */
public final class C6490r implements AbstractC6489q {

    /* renamed from: a */
    public final AbstractC19223c0 f21499a;

    @Inject
    public C6490r(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        this.f21499a = abstractC19223c0;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q
    /* renamed from: a */
    public boolean mo30874a(ImGroupPermissions imGroupPermissions, int i, int i2) {
        l.e(imGroupPermissions, "permissions");
        int i3 = i2 ^ i;
        return (i & imGroupPermissions.f13337b) == 0 && (imGroupPermissions.f13338c & i3) == i3;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q
    /* renamed from: b */
    public boolean mo30873b(ImGroupPermissions imGroupPermissions, GroupAction groupAction) {
        l.e(imGroupPermissions, "permissions");
        l.e(groupAction, "action");
        return (imGroupPermissions.f13336a & groupAction.getNumber()) != 0;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q
    /* renamed from: c */
    public String mo30872c(int i) {
        String str = null;
        Integer valueOf = (1073741824 & i) != 0 ? Integer.valueOf(C4161R.string.ImGroupRoleSuperAdmin) : (536870912 & i) != 0 ? Integer.valueOf(C4161R.string.ImGroupRoleAdmin) : (i & 8) != 0 ? Integer.valueOf(C4161R.string.ImGroupRoleUser) : (i & 2) != 0 ? Integer.valueOf(C4161R.string.ImGroupRoleInvitee) : null;
        if (valueOf != null) {
            str = this.f21499a.mo13768b(valueOf.intValue(), new Object[0]);
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q
    /* renamed from: d */
    public String mo30871d(String str) {
        l.e(str, "imPeerId");
        l.e(str, "imPeerId");
        StringBuilder sb = new StringBuilder();
        sb.append("User");
        char c = 5381;
        for (int i = 0; i < str.length(); i++) {
            c = str.charAt(i) + (c << 5) + c;
        }
        sb.append(Math.abs(c % 16960));
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q
    /* renamed from: e */
    public String mo30870e(String str) {
        l.e(str, "groupId");
        l.e(str, "groupId");
        StringBuilder sb = new StringBuilder();
        sb.append("Group");
        char c = 5381;
        for (int i = 0; i < str.length(); i++) {
            c = str.charAt(i) + (c << 5) + c;
        }
        sb.append(Math.abs(c % 16960));
        return sb.toString();
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q
    /* renamed from: f */
    public boolean mo30869f(ImGroupPermissions imGroupPermissions, GroupAction groupAction, C16503a c16503a) {
        boolean z;
        l.e(imGroupPermissions, "permissions");
        l.e(groupAction, "action");
        l.e(c16503a, "participant");
        if (mo30873b(imGroupPermissions, groupAction)) {
            if ((imGroupPermissions.f13337b & c16503a.f46398b) == 0) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
