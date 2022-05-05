package com.criteo.publisher.p027t;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.p020a0.C1917h;
@RequiresApi(api = 17)
/* renamed from: com.criteo.publisher.t.s */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/s.class */
public class C2137s implements C1974i.AbstractC2000m0<AbstractC2135r> {
    @NonNull

    /* renamed from: a */
    public final Context f2430a;
    @NonNull

    /* renamed from: b */
    public final C2134q f2431b;
    @NonNull

    /* renamed from: c */
    public final C1917h f2432c;

    public C2137s(@NonNull Context context, @NonNull C2134q qVar, @NonNull C1917h hVar) {
        this.f2430a = context;
        this.f2431b = qVar;
        this.f2432c = hVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.criteo.publisher.C1974i.AbstractC2000m0
    @NonNull
    /* renamed from: a */
    public AbstractC2135r mo35616a() {
        return new C2113i(new C2126l(new C2129n(this.f2430a, this.f2432c, this.f2431b)), this.f2432c);
    }
}
