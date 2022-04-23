package com.google.android.gms.clearcut;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.ap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a.g<ap> f3920a = new a.g<>();

    /* renamed from: b  reason: collision with root package name */
    public static final a.b<ap, Object> f3921b = new a.b<ap, Object>() { // from class: com.google.android.gms.clearcut.a.1
        @Override // com.google.android.gms.common.api.a.b
        public final /* synthetic */ ap a(Context context, Looper looper, n nVar, Object obj, b.AbstractC0112b bVar, b.c cVar) {
            return new ap(context, looper, nVar, bVar, cVar);
        }
    };
    public static final com.google.android.gms.common.api.a<Object> c = new com.google.android.gms.common.api.a<>("ClearcutLogger.API", f3921b, f3920a);
    public static final b d = new ao();

    /* renamed from: com.google.android.gms.clearcut.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/a$a.class */
    public interface AbstractC0109a {
    }
}
