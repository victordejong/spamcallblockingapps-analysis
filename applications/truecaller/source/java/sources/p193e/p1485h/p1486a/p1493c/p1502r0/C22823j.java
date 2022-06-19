package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.clevertap.android.sdk.C0868R;
import com.clevertap.android.sdk.inbox.CTInboxMessage;
import java.util.ArrayList;
/* renamed from: e.h.a.c.r0.j */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/j.class */
public class C22823j extends RecyclerView.AbstractC0317g {

    /* renamed from: a */
    public i f63327a;

    /* renamed from: b */
    public ArrayList<CTInboxMessage> f63328b;

    public C22823j(ArrayList<CTInboxMessage> arrayList, i iVar) {
        this.f63328b = arrayList;
        this.f63327a = iVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f63328b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        int ordinal = this.f63328b.get(i).f2386p.ordinal();
        if (ordinal != 0) {
            int i2 = 1;
            if (ordinal != 1) {
                i2 = 2;
                if (ordinal != 2) {
                    i2 = 3;
                    if (ordinal != 3) {
                        return -1;
                    }
                }
            }
            return i2;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        ((C22816e) abstractC0313c0).m7744P4(this.f63328b.get(i), this.f63327a, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? null : new a(LayoutInflater.from(viewGroup.getContext()).inflate(C0868R.layout.inbox_carousel_layout, viewGroup, false)) : new b(LayoutInflater.from(viewGroup.getContext()).inflate(C0868R.layout.inbox_carousel_text_layout, viewGroup, false)) : new d(LayoutInflater.from(viewGroup.getContext()).inflate(C0868R.layout.inbox_icon_message_layout, viewGroup, false)) : new n(LayoutInflater.from(viewGroup.getContext()).inflate(C0868R.layout.inbox_simple_message_layout, viewGroup, false));
    }
}
