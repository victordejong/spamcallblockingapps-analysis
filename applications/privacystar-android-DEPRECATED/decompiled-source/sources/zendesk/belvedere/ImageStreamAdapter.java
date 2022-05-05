package zendesk.belvedere;

import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import zendesk.belvedere.ImageStreamItems;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamAdapter.class */
class ImageStreamAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<ImageStreamItems.Item> staticItems = new ArrayList();
    private List<ImageStreamItems.Item> imageStream = new ArrayList();
    private List<ImageStreamItems.Item> list = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamAdapter$Listener.class */
    public interface Listener {
        void onOpenCamera();

        boolean onSelectionChanged(ImageStreamItems.Item item);
    }

    private void updateDataSet(List<ImageStreamItems.Item> list, List<ImageStreamItems.Item> list2) {
        ArrayList arrayList = new ArrayList(list.size() + list2.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        this.staticItems = list;
        this.imageStream = list2;
        this.list = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addStaticItem(ImageStreamItems.Item item) {
        updateDataSet(Collections.singletonList(item), this.imageStream);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.list.get(i).getId();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.list.get(i).getLayoutId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initializeWithImages(List<ImageStreamItems.Item> list) {
        updateDataSet(this.staticItems, list);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        this.list.get(i).bind(viewHolder.itemView);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new RecyclerView.ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false)) { // from class: zendesk.belvedere.ImageStreamAdapter.1
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setItemsSelected(List<MediaResult> list) {
        ArrayList arrayList = new ArrayList(this.imageStream);
        HashSet hashSet = new HashSet();
        for (MediaResult mediaResult : list) {
            hashSet.add(mediaResult.getOriginalUri());
        }
        for (ImageStreamItems.Item item : arrayList) {
            item.setSelected(hashSet.contains(item.getMediaResult().getOriginalUri()));
        }
        updateDataSet(this.staticItems, arrayList);
    }
}
