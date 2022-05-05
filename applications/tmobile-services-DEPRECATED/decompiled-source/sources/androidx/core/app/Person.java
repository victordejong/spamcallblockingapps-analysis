package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
/* loaded from: classes-dex2jar.jar:androidx/core/app/Person.class */
public class Person {
    @Nullable

    /* renamed from: a */
    CharSequence f2959a;
    @Nullable

    /* renamed from: b */
    IconCompat f2960b;
    @Nullable

    /* renamed from: c */
    String f2961c;
    @Nullable

    /* renamed from: d */
    String f2962d;

    /* renamed from: e */
    boolean f2963e;

    /* renamed from: f */
    boolean f2964f;

    /* loaded from: classes-dex2jar.jar:androidx/core/app/Person$Builder.class */
    public static class Builder {
    }

    @Nullable
    /* renamed from: a */
    public IconCompat m19712a() {
        return this.f2960b;
    }

    @Nullable
    /* renamed from: b */
    public String m19711b() {
        return this.f2962d;
    }

    @Nullable
    /* renamed from: c */
    public CharSequence m19710c() {
        return this.f2959a;
    }

    @Nullable
    /* renamed from: d */
    public String m19709d() {
        return this.f2961c;
    }

    /* renamed from: e */
    public boolean m19708e() {
        return this.f2963e;
    }

    /* renamed from: f */
    public boolean m19707f() {
        return this.f2964f;
    }

    @NonNull
    @RequiresApi
    @RestrictTo
    /* renamed from: g */
    public android.app.Person m19706g() {
        return new Person.Builder().setName(m19710c()).setIcon(m19712a() != null ? m19712a().m19475t() : null).setUri(m19709d()).setKey(m19711b()).setBot(m19708e()).setImportant(m19707f()).build();
    }

    @NonNull
    /* renamed from: h */
    public Bundle m19705h() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f2959a);
        IconCompat iconCompat = this.f2960b;
        bundle.putBundle("icon", iconCompat != null ? iconCompat.m19476s() : null);
        bundle.putString("uri", this.f2961c);
        bundle.putString("key", this.f2962d);
        bundle.putBoolean("isBot", this.f2963e);
        bundle.putBoolean("isImportant", this.f2964f);
        return bundle;
    }
}
