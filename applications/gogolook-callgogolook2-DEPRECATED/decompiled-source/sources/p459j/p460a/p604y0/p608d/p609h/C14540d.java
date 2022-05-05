package p459j.p460a.p604y0.p608d.p609h;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.SparseArrayCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import gogolook.callgogolook2.vas.main.adapter.VasMessageItem;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p604y0.p608d.C14508b;
import p459j.p460a.p604y0.p608d.p609h.C14552i;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\b\u0010\u0019\u001a\u00020\u0014H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0014H\u0016J\b\u0010\u001c\u001a\u00020\u0014H\u0002J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0014H\u0016J\u0018\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0014H\u0016J<\u0010$\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u00182\u001a\u0010%\u001a\u0016\u0012\u0004\u0012\u00020&\u0018\u00010\nj\n\u0012\u0004\u0012\u00020&\u0018\u0001`\f2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020(J4\u0010*\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u00182\u001a\u0010%\u001a\u0016\u0012\u0004\u0012\u00020&\u0018\u00010\nj\n\u0012\u0004\u0012\u00020&\u0018\u0001`\f2\b\u0010'\u001a\u0004\u0018\u00010(J\u000e\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020\u0014R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\b0\u0007X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��¨\u0006."}, m815d2 = {"Lgogolook/callgogolook2/vas/main/adapter/VasAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "sharedVasViewModel", "Lgogolook/callgogolook2/vas/main/SharedVasViewModel;", "(Lgogolook/callgogolook2/vas/main/SharedVasViewModel;)V", "delegateAdapters", "Landroidx/collection/SparseArrayCompat;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "items", "Ljava/util/ArrayList;", "Lgogolook/callgogolook2/adapter/ViewData;", "Lkotlin/collections/ArrayList;", "listener", "Lgogolook/callgogolook2/vas/main/adapter/VasAdapter$onVasMsgActionListener;", "getListener", "()Lgogolook/callgogolook2/vas/main/adapter/VasAdapter$onVasMsgActionListener;", "setListener", "(Lgogolook/callgogolook2/vas/main/adapter/VasAdapter$onVasMsgActionListener;)V", "sectionColor", "", "genShortDisclaimerMessage", "Landroid/text/SpannableStringBuilder;", "context", "Landroid/content/Context;", "getItemCount", "getItemViewType", "position", "getLastPosition", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setVasMessageItemList", "vasMessageList", "Lgogolook/callgogolook2/vas/main/adapter/VasMessageItem;", "period", "", "price", "setVasMessagePromotionList", "setVasSectionColor", TtmlNode.ATTR_TTS_COLOR, "onVasMsgActionListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.h.d */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/d.class */
public final class C14540d extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: c */
    public int f32491c;

    /* renamed from: d */
    public AbstractC14543c f32492d;

    /* renamed from: b */
    public SparseArrayCompat<AbstractC12392b<RecyclerView.ViewHolder>> f32490b = new SparseArrayCompat<>();

    /* renamed from: a */
    public ArrayList<AbstractC12391a> f32489a = new ArrayList<>();

    /* renamed from: j.a.y0.d.h.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/d$a.class */
    public static final class C14541a extends ClickableSpan {
        public C14541a() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            AbstractC14543c a = C14540d.this.m1147a();
            if (a != null) {
                a.mo1141a();
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            if (textPaint != null) {
                textPaint.setUnderlineText(true);
            }
        }
    }

    /* renamed from: j.a.y0.d.h.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/d$b.class */
    public static final class C14542b implements C14552i.AbstractC14556c {
        public C14542b() {
        }

        @Override // p459j.p460a.p604y0.p608d.p609h.C14552i.AbstractC14556c
        /* renamed from: a */
        public void mo1128a(String str) {
            C15149k.m377b(str, "number");
            AbstractC14543c a = C14540d.this.m1147a();
            if (a != null) {
                a.mo1140a(str);
            }
        }
    }

    /* renamed from: j.a.y0.d.h.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/d$c.class */
    public interface AbstractC14543c {
        /* renamed from: a */
        void mo1141a();

        /* renamed from: a */
        void mo1140a(String str);
    }

    public C14540d(C14508b bVar) {
        this.f32490b.put(C14537a.f32487g.m1152b(), new C14544e(bVar));
        this.f32490b.put(C14537a.f32487g.m1151c(), new C14548g(bVar));
        this.f32490b.put(C14537a.f32487g.m1153a(), new C14561l());
        this.f32490b.put(C14537a.f32487g.m1150d(), new C14552i());
        this.f32490b.put(C14537a.f32487g.m1149e(), new C14557j(bVar));
        this.f32490b.put(C14537a.f32487g.m1148f(), new C14564n());
    }

    /* renamed from: a */
    public final SpannableStringBuilder m1145a(Context context) {
        C15149k.m377b(context, "context");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(context.getString(R$string.vas_result_subscription_explanation));
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) context.getString(R$string.vas_result_subscription_explanation_detail));
        spannableStringBuilder.setSpan(new C14541a(), length, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    /* renamed from: a */
    public final AbstractC14543c m1147a() {
        return this.f32492d;
    }

    /* renamed from: a */
    public final void m1146a(int i) {
        this.f32491c = i;
    }

    /* renamed from: a */
    public final void m1144a(Context context, ArrayList<VasMessageItem> arrayList, String str) {
        C15149k.m377b(context, "context");
        this.f32489a.clear();
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it = arrayList.iterator();
            while (true) {
                boolean z = true;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (2 != ((VasMessageItem) next).m25942u()) {
                    z = false;
                }
                if (z) {
                    arrayList2.add(next);
                }
            }
            if (!arrayList2.isEmpty()) {
                this.f32489a.add(new C14560k(str, 0, 2, null));
                ArrayList<AbstractC12391a> arrayList3 = this.f32489a;
                arrayList3.add(new C14563m(context.getString(R$string.vas_result_promotion_subtitle) + " (" + arrayList2.size() + ")", this.f32491c, 0, 4, null));
                this.f32489a.addAll(arrayList2);
            }
            this.f32489a.add(new C14566o(m1145a(context), context.getResources().getColor(2131099919), 0, 4, null));
        }
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m1143a(Context context, ArrayList<VasMessageItem> arrayList, String str, String str2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str2, "price");
        this.f32489a.clear();
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator<VasMessageItem> it = arrayList.iterator();
            while (it.hasNext()) {
                VasMessageItem next = it.next();
                if (next.m25942u() == 0) {
                    arrayList2.add(next);
                } else if (next.m25942u() == 1) {
                    arrayList3.add(next);
                }
            }
            boolean isEmpty = arrayList3.isEmpty();
            boolean isEmpty2 = arrayList2.isEmpty();
            this.f32489a.add(str2.contentEquals(VasDetectionActivity.f12989f.m25953b()) ? new C14551h(str, 0, 2, null) : new C14547f(str, str2, 0, 4, null));
            if (!isEmpty) {
                ArrayList<AbstractC12391a> arrayList4 = this.f32489a;
                arrayList4.add(new C14563m(context.getString(R$string.vas_result_subscription_subtitle1) + " (" + arrayList3.size() + ")", this.f32491c, 0, 4, null));
                this.f32489a.addAll(arrayList3);
            }
            if (!isEmpty2) {
                ArrayList<AbstractC12391a> arrayList5 = this.f32489a;
                arrayList5.add(new C14563m(context.getString(R$string.vas_result_subscription_subtitle2) + " (" + arrayList2.size() + ")", this.f32491c, 0, 4, null));
                this.f32489a.addAll(arrayList2);
            }
            this.f32489a.add(new C14566o(m1145a(context), context.getResources().getColor(2131099919), 0, 4, null));
        }
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m1142a(AbstractC14543c cVar) {
        this.f32492d = cVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f32489a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.f32489a.get(i).getViewType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        int itemViewType = getItemViewType(i);
        AbstractC12392b<RecyclerView.ViewHolder> bVar = this.f32490b.get(getItemViewType(i));
        if (bVar != null) {
            AbstractC12392b<RecyclerView.ViewHolder> bVar2 = bVar;
            AbstractC12391a aVar = this.f32489a.get(i);
            C15149k.m383a((Object) aVar, "this.items[position]");
            bVar2.mo1119a(viewHolder, aVar);
            if (itemViewType == C14537a.f32487g.m1150d()) {
                AbstractC12392b<RecyclerView.ViewHolder> bVar3 = this.f32490b.get(getItemViewType(i));
                if (bVar3 != null) {
                    ((C14552i) bVar3).m1131a(new C14542b());
                    return;
                }
                throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.adapter.VasMessageDelegateAdapter");
            }
            return;
        }
        C15149k.m378b();
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        AbstractC12392b<RecyclerView.ViewHolder> bVar = this.f32490b.get(i);
        if (bVar != null) {
            return bVar.mo1120a(viewGroup);
        }
        C15149k.m378b();
        throw null;
    }
}
