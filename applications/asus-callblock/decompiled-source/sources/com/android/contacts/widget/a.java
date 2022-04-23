package com.android.contacts.widget;

import com.android.contacts.b;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/a.class */
public final class a implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    final int f2207a;

    /* renamed from: b  reason: collision with root package name */
    public final com.android.contacts.model.account.a f2208b;
    public final String c;

    public a(com.android.contacts.model.account.a aVar, String str) {
        this.f2208b = aVar;
        if ("com.google".equals(this.f2208b.f2000a) && this.f2208b.f2001b == null) {
            this.f2207a = 4;
        } else if (b.a.f612b.equals(this.f2208b.f2000a)) {
            this.f2207a = 3;
        } else if ("com.android.exchange".equals(this.f2208b.f2000a)) {
            this.f2207a = 2;
        } else {
            this.f2207a = 1;
        }
        this.c = str;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f2207a - ((a) obj).f2207a;
    }
}
