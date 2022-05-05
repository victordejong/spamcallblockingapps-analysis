package p459j.p460a.p462a1;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import gogolook.callgogolook2.util.ProgressWheel;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.SizedTextView;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000fH\u0016J\u0018\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000fH\u0016J\u0016\u0010\u001d\u001a\u00020\u00162\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001f"}, m815d2 = {"Lgogolook/callgogolook2/whitelist/WhiteListRecyclerAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgogolook/callgogolook2/whitelist/WhiteListDataViewHolder;", "data", "", "Lgogolook/callgogolook2/realm/obj/whitelist/WhiteListRealmObject;", "(Ljava/util/List;)V", "onWhiteListItemClickListener", "Lgogolook/callgogolook2/whitelist/WhiteListRecyclerAdapter$OnWhiteListItemClickListener;", "getOnWhiteListItemClickListener", "()Lgogolook/callgogolook2/whitelist/WhiteListRecyclerAdapter$OnWhiteListItemClickListener;", "setOnWhiteListItemClickListener", "(Lgogolook/callgogolook2/whitelist/WhiteListRecyclerAdapter$OnWhiteListItemClickListener;)V", "whiteList", "getItemCount", "", "getPrimaryTitle", "", "context", "Landroid/content/Context;", "e164", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "updateData", "OnWhiteListItemClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a1.e */
/* loaded from: classes3-dex2jar.jar:j/a/a1/e.class */
public final class C11105e extends RecyclerView.Adapter<C11089c> {

    /* renamed from: a */
    public AbstractC11106a f24972a;

    /* renamed from: b */
    public List<? extends WhiteListRealmObject> f24973b;

    /* renamed from: j.a.a1.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/e$a.class */
    public interface AbstractC11106a {
        /* renamed from: a */
        void mo10259a(WhiteListRealmObject whiteListRealmObject);

        /* renamed from: b */
        void mo10258b(WhiteListRealmObject whiteListRealmObject);
    }

    /* renamed from: j.a.a1.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/e$b.class */
    public static final class View$OnClickListenerC11107b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ WhiteListRealmObject f24974a;

        /* renamed from: b */
        public final /* synthetic */ C11105e f24975b;

        public View$OnClickListenerC11107b(WhiteListRealmObject whiteListRealmObject, C11105e eVar, int i, C11089c cVar) {
            this.f24974a = whiteListRealmObject;
            this.f24975b = eVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11106a a = this.f24975b.m10264a();
            if (a != null) {
                a.mo10259a(this.f24974a);
            }
        }
    }

    /* renamed from: j.a.a1.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/e$c.class */
    public static final class View$OnClickListenerC11108c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ WhiteListRealmObject f24976a;

        /* renamed from: b */
        public final /* synthetic */ C11105e f24977b;

        public View$OnClickListenerC11108c(WhiteListRealmObject whiteListRealmObject, C11105e eVar, int i, C11089c cVar) {
            this.f24976a = whiteListRealmObject;
            this.f24977b = eVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11106a a = this.f24977b.m10264a();
            if (a != null) {
                a.mo10258b(this.f24976a);
            }
        }
    }

    public C11105e(List<? extends WhiteListRealmObject> list) {
        this.f24973b = list;
    }

    /* renamed from: a */
    public final AbstractC11106a m10264a() {
        return this.f24972a;
    }

    /* renamed from: a */
    public final String m10263a(Context context, String str) {
        String e = C14217x3.m2146e(context, str);
        String str2 = e;
        if (TextUtils.isEmpty(e)) {
            str2 = C14108o4.m2493a(str, true, false);
        }
        String str3 = str2;
        if (TextUtils.isEmpty(str2)) {
            str3 = C14206w4.m2225a((int) R$string.unknown_number);
        }
        C15149k.m383a((Object) str3, "title");
        return str3;
    }

    /* renamed from: a */
    public void onBindViewHolder(C11089c cVar, int i) {
        List<? extends WhiteListRealmObject> list;
        WhiteListRealmObject whiteListRealmObject;
        String str;
        C15149k.m377b(cVar, "holder");
        View view = cVar.itemView;
        if (view != null && (list = this.f24973b) != null && (whiteListRealmObject = (WhiteListRealmObject) list.get(i)) != null) {
            boolean z = !TextUtils.isEmpty(C14217x3.m2146e(view.getContext(), whiteListRealmObject.get_e164()));
            String str2 = null;
            if (z) {
                str = C14217x3.m2155c(view.getContext(), whiteListRealmObject.get_e164());
                CallUtils.m26576a((RoundImageView) view.findViewById(R$id.iv_metaphor), (ImageView) view.findViewById(R$id.iv_card_spam_icon), (RowInfo) null, str, CallUtils.EnumC4993l.WHITE_LIST);
            } else {
                ((RoundImageView) view.findViewById(R$id.iv_metaphor)).setImageResource(C13909c.m3071b().m3077v().m3069a());
                str = "";
            }
            ImageView imageView = (ImageView) view.findViewById(R$id.iv_card_spam_icon);
            C15149k.m383a((Object) imageView, "iv_card_spam_icon");
            imageView.setVisibility(8);
            if (TextUtils.isEmpty(whiteListRealmObject.get_e164())) {
                SizedTextView sizedTextView = (SizedTextView) view.findViewById(R$id.line_primary);
                C15149k.m383a((Object) sizedTextView, "line_primary");
                Context context = view.getContext();
                C15149k.m383a((Object) context, "context");
                sizedTextView.setText(m10263a(context, whiteListRealmObject.get_e164()));
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.line_secondary);
                C15149k.m383a((Object) linearLayout, "line_secondary");
                linearLayout.setVisibility(8);
            } else {
                cVar.m10283c(whiteListRealmObject.get_e164());
                if (!z) {
                    str = null;
                }
                cVar.m10287a(str);
                if (z) {
                    str2 = C14217x3.m2146e(view.getContext(), whiteListRealmObject.get_e164());
                }
                cVar.m10285b(str2);
                SizedTextView sizedTextView2 = (SizedTextView) view.findViewById(R$id.line_primary);
                C15149k.m383a((Object) sizedTextView2, "line_primary");
                sizedTextView2.setText(C14108o4.m2493a(whiteListRealmObject.get_e164(), true, false));
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R$id.line_secondary);
                C15149k.m383a((Object) linearLayout2, "line_secondary");
                linearLayout2.setVisibility(0);
                ProgressWheel progressWheel = (ProgressWheel) view.findViewById(R$id.line_secondary_waiting);
                C15149k.m383a((Object) progressWheel, "line_secondary_waiting");
                progressWheel.setVisibility(0);
                SizedTextView sizedTextView3 = (SizedTextView) view.findViewById(R$id.line_secondary_number);
                C15149k.m383a((Object) sizedTextView3, "line_secondary_number");
                sizedTextView3.setVisibility(8);
                C11052i.m10328e().m10340a(whiteListRealmObject.get_e164(), cVar.m10284c(), 0, EnumC11047e.CallLog);
            }
            ((ImageView) view.findViewById(R$id.iv_close)).setOnClickListener(new View$OnClickListenerC11107b(whiteListRealmObject, this, i, cVar));
            view.setOnClickListener(new View$OnClickListenerC11108c(whiteListRealmObject, this, i, cVar));
        }
    }

    /* renamed from: a */
    public final void m10261a(AbstractC11106a aVar) {
        this.f24972a = aVar;
    }

    /* renamed from: a */
    public final void m10260a(List<? extends WhiteListRealmObject> list) {
        this.f24973b = list;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends WhiteListRealmObject> list = this.f24973b;
        return list != null ? list.size() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C11089c onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        return new C11089c(viewGroup);
    }
}
