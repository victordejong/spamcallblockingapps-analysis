package com.android.contacts.simcardmanage;

import android.accounts.Account;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.net.Uri;
import com.android.contacts.activities.ContactDetailCallogActivity;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/d.class */
public interface d {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f2157a = {"sim_type", "total_number_sim", "total_number_email", "total_number_additionalnumber", "total_number_secondname", "length_name", "length_number", "length_email", "length_additionalnumber", "length_secondname", "editmode"};

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f2158b = {"_id", ContactDetailCallogActivity.EXTRA_NAME, "number", "emails", "secondname", "additionalnumber", "recordnumber"};
    public static final String[] c = {"_id", "tag", "number", "emails", "tag1", "number1", "recordnumber"};
    public static final Object d = new Object();

    int a(int i, int i2);

    int a(SimCardContact simCardContact, SimCardContact simCardContact2);

    int a(String str, int i, int i2);

    int a(List<SimCardContact> list, int i);

    Uri a(SimCardContact simCardContact);

    Uri a(SimCardContact simCardContact, boolean z);

    SimCardContact a(long j);

    SimCardContact a(Uri uri);

    SimCardContact a(String str);

    String a(int i, String str);

    void a();

    void a(int i, int i2, int i3);

    void a(int i, long j);

    void a(int i, boolean z);

    boolean a(int i);

    ContentProviderResult[] a(int i, List<SimCardContact> list, Account account, int i2);

    int b(int i, int i2);

    int b(SimCardContact simCardContact);

    SimCardContact b(int i, long j);

    SimCardContact b(long j);

    String b(int i, String str);

    void b();

    void b(int i);

    void b(int i, boolean z);

    int c(int i, long j);

    ContentValues c(long j);

    void c(int i);

    void c(int i, boolean z);

    boolean c(int i, String str);

    SimCardContact d(long j);

    void d(int i, boolean z);

    boolean d(int i);

    boolean e(int i);

    List<SimCardContact> f(int i);
}
