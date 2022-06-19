package com.truecaller.tcpermissions;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26413b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p851h5.AbstractC14944k;
import p193e.p194a.p851h5.AbstractC14963u;
import p193e.p194a.p851h5.C14945l;
import p193e.p194a.p851h5.C14964v;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\"\u0010\u0017J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J/\u0010\u000f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0014\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/truecaller/tcpermissions/TcPermissionsHandlerActivity;", "Ln3/b/a/h;", "Le/a/h5/u;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "finish", "()V", "onDestroy", "permission", "", "E5", "(Ljava/lang/String;)Z", "ea", "(I)Z", "resId", "a", "(I)V", "<init>", "tc-permissions_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes14-dex2jar.jar:com/truecaller/tcpermissions/TcPermissionsHandlerActivity.class */
public final class TcPermissionsHandlerActivity extends AbstractC14944k implements AbstractC14963u {
    @Inject

    /* renamed from: d */
    public C14964v f15334d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p851h5.AbstractC14963u
    /* renamed from: E5 */
    public boolean mo19360E5(String str) {
        l.e(str, "permission");
        int i = C26413b.f74031c;
        return shouldShowRequestPermissionRationale(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p851h5.AbstractC14963u
    /* renamed from: a */
    public void mo19359a(int i) {
        C19291g.m13589S1(this, i, null, 1, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p851h5.AbstractC14963u
    /* renamed from: ea */
    public boolean mo19358ea(int i) {
        boolean z;
        try {
            Intent data = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", getPackageName(), null));
            l.d(data, "Intent(Settings.ACTION_A…age\", packageName, null))");
            startActivityForResult(data, i);
            z = true;
        } catch (ActivityNotFoundException e) {
            C10480a.m26057J1(e, "App settings page couldn't be opened.");
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p851h5.AbstractC14963u
    public void finish() {
        TcPermissionsHandlerActivity.super.finish();
        overridePendingTransition(0, 0);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        TcPermissionsHandlerActivity.super.onActivityResult(i, i2, intent);
        C14964v c14964v = this.f15334d;
        if (c14964v == null) {
            l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c14964v);
        if (i != 5433) {
            return;
        }
        c14964v.f42712e = new C14945l(c14964v.m19357Hj(), c14964v.f42712e.f42680b);
        AbstractC14963u abstractC14963u = (AbstractC14963u) c14964v.f57683a;
        if (abstractC14963u == null) {
            return;
        }
        abstractC14963u.finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        TcPermissionsHandlerActivity.super.onCreate(bundle);
        getTheme().applyStyle(C4616R.style.Theme_Truecaller, false);
        Intent intent = getIntent();
        ArrayList<String> stringArrayListExtra = intent != null ? intent.getStringArrayListExtra("permissions") : null;
        Intent intent2 = getIntent();
        PermissionRequestOptions permissionRequestOptions = intent2 != null ? (PermissionRequestOptions) intent2.getParcelableExtra("options") : null;
        C14964v c14964v = this.f15334d;
        if (c14964v == null) {
            l.l("presenter");
            throw null;
        }
        c14964v.f57683a = this;
        if (c14964v == null) {
            l.l("presenter");
            throw null;
        }
        boolean z = bundle != null;
        TcPermissionsHandlerActivity tcPermissionsHandlerActivity = this;
        if (tcPermissionsHandlerActivity == null) {
            return;
        }
        if (stringArrayListExtra == null) {
            if (tcPermissionsHandlerActivity == null) {
                return;
            }
            tcPermissionsHandlerActivity.finish();
            return;
        }
        c14964v.f42709b = stringArrayListExtra;
        if (permissionRequestOptions == null) {
            permissionRequestOptions = new PermissionRequestOptions(false, false, null, 7);
        }
        c14964v.f42710c = permissionRequestOptions;
        String str = "Permissions are set " + stringArrayListExtra + ", onRestore = " + z;
        ArrayList arrayList = new ArrayList();
        for (Object obj : stringArrayListExtra) {
            if (!tcPermissionsHandlerActivity.mo19360E5((String) obj)) {
                arrayList.add(obj);
            }
        }
        c14964v.f42711d = i.d1(arrayList);
        if (z) {
            return;
        }
        String str2 = "Requesting permissions " + stringArrayListExtra;
        AbstractC14963u abstractC14963u = (AbstractC14963u) c14964v.f57683a;
        if (abstractC14963u == null) {
            return;
        }
        Object[] array = stringArrayListExtra.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        abstractC14963u.requestPermissions((String[]) array, 5432);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDestroy() {
        if (isFinishing()) {
            C14964v c14964v = this.f15334d;
            if (c14964v == null) {
                l.l("presenter");
                throw null;
            }
            c14964v.f42713f.mo19336d(c14964v.f42712e);
        }
        TcPermissionsHandlerActivity.super.onDestroy();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        AbstractC14963u abstractC14963u;
        AbstractC14963u abstractC14963u2;
        AbstractC14963u abstractC14963u3;
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        TcPermissionsHandlerActivity.super.onRequestPermissionsResult(i, strArr, iArr);
        C14964v c14964v = this.f15334d;
        if (c14964v == null) {
            l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c14964v);
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (i != 5432 || (abstractC14963u = (AbstractC14963u) c14964v.f57683a) == null) {
            return;
        }
        boolean m19357Hj = c14964v.m19357Hj();
        AbstractC14963u abstractC14963u4 = (AbstractC14963u) c14964v.f57683a;
        boolean z = false;
        if (abstractC14963u4 != null) {
            List<String> list = c14964v.f42709b;
            if (list == null) {
                l.l("permissions");
                throw null;
            }
            Iterator<T> it = list.iterator();
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    break;
                }
                String str = (String) it.next();
                if (!c14964v.f42714g.mo13825h(str)) {
                    Set<String> set = c14964v.f42711d;
                    if (set == null) {
                        l.l("deniedPermissionCandidates");
                        throw null;
                    } else if (set.contains(str) && !abstractC14963u4.mo19360E5(str)) {
                        z = true;
                        break;
                    }
                }
            }
        }
        c14964v.f42712e = new C14945l(m19357Hj, z);
        PermissionRequestOptions permissionRequestOptions = c14964v.f42710c;
        if (permissionRequestOptions == null) {
            l.l("options");
            throw null;
        }
        Integer num = permissionRequestOptions.f15312c;
        if (num != null) {
            int intValue = num.intValue();
            if (!c14964v.f42714g.mo13825h((String[]) Arrays.copyOf(strArr, strArr.length)) && (abstractC14963u3 = (AbstractC14963u) c14964v.f57683a) != null) {
                abstractC14963u3.mo19359a(intValue);
            }
        }
        PermissionRequestOptions permissionRequestOptions2 = c14964v.f42710c;
        if (permissionRequestOptions2 == null) {
            l.l("options");
            throw null;
        } else if (!permissionRequestOptions2.f15310a || !c14964v.f42712e.f42680b) {
            AbstractC14963u abstractC14963u5 = (AbstractC14963u) c14964v.f57683a;
            if (abstractC14963u5 == null) {
                return;
            }
            abstractC14963u5.finish();
        } else if (abstractC14963u.mo19358ea(5433) || (abstractC14963u2 = (AbstractC14963u) c14964v.f57683a) == null) {
        } else {
            abstractC14963u2.finish();
        }
    }
}
