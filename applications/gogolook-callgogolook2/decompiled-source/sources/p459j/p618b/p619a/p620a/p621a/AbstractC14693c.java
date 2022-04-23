package p459j.p618b.p619a.p620a.p621a;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;
@Deprecated
/* renamed from: j.b.a.a.a.c */
/* loaded from: classes3-dex2jar.jar:j/b/a/a/a/c.class */
public abstract class AbstractC14693c<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: a */
    public AbstractC14696c f32814a = null;

    /* renamed from: b */
    public AbstractC14697d f32815b = null;

    /* renamed from: c */
    public int f32816c = -1;

    /* renamed from: j.b.a.a.a.c$a */
    /* loaded from: classes3-dex2jar.jar:j/b/a/a/a/c$a.class */
    public class View$OnClickListenerC14694a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ RecyclerView.ViewHolder f32817a;

        public View$OnClickListenerC14694a(RecyclerView.ViewHolder viewHolder) {
            this.f32817a = viewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AbstractC14693c.this.f32814a != null) {
                AbstractC14693c.this.f32814a.mo835a(view, this.f32817a.getAdapterPosition());
            }
        }
    }

    /* renamed from: j.b.a.a.a.c$b */
    /* loaded from: classes3-dex2jar.jar:j/b/a/a/a/c$b.class */
    public class View$OnLongClickListenerC14695b implements View.OnLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ RecyclerView.ViewHolder f32819a;

        public View$OnLongClickListenerC14695b(RecyclerView.ViewHolder viewHolder) {
            this.f32819a = viewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AbstractC14693c.this.f32816c = this.f32819a.getAdapterPosition();
            if (AbstractC14693c.this.f32815b != null) {
                return AbstractC14693c.this.f32815b.mo834a(view, AbstractC14693c.this.f32816c);
            }
            return false;
        }
    }

    /* renamed from: j.b.a.a.a.c$c */
    /* loaded from: classes3-dex2jar.jar:j/b/a/a/a/c$c.class */
    public interface AbstractC14696c {
        /* renamed from: a */
        void mo835a(View view, int i);
    }

    /* renamed from: j.b.a.a.a.c$d */
    /* loaded from: classes3-dex2jar.jar:j/b/a/a/a/c$d.class */
    public interface AbstractC14697d {
        /* renamed from: a */
        boolean mo834a(View view, int i);
    }

    /* renamed from: a */
    public void m841a(AbstractC14696c cVar) {
        this.f32814a = cVar;
    }

    /* renamed from: a */
    public void m840a(AbstractC14697d dVar) {
        this.f32815b = dVar;
    }

    /* renamed from: a */
    public boolean mo842a(int i) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onBindViewHolder(VH vh, int i, List<Object> list) {
        onBindViewHolder(vh, i);
        vh.itemView.setEnabled(mo842a(i));
        vh.itemView.setOnClickListener(new View$OnClickListenerC14694a(vh));
        vh.itemView.setOnLongClickListener(new View$OnLongClickListenerC14695b(vh));
    }
}
