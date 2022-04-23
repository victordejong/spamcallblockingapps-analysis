package p459j.p460a.p474c0.p491g.p493b0;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.collection.ArrayMap;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$menu;
import java.util.Collection;
import p459j.p460a.p474c0.p475c.p478y.C11610g;
import p459j.p460a.p474c0.p491g.AbstractActionMode$CallbackC12096m;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.b0.j */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/j.class */
public class C11979j extends AbstractActionMode$CallbackC12096m {

    /* renamed from: b */
    public final ArrayMap<String, C11981b> f26858b = new ArrayMap<>();

    /* renamed from: c */
    public AbstractC11980a f26859c;

    /* renamed from: d */
    public MenuItem f26860d;

    /* renamed from: e */
    public boolean f26861e;

    /* renamed from: j.a.c0.g.b0.j$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/j$a.class */
    public interface AbstractC11980a {
        /* renamed from: a */
        void mo7668a(Collection<C11981b> collection);

        /* renamed from: v */
        void mo7667v();

        /* renamed from: x */
        void mo7666x();
    }

    /* renamed from: j.a.c0.g.b0.j$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/j$b.class */
    public static class C11981b {

        /* renamed from: a */
        public final String f26862a;

        public C11981b(C11610g gVar) {
            this.f26862a = gVar.m8887q();
        }
    }

    public C11979j(AbstractC11980a aVar) {
        this.f26859c = aVar;
    }

    /* renamed from: a */
    public int m7671a(C11610g gVar) {
        C12151d.m7000b(gVar);
        String q = gVar.m8887q();
        if (this.f26858b.containsKey(q)) {
            this.f26858b.remove(q);
        } else {
            this.f26858b.put(q, new C11981b(gVar));
        }
        m7669b();
        return this.f26858b.size();
    }

    /* renamed from: a */
    public boolean m7670a(String str) {
        return this.f26858b.containsKey(str);
    }

    /* renamed from: b */
    public final void m7669b() {
        if (this.f26861e) {
            this.f26860d.setVisible(this.f26858b.size() > 0);
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            this.f26859c.mo7666x();
            return true;
        } else if (itemId != 2131361852) {
            return false;
        } else {
            this.f26859c.mo7668a(this.f26858b.values());
            return true;
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        actionMode.getMenuInflater().inflate(R$menu.conversation_fragment_multi_select_menu, menu);
        this.f26860d = menu.findItem(R$id.action_delete_message);
        this.f26861e = true;
        m7669b();
        return true;
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractActionMode$CallbackC12096m, android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        super.onDestroyActionMode(actionMode);
        this.f26859c.mo7667v();
        this.f26859c = null;
        this.f26858b.clear();
        this.f26861e = false;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return true;
    }
}
