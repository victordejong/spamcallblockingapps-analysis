package com.android.contacts;

import android.net.Uri;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public static final Uri f608b;
    public static final Uri c;
    public static final Uri f;
    public static final Uri g;
    public static final Uri h;
    public static final Uri i;
    public static final Uri j;
    public static final Uri k;

    /* renamed from: a  reason: collision with root package name */
    public static final Boolean f607a = true;
    public static String d = "asus_icc_support";
    public static String e = "#databasesdump#";

    /* loaded from: classes-dex2jar.jar:com/android/contacts/b$a.class */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final String f611a = b.a();

        /* renamed from: b  reason: collision with root package name */
        public static final String f612b;
        public static final String c;
        public static final String d;

        static {
            f612b = PhoneCapabilityTester.isVerizon() ? "com.verizon.Phone" : "asus.local.phone";
            c = PhoneCapabilityTester.IsAsusDevice() ? "Sim card" : "SIM1";
            d = PhoneCapabilityTester.IsAsusDevice() ? "asus.local.simcard" : "com.asus.sim";
        }
    }

    static {
        Uri parse = Uri.parse("content://com.android.contacts");
        f608b = parse;
        c = Uri.withAppendedPath(parse, "presence_asus_contacts");
        f = Uri.withAppendedPath(f608b, "contacts_include_sim_card");
        g = Uri.withAppendedPath(f608b, "groups_asus");
        h = Uri.withAppendedPath(f608b, "groups_summary_asus");
        i = Uri.withAppendedPath(f608b, "contacts_update_photo");
        j = Uri.withAppendedPath(f608b, "profile/contacts_update_photo");
        k = Uri.withAppendedPath(f608b, "contacts_update_defaultbirthday");
    }

    public static String a() {
        return PhoneCapabilityTester.isVerizon() ? PhoneCapabilityTester.isVerizonPad() ? "Tablet" : "Phone" : "Device";
    }
}
