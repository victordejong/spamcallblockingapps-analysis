package android.support.p004v7.recyclerview.extensions;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v7.recyclerview.extensions.AsyncDifferConfig;
import android.support.p004v7.util.AdapterListUpdateCallback;
import android.support.p004v7.util.DiffUtil;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.RecyclerView.ViewHolder;
import java.util.List;
/* renamed from: android.support.v7.recyclerview.extensions.ListAdapter */
/* loaded from: classes-dex2jar.jar:android/support/v7/recyclerview/extensions/ListAdapter.class */
public abstract class ListAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    private final AsyncListDiffer<T> mHelper;

    protected ListAdapter(@NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.mHelper = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), asyncDifferConfig);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ListAdapter(@NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this.mHelper = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), new AsyncDifferConfig.Builder(itemCallback).build());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T getItem(int i) {
        return this.mHelper.getCurrentList().get(i);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mHelper.getCurrentList().size();
    }

    public void submitList(@Nullable List<T> list) {
        this.mHelper.submitList(list);
    }
}
