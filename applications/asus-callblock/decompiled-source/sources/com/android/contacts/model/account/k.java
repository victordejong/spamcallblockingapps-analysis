package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.util.Log;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.model.account.d;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.CoverUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/k.class */
public final class k extends d {
    boolean i;
    boolean j;
    boolean k;

    public k(Context context, String str, boolean z) {
        int i;
        boolean z2 = true;
        this.i = false;
        this.j = false;
        this.k = false;
        this.f2000a = str;
        this.c = null;
        this.d = this.c;
        if (!z) {
            this.e = 2131756143;
            this.f = 2131165294;
            i = 1;
        } else if (str.equals("asus.local.simcard2")) {
            this.e = 2131756135;
            this.f = 2131165293;
            i = 2;
        } else {
            this.e = 2131756134;
            this.f = 2131165292;
            i = 1;
        }
        e a2 = e.a(context);
        this.i = a2.a(i, 2) > 0;
        this.k = a2.a(i, 3) > 0;
        if (a2.a(i, 4) <= 0) {
            z2 = false;
        }
        this.j = z2;
        try {
            t();
            g(context);
            if (this.i) {
                f(context);
            }
            if (this.j) {
                j(context);
            }
        } catch (a.C0050a e) {
            Log.e("SimCardAccountType", "Problem building account type", e);
        }
    }

    public k(String str) {
        this.i = false;
        this.j = false;
        this.k = false;
        this.f2000a = str;
        this.c = null;
        this.d = this.c;
        this.h = true;
    }

    public final void a(String str, boolean z, Context context) {
        int i;
        boolean z2 = true;
        if (!z) {
            this.e = 2131756143;
            this.f = 2131165294;
            i = 1;
        } else if (str.equals("SIM2")) {
            this.e = 2131756135;
            this.f = 2131165293;
            i = 2;
        } else {
            this.e = 2131756134;
            this.f = 2131165292;
            i = 1;
        }
        e a2 = e.a(context);
        this.i = a2.a(i, 2) > 0;
        this.k = a2.a(i, 3) > 0;
        if (a2.a(i, 4) <= 0) {
            z2 = false;
        }
        this.j = z2;
        try {
            t();
            g(context);
            if (this.i) {
                f(context);
            }
            if (this.j) {
                j(context);
            }
        } catch (a.C0050a e) {
            Log.e("SimCardAccountType", "Problem building account type", e);
        }
        Log.d("SimCardAccountType", "setAccountName accountName:" + str + " isMultiSim:" + z);
        Log.d("SimCardAccountType", "setAccountName isSupportEmail:" + this.i + " isSupportAddtionNumber:" + this.k + " isSupportSecondName:" + this.j);
    }

    @Override // com.android.contacts.model.account.a
    public final boolean d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b e(Context context) {
        b e = super.e(context);
        boolean equals = Locale.JAPANESE.getLanguage().equals(Locale.getDefault().getLanguage());
        e.l = CoverUtils.CoverData.COVER_TYPE;
        e.n = new ArrayList();
        List<a.d> list = e.n;
        a.d c = c(2);
        c.d = 1;
        list.add(c);
        List<a.d> list2 = e.n;
        a.d c2 = c(1);
        c2.d = 1;
        list2.add(c2);
        List<a.d> list3 = e.n;
        a.d c3 = c(3);
        c3.d = 1;
        list3.add(c3);
        e.o = new ArrayList();
        if (equals) {
            List<a.c> list4 = e.o;
            a.c cVar = new a.c("data10", 2131755960, 139377);
            cVar.e = true;
            list4.add(cVar);
            e.o.add(new a.c("data9", 2131755963, 139377));
            e.o.add(new a.c("data8", 2131755964, 139377));
            e.o.add(new a.c("data7", 2131755959, 139377));
            e.o.add(new a.c("data4", 2131755965, 139377));
        } else {
            e.o.add(new a.c("data4", 2131755965, 139377));
            e.o.add(new a.c("data7", 2131755959, 139377));
            e.o.add(new a.c("data8", 2131755964, 139377));
            e.o.add(new a.c("data9", 2131755963, 139377));
            List<a.c> list5 = e.o;
            a.c cVar2 = new a.c("data10", 2131755960, 139377);
            cVar2.e = true;
            list5.add(cVar2);
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b f(Context context) {
        b a2 = a(new b("vnd.android.cursor.item/email_v2", 2131755601, 15, 2131427673));
        a2.h = new d.b();
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.l = CoverUtils.CoverData.COVER_TYPE;
        a2.m = 1;
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755601, 33));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b g(Context context) {
        b a2 = a(new b("vnd.android.cursor.item/phone_v2", 2131755945, 10, 2131427673));
        a2.d = 2131165345;
        a2.e = 2131756154;
        a2.h = new d.p();
        a2.i = new d.o();
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        if (this.k) {
            a2.m = 2;
        } else {
            a2.m = 1;
        }
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755945, 3));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b i(Context context) {
        b a2 = a(new b("#displayName", 2131755859, -1, 2131427673));
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755863, 8289));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b j(Context context) {
        b a2 = a(new b("vnd.android.cursor.item/nickname", 2131755884, 115, 2131427673));
        a2.m = 1;
        a2.h = new d.v(2131755884);
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.p = new ContentValues();
        a2.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 1);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755884, 8289));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b l(Context context) {
        b l = super.l(context);
        l.m = 1;
        l.o = new ArrayList();
        l.o.add(new a.c("data15", -1, -1));
        return l;
    }

    @Override // com.android.contacts.model.account.d, com.android.contacts.model.account.a
    public final boolean q() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b t() {
        b a2 = a(new b("vnd.android.cursor.item/name", 2131755859, -1, 2131427672));
        a2.h = new d.v(2131755859);
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755662, 8289));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b u() {
        b a2 = a(new b("#phoneticName", 2131755864, -1, 2131427615));
        a2.h = new d.v(2131755859);
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.m = 1;
        a2.o = new ArrayList();
        a2.o.add(new a.c("data9", 2131755865, 193));
        a2.o.add(new a.c("data7", 2131755866, 193));
        return a2;
    }
}
