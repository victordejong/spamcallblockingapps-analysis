package com.crashlytics.android.core;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/UserMetaData.class */
public class UserMetaData {
    public static final UserMetaData EMPTY = new UserMetaData();
    public final String email;

    /* renamed from: id */
    public final String f3834id;
    public final String name;

    public UserMetaData() {
        this(null, null, null);
    }

    public UserMetaData(String str, String str2, String str3) {
        this.f3834id = str;
        this.name = str2;
        this.email = str3;
    }

    public boolean isEmpty() {
        return this.f3834id == null && this.name == null && this.email == null;
    }
}
