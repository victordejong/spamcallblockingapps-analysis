package com.tmobile.tmoid.helperlib.sit.internal;

import android.content.Context;
import com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/SitHelperLibraryImpl.class */
public class SitHelperLibraryImpl extends ISitHelperLibrary.Stub {

    /* renamed from: a */
    private final SitRequestManager f14895a;

    public SitHelperLibraryImpl(Context context) {
        this.f14895a = new SitRequestManager(context);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
    /* renamed from: J */
    public ManageConnectivityAPIResponse mo4755J(String str, ManageConnectivityAPIRequest manageConnectivityAPIRequest) {
        return (ManageConnectivityAPIResponse) this.f14895a.m4741h(str, manageConnectivityAPIRequest, ManageConnectivityAPIResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
    /* renamed from: Q */
    public SitAPIResponse mo4754Q(SitAPIRequest sitAPIRequest) {
        return (SitAPIResponse) this.f14895a.m4741h(sitAPIRequest.m4769f(), sitAPIRequest, SitAPIResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
    /* renamed from: X */
    public ManagePushTokenAPIResponse mo4753X(ManagePushTokenAPIRequest managePushTokenAPIRequest) {
        return (ManagePushTokenAPIResponse) this.f14895a.m4741h(managePushTokenAPIRequest.m4786l(), managePushTokenAPIRequest, ManagePushTokenAPIResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
    /* renamed from: e0 */
    public MsisdnDataAPIResponse mo4752e0(String str, MsisdnDataAPIRequest msisdnDataAPIRequest) {
        return (MsisdnDataAPIResponse) this.f14895a.m4741h(str, msisdnDataAPIRequest, MsisdnDataAPIResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
    @Deprecated
    /* renamed from: h */
    public DeprecatedManageConnectivityAPIResponse mo4751h(DeprecatedManageConnectivityAPIRequest deprecatedManageConnectivityAPIRequest) {
        return (DeprecatedManageConnectivityAPIResponse) this.f14895a.m4742g(deprecatedManageConnectivityAPIRequest, DeprecatedManageConnectivityAPIResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
    /* renamed from: o0 */
    public AkaAuthAPIResponse mo4750o0(String str, AkaAuthAPIRequest akaAuthAPIRequest) {
        return (AkaAuthAPIResponse) this.f14895a.m4741h(str, akaAuthAPIRequest, AkaAuthAPIResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary
    /* renamed from: w0 */
    public void mo4749w0() {
        SitRequestManager sitRequestManager = this.f14895a;
        if (sitRequestManager == null) {
            Log.m4654d("TMO-Agent", "Clear RamStorage failed");
        } else {
            sitRequestManager.m4748a();
        }
    }
}
