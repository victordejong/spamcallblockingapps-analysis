package zendesk.commonui;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.p004v7.recyclerview.extensions.ListAdapter;
import android.support.p004v7.util.DiffUtil;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/CellListAdapter.class */
public class CellListAdapter extends ListAdapter<Cell, RecyclerView.ViewHolder> {
    private final Activity activity;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellListAdapter(Activity activity) {
        super(new DiffUtil.ItemCallback<Cell>() { // from class: zendesk.commonui.CellListAdapter.1
            public boolean areContentsTheSame(Cell cell, Cell cell2) {
                return cell.areContentsTheSame(cell2);
            }

            public boolean areItemsTheSame(Cell cell, Cell cell2) {
                return cell.areItemsTheSame(cell2);
            }
        });
        this.activity = activity;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return getItem(i).getLayoutRes();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        getItem(i).bind(viewHolder.itemView, this.activity);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new RecyclerView.ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false)) { // from class: zendesk.commonui.CellListAdapter.2
        };
    }
}
