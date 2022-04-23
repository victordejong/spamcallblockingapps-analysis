package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ai.class */
public final class ai extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4278b = h.LANGUAGE.toString();

    public ai() {
        super(f4278b, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a f;
        Locale locale = Locale.getDefault();
        if (locale == null) {
            f = cn.f();
        } else {
            String language = locale.getLanguage();
            f = language == null ? cn.f() : cn.a((Object) language.toLowerCase());
        }
        return f;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final /* bridge */ /* synthetic */ String b() {
        return super.b();
    }

    @Override // com.google.android.gms.tagmanager.q
    public final /* bridge */ /* synthetic */ Set c() {
        return super.c();
    }
}
