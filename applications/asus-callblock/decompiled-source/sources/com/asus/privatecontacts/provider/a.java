package com.asus.privatecontacts.provider;

import android.net.Uri;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/a.class */
public final class a {

    /* renamed from: com.asus.privatecontacts.provider.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/a$a.class */
    public interface AbstractC0087a {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f3061a = Uri.parse("content://com.asus.privatecontacts.provider" + File.separator + "calls");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/a$b.class */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f3062a = Uri.parse("content://com.asus.privatecontacts.provider" + File.separator + "data");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/a$c.class */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f3063a = Uri.parse("content://com.asus.privatecontacts.provider" + File.separator + "phone_lookup");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/a$d.class */
    public interface d {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f3064a = Uri.parse("content://com.asus.privatecontacts.provider" + File.separator + "raw_contacts");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/a$e.class */
    public interface e {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f3065a;

        /* renamed from: b  reason: collision with root package name */
        public static final Uri f3066b;
        public static final Uri c;
        public static final Uri d;

        static {
            Uri parse = Uri.parse("content://com.asus.privatecontacts.provider" + File.separator + "private_settings");
            f3065a = parse;
            f3066b = Uri.withAppendedPath(parse, "key_always_block_calls");
            c = Uri.withAppendedPath(f3065a, "key_hide_caller_number");
            d = Uri.withAppendedPath(f3065a, "key_custom_profile_switch");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/a$f.class */
    public interface f {

        /* renamed from: a  reason: collision with root package name */
        public static final String f3067a = "raw_contacts" + File.separator + "list";

        /* renamed from: b  reason: collision with root package name */
        public static final String f3068b = "raw_contacts" + File.separator + "delete";
        public static final String c = "raw_contacts" + File.separator + "phones";
        public static final String d = "private_settings" + File.separator + "key_always_block_calls";
        public static final String e = "private_settings" + File.separator + "key_hide_caller_number";
        public static final String f = "private_settings" + File.separator + "key_custom_profile_switch";
    }
}
