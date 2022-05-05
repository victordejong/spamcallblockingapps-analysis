package com.tmobile.services.nameid.p007ui.search;

import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.model.CallerDetailsData;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.SearchItem;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.p007ui.search.NameIDSearch;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.StringParsingUtils;
import com.tmobile.services.nameid.utility.WidgetUtils;
import de.hdodenhof.circleimageview.CircleImageView;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001:\u0001,B\u000f\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b*\u0010+J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J#\u0010\t\u001a\u00020\b2\n\u0010\u0006\u001a\u00060\u0005R\u00020��2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000e\u001a\u00060\u0005R\u00020��2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0013J\u001b\u0010\u0019\u001a\u00020\b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u0010*\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010%\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010$R\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\u00028\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearchAdapter;", "androidx/recyclerview/widget/RecyclerView$Adapter", "", "getItemCount", "()I", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchAdapter$ViewHolder;", "holder", "position", "", "onBindViewHolder", "(Lcom/tmobile/services/nameid/ui/search/NameIDSearchAdapter$ViewHolder;I)V", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lcom/tmobile/services/nameid/ui/search/NameIDSearchAdapter$ViewHolder;", "", "fromManage", "setIsFromManage", "(Z)V", "recentOnly", "setIsRecentOnly", "", "Lcom/tmobile/services/nameid/model/SearchItem;", "searchItems", "showSearchItems", "(Ljava/util/List;)V", "", "exists", "(Ljava/lang/String;)Z", "LOG_TAG", "Ljava/lang/String;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$AdapterClickListener;", "callback", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$AdapterClickListener;", "isFromManage", "Z", "isRecentOnly", FirebaseAnalytics.Param.ITEMS, "Ljava/util/List;", "viewHolderLayoutResId", "I", "<init>", "(Lcom/tmobile/services/nameid/ui/search/NameIDSearch$AdapterClickListener;)V", "ViewHolder", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchAdapter */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchAdapter.class */
public final class NameIDSearchAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a */
    private final String f14144a = "NameIDSearchAdapter#";

    /* renamed from: b */
    private final int f14145b = C1517R.layout.search_item;

    /* renamed from: c */
    private List<? extends SearchItem> f14146c;

    /* renamed from: d */
    private boolean f14147d;

    /* renamed from: e */
    private boolean f14148e;

    /* renamed from: f */
    private final NameIDSearch.AdapterClickListener f14149f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u000bJ\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u0018R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010#R\u0016\u0010%\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010#R\u0016\u0010&\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010#¨\u0006+"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearchAdapter$ViewHolder;", "androidx/recyclerview/widget/RecyclerView$ViewHolder", "", "contactUri", "", "setContactImage", "(Ljava/lang/String;)Z", "Lcom/tmobile/services/nameid/model/SearchItem;", "item", "", "setDataDefault", "(Lcom/tmobile/services/nameid/model/SearchItem;)V", "setDataInitialManage", "setDisplayColor", "setDisplayText", "Lcom/tmobile/services/nameid/model/CallerDetailsData;", "callerDetails", "setImageFromCallerDetails", "(Lcom/tmobile/services/nameid/model/CallerDetailsData;)V", "info", "setInitials", "(Ljava/lang/String;)V", "Landroid/widget/ImageView;", "callerType", "Landroid/widget/ImageView;", "Lde/hdodenhof/circleimageview/CircleImageView;", "contactPicture", "Lde/hdodenhof/circleimageview/CircleImageView;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "initialsBackground", "Landroid/widget/TextView;", "initialsTextView", "Landroid/widget/TextView;", "nameOrNumber", "viewDate", "viewType", "Landroid/view/View;", "view", "<init>", "(Lcom/tmobile/services/nameid/ui/search/NameIDSearchAdapter;Landroid/view/View;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchAdapter$ViewHolder */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchAdapter$ViewHolder.class */
    public final class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        private final TextView f14150a;

        /* renamed from: b */
        private final TextView f14151b;

        /* renamed from: c */
        private final TextView f14152c;

        /* renamed from: d */
        private final CircleImageView f14153d;

        /* renamed from: e */
        private final ImageView f14154e;

        /* renamed from: f */
        private final ImageView f14155f;

        /* renamed from: g */
        private final TextView f14156g;

        /* renamed from: h */
        final /* synthetic */ NameIDSearchAdapter f14157h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull NameIDSearchAdapter nameIDSearchAdapter, View view) {
            super(view);
            Intrinsics.m1830e(view, "view");
            this.f14157h = nameIDSearchAdapter;
            View findViewById = view.findViewById(C1517R.C1520id.text_view_search_item_name);
            Intrinsics.m1831d(findViewById, "view.findViewById(R.id.text_view_search_item_name)");
            this.f14150a = (TextView) findViewById;
            View findViewById2 = view.findViewById(C1517R.C1520id.text_view_search_item_type);
            Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.text_view_search_item_type)");
            this.f14151b = (TextView) findViewById2;
            View findViewById3 = view.findViewById(C1517R.C1520id.text_view_search_item_time);
            Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.text_view_search_item_time)");
            this.f14152c = (TextView) findViewById3;
            View findViewById4 = view.findViewById(C1517R.C1520id.image_search_item_icon);
            Intrinsics.m1831d(findViewById4, "view.findViewById(R.id.image_search_item_icon)");
            this.f14153d = (CircleImageView) findViewById4;
            View findViewById5 = view.findViewById(C1517R.C1520id.image_search_item_type);
            Intrinsics.m1831d(findViewById5, "view.findViewById(R.id.image_search_item_type)");
            this.f14154e = (ImageView) findViewById5;
            View findViewById6 = view.findViewById(C1517R.C1520id.search_list_initials_background);
            Intrinsics.m1831d(findViewById6, "view.findViewById(R.id.s…list_initials_background)");
            this.f14155f = (ImageView) findViewById6;
            View findViewById7 = view.findViewById(C1517R.C1520id.search_list_initials_text_view);
            Intrinsics.m1831d(findViewById7, "view.findViewById(R.id.s…_list_initials_text_view)");
            this.f14156g = (TextView) findViewById7;
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchAdapter.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ViewHolder.this.f14157h.f14149f.mo5964a((SearchItem) ViewHolder.this.f14157h.f14146c.get(ViewHolder.this.getAdapterPosition()));
                }
            });
        }

        /* renamed from: a */
        private final Context m6025a() {
            View itemView = this.itemView;
            Intrinsics.m1831d(itemView, "itemView");
            Context context = itemView.getContext();
            Intrinsics.m1831d(context, "itemView.context");
            return context;
        }

        /* renamed from: b */
        private final boolean m6024b(String str) {
            boolean z = false;
            if (!this.f14157h.m6031h(str)) {
                return false;
            }
            try {
                this.f14153d.setImageBitmap(MediaStore.Images.Media.getBitmap(m6025a().getContentResolver(), Uri.parse(str)));
                z = true;
            } catch (Exception e) {
                String str2 = this.f14157h.f14144a;
                LogUtil.m5631p(str2, "Error setting contact image: " + e.getStackTrace());
            }
            return z;
        }

        /* renamed from: e */
        private final void m6021e(SearchItem searchItem) {
            if (searchItem.shouldHighlight()) {
                if (searchItem.isScammer() && searchItem.hasContact()) {
                    this.f14150a.setTextColor(m6025a().getResources().getColor(C1517R.C1518color.black_3));
                    this.f14151b.setTextColor(m6025a().getResources().getColor(2131034197));
                    return;
                }
                this.f14150a.setTextColor(m6025a().getResources().getColor(2131034197));
                this.f14151b.setTextColor(m6025a().getResources().getColor(C1517R.C1518color.black_3));
                return;
            }
            this.f14150a.setTextColor(m6025a().getResources().getColor(C1517R.C1518color.black_3));
            this.f14151b.setTextColor(m6025a().getResources().getColor(C1517R.C1518color.black_3));
        }

        /* renamed from: f */
        private final void m6020f(SearchItem searchItem) {
            String primaryDisplayInfo = searchItem.getPrimaryDisplayInfo(m6025a());
            String secondaryDisplayInfo = searchItem.getSecondaryDisplayInfo(m6025a());
            boolean h = this.f14157h.m6031h(primaryDisplayInfo);
            boolean h2 = this.f14157h.m6031h(secondaryDisplayInfo);
            if (h) {
                this.f14150a.setText(primaryDisplayInfo);
                if (h2) {
                    this.f14151b.setText(secondaryDisplayInfo);
                } else {
                    this.f14151b.setText("");
                }
            } else if (h2) {
                this.f14150a.setText(secondaryDisplayInfo);
                this.f14151b.setText("");
            } else {
                this.f14150a.setText("");
                this.f14151b.setText("");
            }
        }

        /* renamed from: g */
        private final void m6019g(CallerDetailsData callerDetailsData) {
            this.f14153d.setImageResource(WidgetUtils.m5220o(callerDetailsData.isScammer(), this.f14157h.f14147d && callerDetailsData.shouldHighlight()));
        }

        /* renamed from: h */
        private final void m6018h(String str) {
            String b = StringParsingUtils.m5338b(str);
            Intrinsics.m1831d(b, "StringParsingUtils.getInitials(info)");
            if (this.f14157h.m6031h(b)) {
                this.f14156g.setVisibility(0);
                this.f14155f.setVisibility(0);
                this.f14153d.setVisibility(8);
                this.f14156g.setText(b);
            }
        }

        /* renamed from: c */
        public final void m6023c(@NotNull SearchItem item) {
            Intrinsics.m1830e(item, "item");
            this.f14153d.setVisibility(0);
            this.f14156g.setVisibility(8);
            this.f14155f.setVisibility(8);
            this.f14154e.setVisibility(8);
            m6020f(item);
            m6021e(item);
            Contact contact = item.getContact();
            CallerDetailsData callerDetailsData = item.getCallerDetailsData();
            if (contact != null) {
                if (!m6024b(contact.getUri())) {
                    String primaryDisplayInfo = item.getPrimaryDisplayInfo(m6025a());
                    Intrinsics.m1831d(primaryDisplayInfo, "item.getPrimaryDisplayInfo(context)");
                    m6018h(primaryDisplayInfo);
                }
                this.f14152c.setText(m6025a().getResources().getString(C1517R.string.search_item_from_contacts));
            } else if (callerDetailsData != null) {
                m6019g(callerDetailsData);
                this.f14152c.setText(m6025a().getResources().getString(C1517R.string.search_item_from_activity));
            } else {
                String str = this.f14157h.f14144a;
                LogUtil.m5643d(str, "No contact or caller details data at position #" + getAdapterPosition());
            }
        }

        /* renamed from: d */
        public final void m6022d(@NotNull SearchItem item) {
            Intrinsics.m1830e(item, "item");
            this.f14153d.setVisibility(0);
            this.f14156g.setVisibility(8);
            this.f14155f.setVisibility(8);
            this.f14154e.setVisibility(0);
            m6020f(item);
            m6021e(item);
            Contact contact = item.getContact();
            CallerDetailsData callerDetailsData = item.getCallerDetailsData();
            Date date = callerDetailsData != null ? callerDetailsData.getDate() : null;
            boolean z = false;
            if (date != null) {
                z = false;
                if (!Intrinsics.m1834a(date, new Date(0L))) {
                    z = true;
                }
            }
            this.f14152c.setText(z ? DateUtils.m5790e(date, m6025a()) : "");
            if (callerDetailsData instanceof ActivityItem) {
                ActivityItem.Type fromValue = ActivityItem.Type.fromValue(((ActivityItem) callerDetailsData).getType());
                Context l = MainApplication.m7528l();
                Intrinsics.m1832c(l);
                this.f14154e.setImageDrawable(WidgetUtils.m5226k(l, fromValue, item.shouldHighlight()));
                this.f14154e.setContentDescription(WidgetUtils.m5211x(m6025a(), fromValue));
            }
            if (contact != null) {
                if (!m6024b(contact.getUri())) {
                    String primaryDisplayInfo = item.getPrimaryDisplayInfo(m6025a());
                    Intrinsics.m1831d(primaryDisplayInfo, "item.getPrimaryDisplayInfo(context)");
                    m6018h(primaryDisplayInfo);
                }
            } else if (callerDetailsData != null) {
                m6019g(callerDetailsData);
            } else {
                LogUtil.m5643d(this.f14157h.f14144a, "No contact or caller details data at position #" + getAdapterPosition());
            }
        }
    }

    public NameIDSearchAdapter(@NotNull NameIDSearch.AdapterClickListener callback) {
        List<? extends SearchItem> f;
        Intrinsics.m1830e(callback, "callback");
        this.f14149f = callback;
        f = CollectionsKt__CollectionsKt.m2175f();
        this.f14146c = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if ((!r0) != false) goto L_0x0014;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6031h(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0012
            r0 = r4
            boolean r0 = kotlin.text.StringsKt.m1515r(r0)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0012
            goto L_0x0014
        L_0x0012:
            r0 = 0
            r5 = r0
        L_0x0014:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.p007ui.search.NameIDSearchAdapter.m6031h(java.lang.String):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f14146c.size();
    }

    /* renamed from: i */
    public void onBindViewHolder(@NotNull ViewHolder holder, int i) {
        Intrinsics.m1830e(holder, "holder");
        SearchItem searchItem = (SearchItem) this.f14146c.get(i);
        if (searchItem == null) {
            String str = this.f14144a;
            LogUtil.m5643d(str, "No SearchItem at position #" + i);
        } else if (!this.f14147d || !this.f14148e) {
            holder.m6023c(searchItem);
        } else {
            holder.m6022d(searchItem);
        }
    }

    @NotNull
    /* renamed from: j */
    public ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i) {
        Intrinsics.m1830e(parent, "parent");
        View view = LayoutInflater.from(parent.getContext()).inflate(this.f14145b, parent, false);
        Intrinsics.m1831d(view, "view");
        return new ViewHolder(this, view);
    }

    /* renamed from: k */
    public final void m6028k(boolean z) {
        this.f14147d = z;
        notifyDataSetChanged();
    }

    /* renamed from: l */
    public final void m6027l(boolean z) {
        this.f14148e = z;
    }

    /* renamed from: m */
    public final void m6026m(@NotNull List<? extends SearchItem> searchItems) {
        Intrinsics.m1830e(searchItems, "searchItems");
        this.f14146c = searchItems;
        notifyDataSetChanged();
    }
}
