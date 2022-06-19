package p193e.p194a;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p374a.AbstractC8213a;
import s1.z.c.l;
/* renamed from: e.a.z1 */
/* loaded from: classes4-dex2jar.jar:e/a/z1.class */
public final class C21846z1 extends AbstractC8213a {

    /* renamed from: j */
    public final String f60727j;

    /* renamed from: k */
    public final String f60728k;

    public C21846z1(Context context, int i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        String string = context.getString(i);
        l.d(string, "context.getString(subtitleId)");
        this.f60728k = string;
        String string2 = context.getString(2131887189);
        l.d(string2, "context.getString(R.string.PermissionDialog_title)");
        this.f60727j = string2;
    }

    public C21846z1(Context context, int i, int i2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        String string = context.getString(i);
        l.d(string, "context.getString(reasonId)");
        String string2 = context.getString(i2);
        l.d(string2, "context.getString(permissionId)");
        String string3 = context.getString(C2752R.string.PermissionDialog_subtitleBase, string, string2);
        l.d(string3, "context.getString(R.stri…Base, reason, permission)");
        this.f60728k = string3;
        String string4 = context.getString(2131887189);
        l.d(string4, "context.getString(R.string.PermissionDialog_title)");
        this.f60727j = string4;
    }

    public C21846z1(String str, String str2) {
        l.e(str, "title");
        l.e(str2, "subtitle");
        this.f60727j = str;
        this.f60728k = str2;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        return null;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        return getString(2131887173);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = getString(2131887168);
        l.d(string, "getString(R.string.PermissionDialog_allow)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        return this.f60728k;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        return this.f60727j;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
        dismiss();
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        C19291g.m13570Z0(requireContext());
        dismiss();
    }

    /* renamed from: cB */
    public final void m8995cB(FragmentManager fragmentManager) {
        l.e(fragmentManager, "manager");
        C21846z1.super.show(fragmentManager, C21846z1.class.getSimpleName());
    }
}
