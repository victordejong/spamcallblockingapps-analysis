package com.criteo.publisher.p020a0;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* renamed from: com.criteo.publisher.a0.r */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/r.class */
public class C1930r {

    /* renamed from: a */
    public final SharedPreferences f2051a;

    public C1930r(@NonNull SharedPreferences sharedPreferences) {
        this.f2051a = sharedPreferences;
    }

    /* renamed from: a */
    public int m35997a(@NonNull String str, int i) {
        try {
            i = this.f2051a.getInt(str, i);
        } catch (ClassCastException e) {
            C1928p.m36001a((Throwable) new IllegalStateException("Expect an int type when reading " + str, e));
        }
        return i;
    }

    @Nullable
    /* renamed from: a */
    public String m35996a(@NonNull String str, @Nullable String str2) {
        try {
            str2 = this.f2051a.getString(str, str2);
        } catch (ClassCastException e) {
            C1928p.m36001a((Throwable) new IllegalStateException("Expected a String type when reading: " + str, e));
        }
        return str2;
    }

    /* renamed from: a */
    public boolean m35995a(@NonNull String str, boolean z) {
        try {
            z = this.f2051a.getBoolean(str, z);
        } catch (ClassCastException e) {
            C1928p.m36001a((Throwable) new IllegalStateException("Expect an boolean type when reading " + str, e));
        }
        return z;
    }
}
