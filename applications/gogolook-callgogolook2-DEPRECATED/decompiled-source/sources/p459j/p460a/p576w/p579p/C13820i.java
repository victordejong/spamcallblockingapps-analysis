package p459j.p460a.p576w.p579p;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p576w.p578o.C13797d;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� ,2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003,-.B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u001fH\u0002J\u0010\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0002H\u0002J\b\u0010%\u001a\u00020\u001fH\u0016J\u0010\u0010&\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u001fH\u0016J\u0018\u0010'\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u001fH\u0016J\u0018\u0010(\u001a\u00020\u00022\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001fH\u0016R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R4\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006/"}, m815d2 = {"Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "()V", C13032a.f29462d, "Lgogolook/callgogolook2/iap/model/IapNotice;", "iapNotice", "getIapNotice", "()Lgogolook/callgogolook2/iap/model/IapNotice;", "setIapNotice", "(Lgogolook/callgogolook2/iap/model/IapNotice;)V", "onDataClickListener", "Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter$OnDataClickListener;", "getOnDataClickListener", "()Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter$OnDataClickListener;", "setOnDataClickListener", "(Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter$OnDataClickListener;)V", "onNoticeClickListener", "Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter$OnNoticeClickListener;", "getOnNoticeClickListener", "()Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter$OnNoticeClickListener;", "setOnNoticeClickListener", "(Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter$OnNoticeClickListener;)V", "", "Lgogolook/callgogolook2/iap/premium/IapPremiumContract$PremiumItem;", "premiumItemList", "getPremiumItemList", "()Ljava/util/List;", "setPremiumItemList", "(Ljava/util/List;)V", "baseIapNoticeCount", "", "bindData", "", "holder", "position", "bindNoticeData", "getItemCount", "getItemViewType", "onBindViewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "Companion", "OnDataClickListener", "OnNoticeClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.p.i */
/* loaded from: classes2-dex2jar.jar:j/a/w/p/i.class */
public final class C13820i extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public AbstractC13822b f31038a;

    /* renamed from: b */
    public AbstractC13823c f31039b;

    /* renamed from: c */
    public List<C13805a> f31040c;

    /* renamed from: d */
    public C13797d f31041d;

    /* renamed from: j.a.w.p.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/i$a.class */
    public static final class C13821a {
        public C13821a() {
        }

        public /* synthetic */ C13821a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.w.p.i$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/i$b.class */
    public interface AbstractC13822b {
        /* renamed from: a */
        void mo3368a(C13805a aVar);
    }

    /* renamed from: j.a.w.p.i$c */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/i$c.class */
    public interface AbstractC13823c {
        /* renamed from: a */
        void mo3367a();

        /* renamed from: a */
        void mo3366a(C13797d dVar);

        void onCloseClick();
    }

    /* renamed from: j.a.w.p.i$d */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/i$d.class */
    public static final class View$OnClickListenerC13824d implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C13805a f31043b;

        public View$OnClickListenerC13824d(C13805a aVar) {
            this.f31043b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC13822b b = C13820i.this.m3370b();
            if (b != null) {
                b.mo3368a(this.f31043b);
            }
        }
    }

    /* renamed from: j.a.w.p.i$e */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/i$e.class */
    public static final class View$OnClickListenerC13825e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C13797d f31044a;

        /* renamed from: b */
        public final /* synthetic */ C13820i f31045b;

        public View$OnClickListenerC13825e(C13797d dVar, View view, C13820i iVar) {
            this.f31044a = dVar;
            this.f31045b = iVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC13823c c = this.f31045b.m3369c();
            if (c != null) {
                c.mo3366a(this.f31044a);
            }
        }
    }

    /* renamed from: j.a.w.p.i$f */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/i$f.class */
    public static final class View$OnClickListenerC13826f implements View.OnClickListener {
        public View$OnClickListenerC13826f() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC13823c c = C13820i.this.m3369c();
            if (c != null) {
                c.onCloseClick();
            }
        }
    }

    /* renamed from: j.a.w.p.i$g */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/i$g.class */
    public static final class View$OnClickListenerC13827g implements View.OnClickListener {
        public View$OnClickListenerC13827g() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC13823c c = C13820i.this.m3369c();
            if (c != null) {
                c.mo3367a();
            }
        }
    }

    static {
        new C13821a(null);
    }

    /* renamed from: a */
    public final int m3377a() {
        return this.f31041d == null ? 0 : 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x00bd, code lost:
        if (r0 != null) goto L_0x00d2;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3376a(androidx.recyclerview.widget.RecyclerView.ViewHolder r8) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p579p.C13820i.m3376a(androidx.recyclerview.widget.RecyclerView$ViewHolder):void");
    }

    /* renamed from: a */
    public final void m3375a(RecyclerView.ViewHolder viewHolder, int i) {
        C13805a aVar;
        int a = m3377a();
        List<C13805a> list = this.f31040c;
        if (list != null && (aVar = list.get(i - (a + 1))) != null) {
            View view = viewHolder.itemView;
            TextView textView = (TextView) view.findViewById(R$id.tvTitle);
            C15149k.m383a((Object) textView, "tvTitle");
            textView.setText(aVar.m3395e());
            TextView textView2 = (TextView) view.findViewById(R$id.tvContent);
            C15149k.m383a((Object) textView2, "tvContent");
            textView2.setText(aVar.m3399a());
            String b = aVar.m3398b();
            boolean z = true;
            if (b != null) {
                z = b.length() == 0;
            }
            if (z) {
                TextView textView3 = (TextView) view.findViewById(R$id.tvCta);
                C15149k.m383a((Object) textView3, "tvCta");
                textView3.setVisibility(8);
                return;
            }
            TextView textView4 = (TextView) view.findViewById(R$id.tvCta);
            textView4.setVisibility(0);
            textView4.setText(aVar.m3398b());
            textView4.setOnClickListener(new View$OnClickListenerC13824d(aVar));
        }
    }

    /* renamed from: a */
    public final void m3374a(C13797d dVar) {
        this.f31041d = dVar;
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m3373a(AbstractC13822b bVar) {
        this.f31038a = bVar;
    }

    /* renamed from: a */
    public final void m3372a(AbstractC13823c cVar) {
        this.f31039b = cVar;
    }

    /* renamed from: a */
    public final void m3371a(List<C13805a> list) {
        this.f31040c = list;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public final AbstractC13822b m3370b() {
        return this.f31038a;
    }

    /* renamed from: c */
    public final AbstractC13823c m3369c() {
        return this.f31039b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int a = m3377a();
        List<C13805a> list = this.f31040c;
        return a + 1 + (list != null ? list.size() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2 = 1;
        if (i == 0) {
            i2 = 0;
        } else if (this.f31041d == null || i != 1) {
            i2 = 2;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        if (viewHolder instanceof C13815f) {
            m3375a(viewHolder, i);
        } else if (viewHolder instanceof C13816g) {
            m3376a(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        return i != 0 ? i != 1 ? new C13815f(viewGroup) : new C13816g(viewGroup) : new C13814e(viewGroup);
    }
}
