package com.google.firebase.components;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/Component.class */
public final class Component<T> {
    private final Set<Class<? super T>> zza;
    private final Set<Dependency> zzb;
    private final int zzc;
    private final ComponentFactory<T> zzd;
    private final Set<Class<?>> zze;

    /* renamed from: com.google.firebase.components.Component$1 */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/Component$1.class */
    public static /* synthetic */ class C12681<T> {
        private final T zza;
        private final zze<T> zzb;

        @VisibleForTesting
        private C12681(T t, zze<T> zzeVar) {
            this.zza = t;
            this.zzb = zzeVar;
        }

        public static C12681<Context> zza(Context context) {
            return new C12681<>(context, new zzd((byte) 0));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static List<Component<?>> zza(List<Component<?>> list) {
            zzg zzgVar;
            HashMap hashMap = new HashMap(list.size());
            for (Component<?> component : list) {
                zzg zzgVar2 = new zzg(component);
                for (Class<? super Object> cls : component.zza()) {
                    if (hashMap.put(cls, zzgVar2) != null) {
                        throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                    }
                }
            }
            for (zzg zzgVar3 : hashMap.values()) {
                for (Dependency dependency : zzgVar3.zzb().zzb()) {
                    if (dependency.zzc() && (zzgVar = (zzg) hashMap.get(dependency.zza())) != null) {
                        zzgVar3.zza(zzgVar);
                        zzgVar.zzb(zzgVar3);
                    }
                }
            }
            HashSet<zzg> hashSet = new HashSet(hashMap.values());
            Set<zzg> zza = zza(hashSet);
            ArrayList arrayList = new ArrayList();
            while (!zza.isEmpty()) {
                zzg next = zza.iterator().next();
                zza.remove(next);
                arrayList.add(next.zzb());
                for (zzg zzgVar4 : next.zza()) {
                    zzgVar4.zzc(next);
                    if (zzgVar4.zzc()) {
                        zza.add(zzgVar4);
                    }
                }
            }
            if (arrayList.size() == list.size()) {
                Collections.reverse(arrayList);
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList();
            for (zzg zzgVar5 : hashSet) {
                if (!zzgVar5.zzc() && !zzgVar5.zzd()) {
                    arrayList2.add(zzgVar5.zzb());
                }
            }
            throw new DependencyCycleException(arrayList2);
        }

        private static Set<zzg> zza(Set<zzg> set) {
            HashSet hashSet = new HashSet();
            for (zzg zzgVar : set) {
                if (zzgVar.zzc()) {
                    hashSet.add(zzgVar);
                }
            }
            return hashSet;
        }

        private static List<ComponentRegistrar> zzb(List<String> list) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                try {
                    Class<?> cls = Class.forName(str);
                    if (!ComponentRegistrar.class.isAssignableFrom(cls)) {
                        Log.w("ComponentDiscovery", String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
                    } else {
                        arrayList.add((ComponentRegistrar) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    }
                } catch (ClassNotFoundException e) {
                    Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str), e);
                } catch (IllegalAccessException e2) {
                    Log.w("ComponentDiscovery", String.format("Could not instantiate %s.", str), e2);
                } catch (InstantiationException e3) {
                    Log.w("ComponentDiscovery", String.format("Could not instantiate %s.", str), e3);
                } catch (NoSuchMethodException e4) {
                    Log.w("ComponentDiscovery", String.format("Could not instantiate %s", str), e4);
                } catch (InvocationTargetException e5) {
                    Log.w("ComponentDiscovery", String.format("Could not instantiate %s", str), e5);
                }
            }
            return arrayList;
        }

        public List<ComponentRegistrar> zza() {
            return zzb(this.zzb.zza(this.zza));
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/Component$Builder.class */
    public static class Builder<T> {
        private final Set<Class<? super T>> zza;
        private final Set<Dependency> zzb;
        private int zzc;
        private ComponentFactory<T> zzd;
        private Set<Class<?>> zze;

        private Builder(Class<T> cls, Class<? super T>... clsArr) {
            this.zza = new HashSet();
            this.zzb = new HashSet();
            this.zzc = 0;
            this.zze = new HashSet();
            Preconditions.checkNotNull(cls, "Null interface");
            this.zza.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                Preconditions.checkNotNull(cls2, "Null interface");
            }
            Collections.addAll(this.zza, clsArr);
        }

        /* synthetic */ Builder(Class cls, Class[] clsArr, byte b) {
            this(cls, clsArr);
        }

        private Builder<T> zza(int i) {
            Preconditions.checkState(this.zzc == 0, "Instantiation type has already been set.");
            this.zzc = i;
            return this;
        }

        @KeepForSdk
        public Builder<T> add(Dependency dependency) {
            Preconditions.checkNotNull(dependency, "Null dependency");
            Preconditions.checkArgument(!this.zza.contains(dependency.zza()), "Components are not allowed to depend on interfaces they themselves provide.");
            this.zzb.add(dependency);
            return this;
        }

        @KeepForSdk
        public Builder<T> alwaysEager() {
            return zza(1);
        }

        @KeepForSdk
        public Component<T> build() {
            Preconditions.checkState(this.zzd != null, "Missing required property: factory.");
            return new Component<>(new HashSet(this.zza), new HashSet(this.zzb), this.zzc, this.zzd, this.zze, (byte) 0);
        }

        @KeepForSdk
        public Builder<T> eagerInDefaultApp() {
            return zza(2);
        }

        @KeepForSdk
        public Builder<T> factory(ComponentFactory<T> componentFactory) {
            this.zzd = (ComponentFactory) Preconditions.checkNotNull(componentFactory, "Null factory");
            return this;
        }

        @KeepForSdk
        public Builder<T> publishes(Class<?> cls) {
            this.zze.add(cls);
            return this;
        }
    }

    private Component(Set<Class<? super T>> set, Set<Dependency> set2, int i, ComponentFactory<T> componentFactory, Set<Class<?>> set3) {
        this.zza = Collections.unmodifiableSet(set);
        this.zzb = Collections.unmodifiableSet(set2);
        this.zzc = i;
        this.zzd = componentFactory;
        this.zze = Collections.unmodifiableSet(set3);
    }

    /* synthetic */ Component(Set set, Set set2, int i, ComponentFactory componentFactory, Set set3, byte b) {
        this(set, set2, i, componentFactory, set3);
    }

    @KeepForSdk
    public static <T> Builder<T> builder(Class<T> cls) {
        return new Builder<>(cls, new Class[0], (byte) 0);
    }

    @KeepForSdk
    public static <T> Builder<T> builder(Class<T> cls, Class<? super T>... clsArr) {
        return new Builder<>(cls, clsArr, (byte) 0);
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: of */
    public static <T> Component<T> m324of(Class<T> cls, T t) {
        return builder(cls).factory(zzb.zza(t)).build();
    }

    @SafeVarargs
    @KeepForSdk
    /* renamed from: of */
    public static <T> Component<T> m323of(T t, Class<T> cls, Class<? super T>... clsArr) {
        return builder(cls, clsArr).factory(zzc.zza(t)).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object zza(Object obj) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object zzb(Object obj) {
        return obj;
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.zza.toArray()) + ">{" + this.zzc + ", deps=" + Arrays.toString(this.zzb.toArray()) + "}";
    }

    public final Set<Class<? super T>> zza() {
        return this.zza;
    }

    public final Set<Dependency> zzb() {
        return this.zzb;
    }

    public final ComponentFactory<T> zzc() {
        return this.zzd;
    }

    public final Set<Class<?>> zzd() {
        return this.zze;
    }

    public final boolean zze() {
        return this.zzc == 1;
    }

    public final boolean zzf() {
        return this.zzc == 2;
    }
}
