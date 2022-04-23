package androidx.lifecycle;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.savedstate.SavedStateRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandle.class */
public final class SavedStateHandle {

    /* renamed from: a */
    final Map<String, Object> f4076a;

    /* renamed from: b */
    private final SavedStateRegistry.SavedStateProvider f4077b;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandle$SavingStateLiveData.class */
    static class SavingStateLiveData<T> extends MutableLiveData<T> {

        /* renamed from: k */
        private String f4079k;

        /* renamed from: l */
        private SavedStateHandle f4080l;

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        /* renamed from: o */
        public void mo18127o(T t) {
            SavedStateHandle savedStateHandle = this.f4080l;
            if (savedStateHandle != null) {
                savedStateHandle.f4076a.put(this.f4079k, t);
            }
            super.mo18127o(t);
        }
    }

    static {
        Class cls = Double.TYPE;
        Class cls2 = Integer.TYPE;
        Class cls3 = Long.TYPE;
        Class cls4 = Byte.TYPE;
        Class cls5 = Character.TYPE;
        Class cls6 = Float.TYPE;
        Class cls7 = Short.TYPE;
        if (Build.VERSION.SDK_INT < 21) {
            Class cls8 = Integer.TYPE;
        }
        if (Build.VERSION.SDK_INT < 21) {
            Class cls9 = Integer.TYPE;
        }
    }

    public SavedStateHandle() {
        new HashMap();
        this.f4077b = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.SavedStateHandle.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            @NonNull
            /* renamed from: a */
            public Bundle mo17009a() {
                Set<String> keySet = SavedStateHandle.this.f4076a.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(SavedStateHandle.this.f4076a.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("keys", arrayList);
                bundle.putParcelableArrayList("values", arrayList2);
                return bundle;
            }
        };
        this.f4076a = new HashMap();
    }

    public SavedStateHandle(@NonNull Map<String, Object> map) {
        new HashMap();
        this.f4077b = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.SavedStateHandle.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            @NonNull
            /* renamed from: a */
            public Bundle mo17009a() {
                Set<String> keySet = SavedStateHandle.this.f4076a.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(SavedStateHandle.this.f4076a.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("keys", arrayList);
                bundle.putParcelableArrayList("values", arrayList2);
                return bundle;
            }
        };
        this.f4076a = new HashMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static SavedStateHandle m18164a(@Nullable Bundle bundle, @Nullable Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new SavedStateHandle();
        }
        HashMap hashMap = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                hashMap.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new SavedStateHandle(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new SavedStateHandle(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: b */
    public SavedStateRegistry.SavedStateProvider m18163b() {
        return this.f4077b;
    }
}
