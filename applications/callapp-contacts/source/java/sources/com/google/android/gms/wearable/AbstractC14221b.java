package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.wearable.AbstractC14209a;
import com.google.android.gms.wearable.C14363p;
/* renamed from: com.google.android.gms.wearable.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/b.class */
public abstract class AbstractC14221b extends AbstractC11823f<C14363p.C14364a> {

    /* renamed from: com.google.android.gms.wearable.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/b$a.class */
    public interface AbstractC14222a extends AbstractC14209a.AbstractC14210a {
        @Override // com.google.android.gms.wearable.AbstractC14209a.AbstractC14210a
        /* renamed from: a */
        void mo11363a(AbstractC14223c abstractC14223c);
    }

    public AbstractC14221b(Activity activity, AbstractC11823f.C11824a c11824a) {
        super(activity, (C11808a<C11808a.AbstractC11812d>) C14363p.f52336f, (C11808a.AbstractC11812d) null, c11824a);
    }

    public AbstractC14221b(Context context, AbstractC11823f.C11824a c11824a) {
        super(context, C14363p.f52336f, (C11808a.AbstractC11812d) null, c11824a);
    }

    /* renamed from: a */
    public abstract AbstractC14185h<Boolean> mo11438a(AbstractC14222a abstractC14222a);

    /* renamed from: a */
    public abstract AbstractC14185h<Void> mo11437a(AbstractC14222a abstractC14222a, String str);

    /* renamed from: a */
    public abstract AbstractC14185h<AbstractC14223c> mo11436a(String str);
}
