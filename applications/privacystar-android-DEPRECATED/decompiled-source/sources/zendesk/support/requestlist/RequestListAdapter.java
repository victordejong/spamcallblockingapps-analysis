package zendesk.support.requestlist;

import android.support.p004v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.List;
import zendesk.support.requestlist.RequestListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListAdapter.class */
public class RequestListAdapter extends RecyclerView.Adapter<RequestListViewHolder> {
    private final RequestListView.OnItemClick itemClickListener;
    private final Picasso picasso;
    private final List<RequestListItem> requestListItems = new ArrayList(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestListAdapter(RequestListView.OnItemClick onItemClick, Picasso picasso) {
        this.itemClickListener = onItemClick;
        this.picasso = picasso;
        setHasStableIds(true);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.requestListItems.size();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.requestListItems.get(i).getItemId();
    }

    public void onBindViewHolder(RequestListViewHolder requestListViewHolder, int i) {
        requestListViewHolder.bind(this.requestListItems.get(i));
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public RequestListViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return RequestListViewHolder.create(viewGroup.getContext(), viewGroup, this.itemClickListener, this.picasso);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void swapRequests(List<RequestListItem> list) {
        this.requestListItems.clear();
        this.requestListItems.addAll(list);
        notifyDataSetChanged();
    }
}
