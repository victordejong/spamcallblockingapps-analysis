package com.android.contacts.k;

import android.database.Cursor;
import android.net.Uri;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/k/a.class */
public interface a {

    /* renamed from: com.android.contacts.k.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/k/a$a.class */
    public static final class C0045a {

        /* renamed from: a  reason: collision with root package name */
        public final String f1580a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1581b;
        public final int c;
        public final int d;
        public final Uri e;

        public C0045a(String str, int i, int i2, int i3, Uri uri) {
            this.f1580a = str;
            this.f1581b = i;
            this.c = i2;
            this.d = i3;
            this.e = uri;
        }

        public final boolean a() {
            return this.f1581b != -1;
        }

        public final boolean b() {
            return this.c != -1;
        }
    }

    List<C0045a> a(Cursor cursor);

    int b(Cursor cursor);
}
