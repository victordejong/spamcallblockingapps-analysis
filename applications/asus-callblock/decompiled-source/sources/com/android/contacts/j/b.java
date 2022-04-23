package com.android.contacts.j;

import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<a> f1510a;

    /* renamed from: b  reason: collision with root package name */
    public long f1511b = Long.MAX_VALUE;
    public ArrayList<Integer> c;
    public int d;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f1512a;

        /* renamed from: b  reason: collision with root package name */
        public final long f1513b;
        public boolean c = false;
        public boolean d = false;
        public com.android.contacts.j.a e = null;
        public com.android.contacts.j.a f = null;
        public int g = -1;

        public a(long j, long j2) {
            this.f1512a = j;
            this.f1513b = j2;
        }

        public final void a(com.android.contacts.j.a aVar) {
            this.d = true;
            this.f = aVar;
        }
    }

    public final void a() {
        if (this.f1510a != null) {
            this.f1510a.clear();
            this.f1510a.trimToSize();
            this.f1510a = null;
        }
        if (this.c != null) {
            this.c.clear();
            this.c.trimToSize();
            this.c = null;
        }
    }
}
