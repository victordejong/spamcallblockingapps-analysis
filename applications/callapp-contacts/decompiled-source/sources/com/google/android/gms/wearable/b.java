package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.tasks.h;
import com.google.android.gms.wearable.a;
import com.google.android.gms.wearable.p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/b.class */
public abstract class b extends f<p.a> {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/b$a.class */
    public interface a extends a.AbstractC0483a {
        @Override // com.google.android.gms.wearable.a.AbstractC0483a
        void a(c cVar);
    }

    public b(Activity activity, f.a aVar) {
        super(activity, (com.google.android.gms.common.api.a<a.d>) p.f, (a.d) null, aVar);
    }

    public b(Context context, f.a aVar) {
        super(context, p.f, (a.d) null, aVar);
    }

    public abstract h<Boolean> a(a aVar);

    public abstract h<Void> a(a aVar, String str);

    public abstract h<c> a(String str);
}
