package com.google.firebase.components;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.components.Component;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inject.Provider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zzf.class */
public final class zzf extends zza {
    private final List<Component<?>> zza;
    private final Map<Class<?>, zzj<?>> zzb = new HashMap();
    private final zzh zzc;

    public zzf(Executor executor, Iterable<ComponentRegistrar> iterable, Component<?>... componentArr) {
        this.zzc = new zzh(executor);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Component.m323of(this.zzc, zzh.class, Subscriber.class, Publisher.class));
        for (ComponentRegistrar componentRegistrar : iterable) {
            arrayList.addAll(componentRegistrar.getComponents());
        }
        Collections.addAll(arrayList, componentArr);
        this.zza = Collections.unmodifiableList(Component.C12681.zza(arrayList));
        for (Component<?> component : this.zza) {
            zza(component);
        }
        zza();
    }

    private void zza() {
        for (Component<?> component : this.zza) {
            for (Dependency dependency : component.zzb()) {
                if (dependency.zzb() && !this.zzb.containsKey(dependency.zza())) {
                    throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", component, dependency.zza()));
                }
            }
        }
    }

    private <T> void zza(Component<T> component) {
        zzj<?> zzjVar = new zzj<>(component.zzc(), new zzl(component, this));
        for (Class<? super T> cls : component.zza()) {
            this.zzb.put(cls, zzjVar);
        }
    }

    @Override // com.google.firebase.components.zza, com.google.firebase.components.ComponentContainer
    public final /* bridge */ /* synthetic */ Object get(Class cls) {
        return super.get(cls);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final <T> Provider<T> getProvider(Class<T> cls) {
        Preconditions.checkNotNull(cls, "Null interface requested.");
        return this.zzb.get(cls);
    }

    public final void zza(boolean z) {
        for (Component<?> component : this.zza) {
            if (component.zze() || (component.zzf() && z)) {
                get(component.zza().iterator().next());
            }
        }
        this.zzc.zza();
    }
}
