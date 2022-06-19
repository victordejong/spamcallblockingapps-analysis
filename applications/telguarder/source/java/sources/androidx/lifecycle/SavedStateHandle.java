package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandle.class */
public final class SavedStateHandle {
    private static final Class[] ACCEPTABLE_CLASSES;
    private static final String KEYS = "keys";
    private static final String VALUES = "values";
    private final Map<String, SavingStateLiveData<?>> mLiveDatas;
    final Map<String, Object> mRegular;
    private final SavedStateRegistry.SavedStateProvider mSavedStateProvider;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateHandle$SavingStateLiveData.class */
    public static class SavingStateLiveData<T> extends MutableLiveData<T> {
        private SavedStateHandle mHandle;
        private String mKey;

        SavingStateLiveData(SavedStateHandle savedStateHandle, String str) {
            this.mKey = str;
            this.mHandle = savedStateHandle;
        }

        SavingStateLiveData(SavedStateHandle savedStateHandle, String str, T t) {
            super(t);
            this.mKey = str;
            this.mHandle = savedStateHandle;
        }

        void detach() {
            this.mHandle = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T t) {
            SavedStateHandle savedStateHandle = this.mHandle;
            if (savedStateHandle != null) {
                savedStateHandle.mRegular.put(this.mKey, t);
            }
            super.setValue(t);
        }
    }

    static {
        ACCEPTABLE_CLASSES = new Class[]{Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Build.VERSION.SDK_INT >= 21 ? Size.class : Integer.TYPE, Build.VERSION.SDK_INT >= 21 ? SizeF.class : Integer.TYPE};
    }

    public SavedStateHandle() {
        this.mLiveDatas = new HashMap();
        this.mSavedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.SavedStateHandle.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public Bundle saveState() {
                Set<String> keySet = SavedStateHandle.this.mRegular.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(SavedStateHandle.this.mRegular.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList(SavedStateHandle.KEYS, arrayList);
                bundle.putParcelableArrayList(SavedStateHandle.VALUES, arrayList2);
                return bundle;
            }
        };
        this.mRegular = new HashMap();
    }

    public SavedStateHandle(Map<String, Object> map) {
        this.mLiveDatas = new HashMap();
        this.mSavedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.SavedStateHandle.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public Bundle saveState() {
                Set<String> keySet = SavedStateHandle.this.mRegular.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(SavedStateHandle.this.mRegular.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList(SavedStateHandle.KEYS, arrayList);
                bundle.putParcelableArrayList(SavedStateHandle.VALUES, arrayList2);
                return bundle;
            }
        };
        this.mRegular = new HashMap(map);
    }

    public static SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
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
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(KEYS);
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(VALUES);
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new SavedStateHandle(hashMap);
    }

    private <T> MutableLiveData<T> getLiveDataInternal(String str, boolean z, T t) {
        SavingStateLiveData<?> savingStateLiveData = this.mLiveDatas.get(str);
        if (savingStateLiveData != null) {
            return savingStateLiveData;
        }
        SavingStateLiveData<?> savingStateLiveData2 = this.mRegular.containsKey(str) ? new SavingStateLiveData<>(this, str, this.mRegular.get(str)) : z ? new SavingStateLiveData<>(this, str, t) : new SavingStateLiveData<>(this, str);
        this.mLiveDatas.put(str, savingStateLiveData2);
        return savingStateLiveData2;
    }

    private static void validateValue(Object obj) {
        if (obj == null) {
            return;
        }
        for (Class cls : ACCEPTABLE_CLASSES) {
            if (cls.isInstance(obj)) {
                return;
            }
        }
        throw new IllegalArgumentException("Can't put value with type " + obj.getClass() + " into saved state");
    }

    public boolean contains(String str) {
        return this.mRegular.containsKey(str);
    }

    public <T> T get(String str) {
        return (T) this.mRegular.get(str);
    }

    public <T> MutableLiveData<T> getLiveData(String str) {
        return getLiveDataInternal(str, false, null);
    }

    public <T> MutableLiveData<T> getLiveData(String str, T t) {
        return getLiveDataInternal(str, true, t);
    }

    public Set<String> keys() {
        return Collections.unmodifiableSet(this.mRegular.keySet());
    }

    public <T> T remove(String str) {
        T t = (T) this.mRegular.remove(str);
        SavingStateLiveData<?> remove = this.mLiveDatas.remove(str);
        if (remove != null) {
            remove.detach();
        }
        return t;
    }

    public SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.mSavedStateProvider;
    }

    public <T> void set(String str, T t) {
        validateValue(t);
        SavingStateLiveData<?> savingStateLiveData = this.mLiveDatas.get(str);
        if (savingStateLiveData != null) {
            savingStateLiveData.setValue(t);
        } else {
            this.mRegular.put(str, t);
        }
    }
}
