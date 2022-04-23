package com.google.android.gms.measurement.a;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.ak;
import com.google.android.gms.measurement.internal.fu;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final ak f29391a;

    /* renamed from: com.google.android.gms.measurement.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/a/a$a.class */
    public interface AbstractC0481a extends fu {
    }

    public a(ak akVar) {
        this.f29391a = akVar;
    }

    public final int a(String str) {
        return this.f29391a.d(str);
    }

    public final List<Bundle> a(String str, String str2) {
        return this.f29391a.a(str, str2);
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        return this.f29391a.a(str, str2, z);
    }

    public final void a(Bundle bundle) {
        this.f29391a.a(bundle);
    }

    public final void a(AbstractC0481a aVar) {
        this.f29391a.a(aVar);
    }

    public final void a(String str, String str2, Bundle bundle) {
        this.f29391a.a(str, str2, bundle);
    }

    public final void a(String str, String str2, Object obj) {
        this.f29391a.a(str, str2, obj, true);
    }

    public final void b(String str, String str2, Bundle bundle) {
        this.f29391a.b(str, str2, bundle);
    }
}
