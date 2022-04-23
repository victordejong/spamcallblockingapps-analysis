package p459j.p460a.p463b0.p465r;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0013H\u0016J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0013H\u0016J\u001e\u0010\b\u001a\u00020\u00152\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0013H\u0002R.\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005@BX\u0082\u000e¢\u0006\b\n��\"\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/main/contact/ContactRecyclerAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgogolook/callgogolook2/main/contact/ContactRecyclerViewHolder;", "()V", C13032a.f29462d, "", "Lgogolook/callgogolook2/realm/obj/contact/ContactRealmObject;", "contactData", "setContactData", "(Ljava/util/List;)V", "filterIndex", "", "onContactItemClickListener", "Lgogolook/callgogolook2/main/contact/ContactRecyclerAdapter$OnContactItemClickListener;", "getOnContactItemClickListener", "()Lgogolook/callgogolook2/main/contact/ContactRecyclerAdapter$OnContactItemClickListener;", "setOnContactItemClickListener", "(Lgogolook/callgogolook2/main/contact/ContactRecyclerAdapter$OnContactItemClickListener;)V", "getItemCount", "", "onBindViewHolder", "", "viewHolder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "setContactItem", "holder", "OnContactItemClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.r.e */
/* loaded from: classes2-dex2jar.jar:j/a/b0/r/e.class */
public final class C11228e extends RecyclerView.Adapter<C11232f> {

    /* renamed from: a */
    public AbstractC11229a f25186a;

    /* renamed from: b */
    public String f25187b;

    /* renamed from: c */
    public List<? extends ContactRealmObject> f25188c;

    /* renamed from: j.a.b0.r.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/e$a.class */
    public interface AbstractC11229a {
        /* renamed from: a */
        void mo9976a(ContactRealmObject contactRealmObject);

        /* renamed from: b */
        void mo9975b(ContactRealmObject contactRealmObject);
    }

    /* renamed from: j.a.b0.r.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/e$b.class */
    public static final class View$OnClickListenerC11230b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ ContactRealmObject f25190b;

        public View$OnClickListenerC11230b(ContactRealmObject contactRealmObject) {
            this.f25190b = contactRealmObject;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11229a a = C11228e.this.m9982a();
            if (a != null) {
                a.mo9976a(this.f25190b);
            }
        }
    }

    /* renamed from: j.a.b0.r.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/e$c.class */
    public static final class View$OnLongClickListenerC11231c implements View.OnLongClickListener {

        /* renamed from: b */
        public final /* synthetic */ ContactRealmObject f25192b;

        public View$OnLongClickListenerC11231c(ContactRealmObject contactRealmObject) {
            this.f25192b = contactRealmObject;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            AbstractC11229a a = C11228e.this.m9982a();
            if (a == null) {
                return true;
            }
            a.mo9975b(this.f25192b);
            return true;
        }
    }

    /* renamed from: a */
    public final AbstractC11229a m9982a() {
        return this.f25186a;
    }

    /* renamed from: a */
    public final void m9981a(AbstractC11229a aVar) {
        this.f25186a = aVar;
    }

    /* renamed from: a */
    public void onBindViewHolder(C11232f fVar, int i) {
        C15149k.m377b(fVar, "viewHolder");
        m9977b(fVar, i);
    }

    /* renamed from: a */
    public final void m9979a(List<? extends ContactRealmObject> list) {
        this.f25188c = list;
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m9978a(List<? extends ContactRealmObject> list, String str) {
        C15149k.m377b(list, "contactData");
        this.f25187b = str;
        m9979a(list);
    }

    /* renamed from: b */
    public final void m9977b(C11232f fVar, int i) {
        ContactRealmObject contactRealmObject;
        fVar.m9970c();
        List<? extends ContactRealmObject> list = this.f25188c;
        if (list != null && (contactRealmObject = (ContactRealmObject) list.get(i)) != null) {
            fVar.m9973a(contactRealmObject, this.f25187b);
            fVar.itemView.setOnClickListener(new View$OnClickListenerC11230b(contactRealmObject));
            fVar.itemView.setOnLongClickListener(new View$OnLongClickListenerC11231c(contactRealmObject));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends ContactRealmObject> list = this.f25188c;
        return list != null ? list.size() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C11232f onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        return new C11232f(viewGroup);
    }
}
