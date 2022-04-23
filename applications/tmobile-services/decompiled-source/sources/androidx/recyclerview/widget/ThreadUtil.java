package androidx.recyclerview.widget;

import androidx.recyclerview.widget.TileList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ThreadUtil.class */
interface ThreadUtil<T> {

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ThreadUtil$BackgroundCallback.class */
    public interface BackgroundCallback<T> {
        /* renamed from: a */
        void mo17065a(int i, int i2, int i3, int i4, int i5);

        /* renamed from: b */
        void mo17064b(TileList.Tile<T> tile);

        /* renamed from: c */
        void mo17063c(int i, int i2);

        /* renamed from: d */
        void mo17062d(int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ThreadUtil$MainThreadCallback.class */
    public interface MainThreadCallback<T> {
        /* renamed from: a */
        void mo17061a(int i, TileList.Tile<T> tile);

        /* renamed from: b */
        void mo17060b(int i, int i2);

        /* renamed from: c */
        void mo17059c(int i, int i2);
    }
}
