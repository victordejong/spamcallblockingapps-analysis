package com.huawei.updatesdk.service.otaupdate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.widget.Toast;
import com.huawei.updatesdk.a.b.c.c.d;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p098a.p103d.C2520e;
import com.huawei.updatesdk.p097a.p098a.p103d.p104i.C2526c;
import com.huawei.updatesdk.p097a.p106b.p109c.AsyncTaskC2534b;
import com.huawei.updatesdk.p097a.p106b.p109c.p110c.C2538c;
import com.huawei.updatesdk.p111b.p115b.C2546a;
import com.huawei.updatesdk.p111b.p118e.AbstractC2558a;
import com.huawei.updatesdk.p111b.p118e.C2561f;
import com.huawei.updatesdk.p111b.p120g.C2566b;
import com.huawei.updatesdk.p111b.p121h.C2570b;
import com.huawei.updatesdk.p111b.p121h.C2573c;
import com.huawei.updatesdk.p111b.p121h.C2574d;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.e;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.service.otaupdate.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/e.class */
public class AsyncTaskC2590e extends AsyncTask<Void, Void, d> {

    /* renamed from: b */
    private Context f8321b;

    /* renamed from: c */
    private CheckUpdateCallBack f8322c;

    /* renamed from: d */
    private UpdateParams f8323d;

    /* renamed from: e */
    private Toast f8324e;

    /* renamed from: g */
    private AsyncTaskC2534b f8326g;

    /* renamed from: a */
    private final List<String> f8320a = new ArrayList();

    /* renamed from: f */
    private boolean f8325f = false;

    /* renamed from: h */
    private boolean f8327h = false;

    public AsyncTaskC2590e(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        this.f8323d = updateParams;
        this.f8321b = context;
        this.f8322c = checkUpdateCallBack;
        C2591f.m36509e().m36513b(updateParams.getServiceZone());
    }

    /* renamed from: a */
    private PackageInfo m36527a(Context context, String str) {
        PackageInfo m36587a = C2570b.m36587a(str, context);
        PackageInfo packageInfo = m36587a;
        if (m36587a == null) {
            packageInfo = new PackageInfo();
            packageInfo.packageName = str;
            packageInfo.versionName = "1.0";
            packageInfo.versionCode = 1;
            ApplicationInfo applicationInfo = new ApplicationInfo();
            applicationInfo.targetSdkVersion = 19;
            packageInfo.applicationInfo = applicationInfo;
        }
        return C2520e.m36833a(packageInfo);
    }

    /* renamed from: a */
    private d m36526a(Context context, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(m36527a(context, str));
        }
        com.huawei.updatesdk.service.appmgr.bean.d dVar = !C2574d.m36567a(this.f8323d.getParamList()) ? new com.huawei.updatesdk.service.appmgr.bean.d(this.f8323d.getParamList()) : com.huawei.updatesdk.service.appmgr.bean.d.a(arrayList);
        AbstractC2558a m36617a = C2561f.m36617a(this.f8327h);
        dVar.d(m36617a.m36623c());
        dVar.b(0);
        dVar.d(C2526c.m36785b(context, m36617a.m36627b()));
        if (isCancelled()) {
            C2511a.m36861c("UpdateSDKCheckTask", "UpdateSDK task is canceled and return empty upgradeInfo");
            return null;
        }
        AsyncTaskC2534b asyncTaskC2534b = new AsyncTaskC2534b(dVar, null);
        this.f8326g = asyncTaskC2534b;
        return asyncTaskC2534b.m36730c();
    }

    /* renamed from: a */
    private void m36529a() {
        Toast toast = this.f8324e;
        if (toast != null) {
            toast.cancel();
        }
    }

    /* renamed from: a */
    private void m36528a(Context context, ApkUpgradeInfo apkUpgradeInfo) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, AppUpdateActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable("app_update_parm", apkUpgradeInfo);
        bundle.putBoolean("app_must_btn", this.f8323d.isMustBtnOne());
        bundle.putBoolean("is_apptouch", this.f8327h);
        intent.putExtras(bundle);
        if (!(context instanceof Activity)) {
            intent.setFlags(268435456);
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder m8728C = C22128a.m8728C("go AppUpdateActivity error: ");
            m8728C.append(e.toString());
            C2515a.m36847b("UpdateSDKCheckTask", m8728C.toString());
        }
    }

    /* renamed from: a */
    private void m36524a(ArrayList<ApkUpgradeInfo> arrayList) {
        Iterator<ApkUpgradeInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            ApkUpgradeInfo next = it.next();
            StringBuilder m8728C = C22128a.m8728C("ApkUpgradeInfo, version=");
            m8728C.append(next.getVersion_());
            m8728C.append(", versionCode=");
            m8728C.append(next.getVersionCode_());
            m8728C.append(", detailId=");
            m8728C.append(next.getDetailId_());
            m8728C.append(", devType=");
            m8728C.append(next.getDevType_());
            m8728C.append(", packageName=");
            m8728C.append(next.getPackage_());
            m8728C.append(", oldVersionCode=");
            m8728C.append(next.getOldVersionCode_());
            C2511a.m36862b("UpdateSDKCheckTask", m8728C.toString());
        }
    }

    /* renamed from: a */
    private void m36523a(List<ApkUpgradeInfo> list) {
        if (C2574d.m36567a(list)) {
            return;
        }
        for (ApkUpgradeInfo apkUpgradeInfo : list) {
            if (apkUpgradeInfo != null && !TextUtils.isEmpty(apkUpgradeInfo.getFullDownUrl_())) {
                if (apkUpgradeInfo.getDiffSize_() > 0) {
                    apkUpgradeInfo.setDiffDownUrl_(apkUpgradeInfo.getDownurl_());
                }
                apkUpgradeInfo.setDownurl_(apkUpgradeInfo.getFullDownUrl_());
            }
        }
    }

    /* renamed from: b */
    private void m36520b() {
        String targetPkgName = this.f8323d.getTargetPkgName();
        String str = targetPkgName;
        if (TextUtils.isEmpty(targetPkgName)) {
            str = this.f8321b.getPackageName();
        }
        if (!C2574d.m36567a(this.f8323d.getPackageList())) {
            this.f8320a.addAll(this.f8323d.getPackageList());
        } else if (!TextUtils.isEmpty(str)) {
            this.f8320a.add(str);
        }
        StringBuilder m8728C = C22128a.m8728C("start check update and packageNames are: ");
        m8728C.append(this.f8320a.toString());
        C2511a.m36862b("UpdateSDKCheckTask", m8728C.toString());
    }

    /* renamed from: b */
    private void m36519b(d dVar) {
        if (this.f8322c != null) {
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.STATUS, 6);
            if (dVar.a() != null) {
                intent.putExtra(UpdateKey.FAIL_CODE, dVar.a().ordinal());
            }
            intent.putExtra(UpdateKey.FAIL_REASON, dVar.c());
            intent.putExtra(UpdateKey.RESPONSE_CODE, dVar.b());
            this.f8322c.onUpdateInfo(intent);
            this.f8322c.onUpdateStoreError(dVar.d());
        }
    }

    /* renamed from: c */
    private boolean m36517c() {
        return !this.f8325f && TextUtils.isEmpty(this.f8323d.getTargetPkgName()) && C2574d.m36567a(this.f8323d.getPackageList()) && C2574d.m36567a(this.f8323d.getParamList());
    }

    /* renamed from: a */
    public d doInBackground(Void... voidArr) {
        C2515a.m36849a("UpdateSDKCheckTask", "CheckOtaAndUpdataTask doInBackground");
        C2546a.m36680d().m36682c();
        C2566b.m36605a(this);
        m36520b();
        AbstractC2558a m36617a = C2561f.m36617a(this.f8327h);
        m36617a.m36628a(this.f8320a);
        m36617a.m36621d();
        C2538c.m36716c(m36617a.m36626b(this.f8321b));
        C2546a.m36680d().m36678e(C2591f.m36509e().m36516a());
        return m36526a(this.f8321b, this.f8320a);
    }

    /* renamed from: a */
    public void onPostExecute(d dVar) {
        ArrayList<? extends Parcelable> arrayList;
        C2566b.m36606a().remove(this);
        m36529a();
        if (this.f8322c == null) {
            C2511a.m36861c("UpdateSDKCheckTask", "UpdateSDK callback is null");
        }
        if (dVar == null) {
            if (this.f8322c == null) {
                return;
            }
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.STATUS, 3);
            this.f8322c.onUpdateInfo(intent);
            return;
        }
        int b = dVar.b();
        if (dVar.e()) {
            e eVar = (e) dVar;
            ArrayList<? extends Parcelable> arrayList2 = eVar.list;
            if (!C2574d.m36567a(eVar.notRcmList)) {
                ApkUpgradeInfo apkUpgradeInfo = (ApkUpgradeInfo) eVar.notRcmList.get(0);
                StringBuilder m8728C = C22128a.m8728C("Updateinfo is not recommend, reason: ");
                m8728C.append(apkUpgradeInfo.getNotRcmReason_());
                m8728C.append(" ,is same signature: ");
                m8728C.append(apkUpgradeInfo.getSameS_());
                C2511a.m36863a("UpdateSDKCheckTask", m8728C.toString());
            }
            m36523a(arrayList2);
            arrayList = arrayList2;
            if (C2574d.m36567a(arrayList2)) {
                arrayList = arrayList2;
                if (this.f8322c != null) {
                    C2511a.m36862b("UpdateSDKCheckTask", "no upgrade info");
                    Intent intent2 = new Intent();
                    intent2.putExtra(UpdateKey.STATUS, 3);
                    intent2.putExtra(UpdateKey.RESPONSE_CODE, b);
                    this.f8322c.onUpdateInfo(intent2);
                    arrayList = arrayList2;
                }
            }
        } else {
            m36519b(dVar);
            StringBuilder m8728C2 = C22128a.m8728C("get app update msg failed,responseCode is ");
            m8728C2.append(dVar.d());
            m8728C2.append(",failreason: ");
            m8728C2.append(dVar.c());
            m8728C2.append(",response: ");
            m8728C2.append(dVar.toString());
            C2511a.m36863a("UpdateSDKCheckTask", m8728C2.toString());
            arrayList = null;
        }
        if (C2574d.m36567a(arrayList)) {
            if (m36517c()) {
                C2511a.m36862b("UpdateSDKCheckTask", "show no upgrade info toast.");
                Context context = this.f8321b;
                Toast.makeText(context, C2573c.m36573c(context, "upsdk_update_check_no_new_version"), 0).show();
                return;
            }
            StringBuilder m8728C3 = C22128a.m8728C("no upgrade info: ");
            m8728C3.append(this.f8320a.toString());
            C2511a.m36862b("UpdateSDKCheckTask", m8728C3.toString());
            return;
        }
        Serializable serializable = (ApkUpgradeInfo) arrayList.get(0);
        C2589d.m36534a().m36531a(this.f8322c);
        if (this.f8322c != null) {
            Intent intent3 = new Intent();
            intent3.putExtra(UpdateKey.INFO, serializable);
            intent3.putParcelableArrayListExtra(UpdateKey.INFO_LIST, arrayList);
            intent3.putExtra(UpdateKey.STATUS, 7);
            intent3.putExtra(UpdateKey.RESPONSE_CODE, b);
            this.f8322c.onUpdateInfo(intent3);
        }
        m36524a((ArrayList<ApkUpgradeInfo>) arrayList);
        if (!this.f8323d.isShowImmediate()) {
            return;
        }
        m36528a(this.f8321b, (ApkUpgradeInfo) serializable);
    }

    /* renamed from: a */
    public void m36522a(boolean z) {
        this.f8327h = z;
    }

    /* renamed from: b */
    public void m36518b(boolean z) {
        this.f8325f = z;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        AsyncTaskC2534b asyncTaskC2534b = this.f8326g;
        if (asyncTaskC2534b != null) {
            asyncTaskC2534b.m36733b();
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        if (m36517c()) {
            Context context = this.f8321b;
            Toast makeText = Toast.makeText(context, C2573c.m36573c(context, "upsdk_checking_update_prompt"), 1);
            this.f8324e = makeText;
            makeText.show();
        }
    }
}
