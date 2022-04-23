package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.i;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c.class */
public abstract class c {

    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f6971a;

        /* renamed from: b  reason: collision with root package name */
        public final Context f6972b;

        /* renamed from: c  reason: collision with root package name */
        public j f6973c;

        public /* synthetic */ a(Context context, ah ahVar) {
            this.f6972b = context;
        }
    }

    public abstract g a(Activity activity, f fVar);

    public abstract i.a a(String str);

    public abstract void a(com.android.billingclient.api.a aVar, b bVar);

    public abstract void a(e eVar);

    public abstract void a(l lVar, m mVar);

    public abstract boolean a();

    public abstract void b();
}
