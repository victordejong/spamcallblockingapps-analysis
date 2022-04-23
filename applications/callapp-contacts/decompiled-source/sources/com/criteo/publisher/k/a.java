package com.criteo.publisher.k;

import android.content.SharedPreferences;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final SharedPreferences f17392a;

    /* renamed from: com.criteo.publisher.k.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a$a.class */
    public static final class C0345a {
        private C0345a() {
        }

        public /* synthetic */ C0345a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new C0345a(null);
    }

    public a(SharedPreferences sharedPreferences) {
        p.c(sharedPreferences, "sharedPreferences");
        this.f17392a = sharedPreferences;
    }

    public final boolean a() {
        return this.f17392a.getBoolean("CRTO_ConsentGiven", false);
    }
}
