package com.criteo.publisher.p252k;

import android.content.SharedPreferences;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: com.criteo.publisher.k.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a.class */
public class C8368a {

    /* renamed from: a */
    public final SharedPreferences f30055a;

    /* renamed from: com.criteo.publisher.k.a$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a$a.class */
    public static final class C8369a {
        private C8369a() {
        }

        public /* synthetic */ C8369a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new C8369a(null);
    }

    public C8368a(SharedPreferences sharedPreferences) {
        C18524p.m3841c(sharedPreferences, "sharedPreferences");
        this.f30055a = sharedPreferences;
    }

    /* renamed from: a */
    public final boolean m25775a() {
        return this.f30055a.getBoolean("CRTO_ConsentGiven", false);
    }
}
