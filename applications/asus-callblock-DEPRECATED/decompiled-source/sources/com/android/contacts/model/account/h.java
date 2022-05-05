package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.util.Log;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.model.account.d;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import com.asus.contacts.a;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import com.google.a.b.r;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/h.class */
public final class h extends d {
    private static final List<String> i = r.a("com.google.android.apps.plus");

    public h(Context context, String str) {
        this.f2000a = "com.google";
        this.c = null;
        this.d = str;
        try {
            t();
            i(context);
            u();
            j(context);
            g(context);
            f(context);
            e(context);
            h(context);
            k(context);
            l(context);
            m(context);
            n(context);
            String a2 = a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR);
            if (!a2.toLowerCase().startsWith("cn") && !a2.toLowerCase().startsWith("cta")) {
                v();
            }
            w();
            b a3 = a(new b("vnd.android.cursor.item/relation", 2131756055, 160, 2131427673));
            a3.h = new d.t();
            a3.j = new d.v(CoverUtils.CoverData.COVER_URI);
            a3.l = CoverUtils.CoverData.COVER_TYPE;
            a3.n = new ArrayList();
            a3.n.add(e(1));
            a3.n.add(e(2));
            a3.n.add(e(3));
            a3.n.add(e(4));
            a3.n.add(e(5));
            a3.n.add(e(6));
            a3.n.add(e(7));
            a3.n.add(e(8));
            a3.n.add(e(9));
            a3.n.add(e(10));
            a3.n.add(e(11));
            a3.n.add(e(12));
            a3.n.add(e(13));
            a3.n.add(e(14));
            List<a.d> list = a3.n;
            a.d e = e(0);
            e.c = true;
            e.e = CoverUtils.CoverData.USER_SET;
            list.add(e);
            a3.p = new ContentValues();
            a3.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 14);
            a3.o = new ArrayList();
            a3.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131756055, 8289));
            b a4 = a(new b("vnd.android.cursor.item/contact_event", 2131755615, 150, 2131427542));
            a4.h = new d.C0051d();
            a4.j = new d.v(CoverUtils.CoverData.COVER_URI);
            a4.l = CoverUtils.CoverData.COVER_TYPE;
            a4.n = new ArrayList();
            a4.r = DateUtils.NO_YEAR_DATE_FORMAT;
            a4.s = DateUtils.FULL_DATE_FORMAT;
            List<a.d> list2 = a4.n;
            a.d a5 = a(3, true);
            a5.d = 1;
            list2.add(a5);
            a4.n.add(a(1, false));
            a4.n.add(a(2, false));
            List<a.d> list3 = a4.n;
            a.d a6 = a(0, false);
            a6.c = true;
            a6.e = CoverUtils.CoverData.USER_SET;
            list3.add(a6);
            a4.p = new ContentValues();
            a4.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 3);
            a4.o = new ArrayList();
            a4.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755615, 1));
            this.h = true;
        } catch (a.C0050a e2) {
            Log.e("GoogleAccountType", "Problem building account type", e2);
        }
    }

    @Override // com.android.contacts.model.account.a
    public final boolean d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b f(Context context) {
        b f = super.f(context);
        f.l = CoverUtils.CoverData.COVER_TYPE;
        f.n = new ArrayList();
        f.n.add(b(1));
        f.n.add(b(2));
        f.n.add(b(3));
        List<a.d> list = f.n;
        a.d b2 = b(0);
        b2.c = true;
        b2.e = CoverUtils.CoverData.USER_SET;
        list.add(b2);
        f.o = new ArrayList();
        f.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755601, 33));
        return f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b g(Context context) {
        b g = super.g(context);
        g.l = CoverUtils.CoverData.COVER_TYPE;
        g.n = new ArrayList();
        g.n.add(a(2));
        g.n.add(a(3));
        g.n.add(a(1));
        g.n.add(a(12));
        List<a.d> list = g.n;
        a.d a2 = a(4);
        a2.c = true;
        list.add(a2);
        List<a.d> list2 = g.n;
        a.d a3 = a(5);
        a3.c = true;
        list2.add(a3);
        List<a.d> list3 = g.n;
        a.d a4 = a(6);
        a4.c = true;
        list3.add(a4);
        g.n.add(a(7));
        List<a.d> list4 = g.n;
        a.d a5 = a(0);
        a5.c = true;
        a5.e = CoverUtils.CoverData.USER_SET;
        list4.add(a5);
        List<a.d> list5 = g.n;
        a.d s = s();
        s.c = true;
        s.e = CoverUtils.CoverData.USER_SET;
        list5.add(s);
        g.o = new ArrayList();
        g.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755945, 3));
        return g;
    }

    @Override // com.android.contacts.model.account.a
    public final String h() {
        return "com.google.android.syncadapters.contacts.SyncHighResPhotoIntentService";
    }

    @Override // com.android.contacts.model.account.a
    public final String i() {
        return "com.google.android.syncadapters.contacts";
    }

    @Override // com.android.contacts.model.account.a
    public final List<String> p() {
        return i;
    }

    @Override // com.android.contacts.model.account.d, com.android.contacts.model.account.a
    public final boolean q() {
        return true;
    }
}
