package com.mikepenz.fastadapter.items;

import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.RecyclerView.ViewHolder;
import com.mikepenz.fastadapter.IModelItem;
import com.mikepenz.fastadapter.items.ModelAbstractItem;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/items/ModelAbstractItem.class */
public abstract class ModelAbstractItem<Model, Item extends ModelAbstractItem<?, ?, ?>, VH extends RecyclerView.ViewHolder> extends AbstractItem<Item, VH> implements IModelItem<Model, Item, VH> {
    private Model mModel;

    public ModelAbstractItem(Model model) {
        this.mModel = model;
    }

    @Override // com.mikepenz.fastadapter.IModelItem
    public Model getModel() {
        return this.mModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mikepenz.fastadapter.IModelItem
    public ModelAbstractItem<?, ?, ?> withModel(Model model) {
        this.mModel = model;
        return this;
    }
}
