package com.truecaller.service;

import android.content.Context;
import android.content.Intent;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import p1727n3.p1807k.p1808a.AbstractServiceC26412a0;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p578p.C10480a;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/SyncPhoneBookService.class */
public class SyncPhoneBookService extends AbstractServiceC26412a0 {

    /* renamed from: com.truecaller.service.SyncPhoneBookService$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/SyncPhoneBookService$a.class */
    public static class C4470a {
    }

    /* renamed from: a */
    public static void m34744a(Context context, boolean z) {
        Intent intent = new Intent(context, SyncPhoneBookService.class);
        intent.putExtra("clear_existing", z);
        AbstractServiceC26431i.enqueueWork(context.getApplicationContext(), SyncPhoneBookService.class, (int) C2752R.C2754id.sync_phonebook_service_id, intent);
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    public void onHandleWork(Intent intent) {
        try {
            if (intent.getBooleanExtra("clear_existing", false)) {
                getContentResolver().delete(C17891a1.C17904m.m15552a(), "contact_source=2", null);
            }
            ((TrueApp) getApplicationContext()).mo10154s().mo12320k1().m14212e();
        } catch (RuntimeException e) {
            C10480a.m26057J1(e, "Error performing phone book sync");
        }
    }
}
