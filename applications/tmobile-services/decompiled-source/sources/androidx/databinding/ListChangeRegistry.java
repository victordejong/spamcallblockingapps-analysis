package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.ObservableList;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ListChangeRegistry.class */
public class ListChangeRegistry extends CallbackRegistry<ObservableList.OnListChangedCallback, ObservableList, ListChanges> {

    /* renamed from: k */
    private static final Pools.SynchronizedPool<ListChanges> f3519k = new Pools.SynchronizedPool<>(10);

    /* renamed from: l */
    private static final CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, ListChanges> f3520l = new CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, ListChanges>() { // from class: androidx.databinding.ListChangeRegistry.1
        /* renamed from: b */
        public void mo18605a(ObservableList.OnListChangedCallback onListChangedCallback, ObservableList observableList, int i, ListChanges listChanges) {
            if (i == 1) {
                onListChangedCallback.mo18583d(observableList, listChanges.f3521a, listChanges.f3522b);
            } else if (i == 2) {
                onListChangedCallback.mo18582e(observableList, listChanges.f3521a, listChanges.f3522b);
            } else if (i == 3) {
                onListChangedCallback.mo18581f(observableList, listChanges.f3521a, listChanges.f3523c, listChanges.f3522b);
            } else if (i != 4) {
                onListChangedCallback.mo18584a(observableList);
            } else {
                onListChangedCallback.mo18580g(observableList, listChanges.f3521a, listChanges.f3522b);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ListChangeRegistry$ListChanges.class */
    public static class ListChanges {

        /* renamed from: a */
        public int f3521a;

        /* renamed from: b */
        public int f3522b;

        /* renamed from: c */
        public int f3523c;

        ListChanges() {
        }
    }

    public ListChangeRegistry() {
        super(f3520l);
    }

    /* renamed from: n */
    private static ListChanges m18671n(int i, int i2, int i3) {
        ListChanges b = f3519k.mo19341b();
        ListChanges listChanges = b;
        if (b == null) {
            listChanges = new ListChanges();
        }
        listChanges.f3521a = i;
        listChanges.f3523c = i2;
        listChanges.f3522b = i3;
        return listChanges;
    }

    /* renamed from: o */
    public void mo18672c(@NonNull ObservableList observableList, int i, ListChanges listChanges) {
        synchronized (this) {
            super.mo18672c(observableList, i, listChanges);
            if (listChanges != null) {
                f3519k.mo19342a(listChanges);
            }
        }
    }

    /* renamed from: p */
    public void m18669p(@NonNull ObservableList observableList, int i, int i2) {
        mo18672c(observableList, 1, m18671n(i, 0, i2));
    }

    /* renamed from: q */
    public void m18668q(@NonNull ObservableList observableList, int i, int i2) {
        mo18672c(observableList, 2, m18671n(i, 0, i2));
    }

    /* renamed from: r */
    public void m18667r(@NonNull ObservableList observableList, int i, int i2) {
        mo18672c(observableList, 4, m18671n(i, 0, i2));
    }
}
