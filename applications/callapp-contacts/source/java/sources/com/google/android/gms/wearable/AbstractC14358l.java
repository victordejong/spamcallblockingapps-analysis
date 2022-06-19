package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.wearable.AbstractC14355k;
import com.google.android.gms.wearable.C14363p;
/* renamed from: com.google.android.gms.wearable.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/l.class */
public abstract class AbstractC14358l extends AbstractC11823f<C14363p.C14364a> {

    /* renamed from: com.google.android.gms.wearable.l$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/l$a.class */
    public interface AbstractC14359a extends AbstractC14355k.AbstractC14356a {
    }

    public AbstractC14358l(Activity activity, AbstractC11823f.C11824a c11824a) {
        super(activity, (C11808a<C11808a.AbstractC11812d>) C14363p.f52336f, (C11808a.AbstractC11812d) null, c11824a);
    }

    public AbstractC14358l(Context context, AbstractC11823f.C11824a c11824a) {
        super(context, C14363p.f52336f, (C11808a.AbstractC11812d) null, c11824a);
    }

    /* renamed from: a */
    public abstract AbstractC14185h<Void> mo11346a(AbstractC14359a abstractC14359a);

    /* renamed from: a */
    public abstract AbstractC14185h<Integer> mo11345a(String str, String str2, byte[] bArr);

    /* renamed from: b */
    public abstract AbstractC14185h<Boolean> mo11344b(AbstractC14359a abstractC14359a);
}
