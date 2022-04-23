package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.tasks.h;
import com.google.android.gms.wearable.k;
import com.google.android.gms.wearable.p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/l.class */
public abstract class l extends f<p.a> {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/l$a.class */
    public interface a extends k.a {
    }

    public l(Activity activity, f.a aVar) {
        super(activity, (com.google.android.gms.common.api.a<a.d>) p.f, (a.d) null, aVar);
    }

    public l(Context context, f.a aVar) {
        super(context, p.f, (a.d) null, aVar);
    }

    public abstract h<Void> a(a aVar);

    public abstract h<Integer> a(String str, String str2, byte[] bArr);

    public abstract h<Boolean> b(a aVar);
}
