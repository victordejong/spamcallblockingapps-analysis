package com.google.firebase.components;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zzb.class */
final /* synthetic */ class zzb implements ComponentFactory {
    private final Object zza;

    private zzb(Object obj) {
        this.zza = obj;
    }

    public static ComponentFactory zza(Object obj) {
        return new zzb(obj);
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return Component.zzb(this.zza);
    }
}
