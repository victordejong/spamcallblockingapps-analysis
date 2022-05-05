package com.asus.callguardhelper;

import android.content.ContentUris;
import android.net.Uri;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/a.class */
public final class a {

    /* renamed from: com.asus.callguardhelper.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/a$a.class */
    public interface AbstractC0069a {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2554a = Uri.parse("content://com.asus.callguard.provider" + File.separator + "cache_table");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/a$b.class */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2555a = Uri.parse("content://com.asus.callguard.provider" + File.separator + "tag_table");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/a$c.class */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2556a;

        /* renamed from: b  reason: collision with root package name */
        public static final Uri f2557b;
        public static final Uri c;
        public static final Uri d;
        public static final Uri e;

        static {
            Uri parse = Uri.parse("content://com.asus.callguard.provider" + File.separator + "user_data_statistics");
            f2556a = parse;
            f2557b = ContentUris.withAppendedId(parse, 31L);
            c = ContentUris.withAppendedId(f2556a, 32L);
            d = ContentUris.withAppendedId(f2556a, 33L);
            e = ContentUris.withAppendedId(f2556a, 34L);
        }
    }
}
