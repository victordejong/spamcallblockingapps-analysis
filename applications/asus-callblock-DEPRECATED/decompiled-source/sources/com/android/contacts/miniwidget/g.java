package com.android.contacts.miniwidget;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    int f1985a;

    /* renamed from: b  reason: collision with root package name */
    String f1986b;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public g g;
    public long h;
    private Context i;

    public g(Context context, int i, String str) {
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = null;
        this.i = context;
        this.f1985a = i;
        if (str != null) {
            this.f1986b = str;
        } else {
            this.f1986b = BuildConfig.FLAVOR;
        }
        this.c = false;
    }

    public g(Context context, String str, long j) {
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = null;
        this.i = context;
        this.f1985a = 0;
        if (str != null) {
            this.f1986b = str;
        } else {
            this.f1986b = BuildConfig.FLAVOR;
        }
        this.c = false;
        this.h = j;
    }

    public final Intent a(long j) {
        Intent intent = new Intent();
        switch (this.f1985a) {
            case 0:
                this.h = j;
                intent.setAction("android.intent.action.CALL");
                intent.setData(Uri.parse("tel:" + this.f1986b));
                intent.putExtra("com.android.phone.FromAsusDialer", true);
                intent.putExtra("com.android.phone.AsusDialContactId", this.h);
                break;
            case 1:
                intent.setAction("android.intent.action.SENDTO");
                intent.setData(Uri.parse("smsto:" + this.f1986b));
                break;
            case 2:
                intent.setAction("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:" + this.f1986b));
                break;
            case 6:
                intent.setAction("android.intent.action.VIEW");
                intent.setData(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.parseLong(this.f1986b)));
                break;
            case 7:
                intent.setClass(this.i, SetDefaultActionActivity.class);
                Bundle bundle = new Bundle();
                bundle.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, Long.parseLong(this.f1986b));
                intent.putExtras(bundle);
                intent.setAction(String.valueOf(System.currentTimeMillis()));
                break;
        }
        return intent;
    }

    public final String a() {
        String str = null;
        switch (this.f1985a) {
            case p.POSITION_UNCHANGED /* -1 */:
                str = this.i.getString(2131755908);
                break;
            case 0:
                str = this.i.getString(2131755233);
                break;
            case 1:
                str = this.i.getString(2131755877);
                break;
            case 2:
                str = this.i.getString(2131756092);
                break;
            case 3:
            case 4:
            case 5:
                break;
            case 6:
                str = this.i.getString(2131756456);
                break;
            case 7:
                str = this.i.getString(2131756102);
                break;
            default:
                str = null;
                break;
        }
        return str;
    }

    public final boolean a(g gVar) {
        boolean z = true;
        if (!(gVar.f1985a == this.f1985a) || !gVar.f1986b.equals(this.f1986b)) {
            z = false;
        }
        return z;
    }

    public final String b() {
        return (this.f1985a == 7 || this.f1985a == -1 || this.f1985a == 6) ? BuildConfig.FLAVOR : this.f1986b;
    }
}
