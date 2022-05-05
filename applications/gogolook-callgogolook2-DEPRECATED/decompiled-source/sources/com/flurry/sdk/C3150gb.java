package com.flurry.sdk;

import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import com.flurry.sdk.C3115fu;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.gb */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gb.class */
public final class C3150gb implements AbstractC3140fy {

    /* renamed from: b */
    public static final Map<String, AbstractC3140fy> f5152b;

    /* renamed from: com.flurry.sdk.gb$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gb$a.class */
    public static final class C3151a implements AbstractC3140fy {

        /* renamed from: a */
        public AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a f5153a;

        public C3151a() {
            this.f5153a = new AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a(this) { // from class: com.flurry.sdk.gb.a.1
                @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
                /* renamed from: a */
                public final void mo32972a() {
                    C3151a.m32973a();
                }

                @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
                /* renamed from: b */
                public final void mo32971b() {
                    C3151a.m32973a();
                }

                @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
                /* renamed from: c */
                public final void mo32970c() {
                    C3151a.m32973a();
                }
            };
        }

        public /* synthetic */ C3151a(byte b) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ void m32973a() {
            C3115fu fuVar = new C3115fu();
            fuVar.f5049d = C3115fu.EnumC3116a.f5051b;
            C3345jm.m32636a().m32635a(fuVar);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("FLURRY", new C3151a((byte) 0));
        f5152b = Collections.unmodifiableMap(hashMap);
    }
}
