package p459j.p460a.p613z0.p617p;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.recyclerview.widget.RecyclerView;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.z0.p.a */
/* loaded from: classes3-dex2jar.jar:j/a/z0/p/a.class */
public class C14666a extends RecyclerView.ViewHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14666a(ViewGroup viewGroup, @LayoutRes int i) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false));
        C15149k.m377b(viewGroup, "parent");
    }

    /* renamed from: a */
    public final Context m907a() {
        View view = this.itemView;
        C15149k.m383a((Object) view, "itemView");
        return view.getContext();
    }

    /* renamed from: a */
    public final <T extends View> T m906a(@IdRes int i) {
        T t = (T) this.itemView.findViewById(i);
        C15149k.m383a((Object) t, "itemView.findViewById(id)");
        return t;
    }
}
