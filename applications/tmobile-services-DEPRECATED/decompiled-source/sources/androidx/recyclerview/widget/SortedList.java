package androidx.recyclerview.widget;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/SortedList.class */
public class SortedList<T> {

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/SortedList$BatchedCallback.class */
    public static class BatchedCallback<T2> extends Callback<T2> {

        /* renamed from: f */
        final Callback<T2> f4848f;

        /* renamed from: g */
        private final BatchingListUpdateCallback f4849g;

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        /* renamed from: a */
        public void mo17217a(int i, int i2) {
            this.f4849g.mo17217a(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        /* renamed from: b */
        public void mo17216b(int i, int i2) {
            this.f4849g.mo17216b(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        /* renamed from: c */
        public void mo17215c(int i, int i2) {
            this.f4849g.mo17215c(i, i2);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, java.util.Comparator
        public int compare(T2 t2, T2 t22) {
            return this.f4848f.compare(t2, t22);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
        /* renamed from: d */
        public void mo17214d(int i, int i2, Object obj) {
            this.f4849g.mo17214d(i, i2, obj);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        /* renamed from: e */
        public void mo17213e(int i, int i2) {
            this.f4849g.mo17214d(i, i2, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/SortedList$Callback.class */
    public static abstract class Callback<T2> implements Comparator<T2>, ListUpdateCallback {
        @Override // java.util.Comparator
        public abstract int compare(T2 t2, T2 t22);

        /* renamed from: d */
        public void mo17214d(int i, int i2, Object obj) {
            mo17213e(i, i2);
        }

        /* renamed from: e */
        public abstract void mo17213e(int i, int i2);
    }
}
