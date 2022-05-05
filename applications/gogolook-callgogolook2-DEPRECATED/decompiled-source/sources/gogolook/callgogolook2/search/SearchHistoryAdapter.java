package gogolook.callgogolook2.search;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.internal.Utils;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.search.TextSearchFragment;
import gogolook.callgogolook2.search.views.view.LabelViewHolder;
import gogolook.callgogolook2.search.views.view.LabelViewHolder_ViewBinding;
import gogolook.callgogolook2.search.views.view.SearchBarEditText;
import gogolook.callgogolook2.view.RoundImageView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p551p0.C13321e;
import p459j.p460a.p551p0.C13332i;
import p459j.p460a.p551p0.C13351n;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14325z1;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/SearchHistoryAdapter.class */
public class SearchHistoryAdapter extends RecyclerView.Adapter<HistoryViewHolder> {

    /* renamed from: a */
    public Context f12565a;

    /* renamed from: b */
    public Cursor f12566b;

    /* renamed from: c */
    public LayoutInflater f12567c;

    /* renamed from: d */
    public final long[] f12568d = {-1, -1, -1};

    /* renamed from: e */
    public int f12569e = -1;

    /* renamed from: f */
    public int f12570f = -1;

    /* renamed from: g */
    public int f12571g = -1;

    /* renamed from: h */
    public List<C13332i> f12572h;

    /* renamed from: i */
    public List<String> f12573i;

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/SearchHistoryAdapter$HistoryViewHolder.class */
    public class HistoryViewHolder extends LabelViewHolder {

        /* renamed from: a */
        public C11086o f12574a;

        /* renamed from: b */
        public String f12575b;
        @Nullable
        @BindView(R$id.iftv_call)
        public IconFontTextView call;
        @Nullable
        @BindView(R$id.iv_card_spam_icon)
        public ImageView cardSpamIcon;
        @Nullable
        @BindView(R$id.tv_date)
        public TextView date;
        @Nullable
        @BindView(R$id.iv_searchbar_delete_btn)
        public ImageView deleteButton;
        @Nullable
        @BindView(R$id.header_text)
        public TextView headerText;
        @Nullable
        @BindView(R$id.et_search_keyword)
        public SearchBarEditText keywordEdit;
        @Nullable
        @BindView(R$id.line_primary)
        public TextView linePrimary;
        @Nullable
        @BindView(R$id.line_secondary)
        public LinearLayout lineSecondary;
        @Nullable
        @BindView(R$id.line_secondary_number)
        public TextView lineSecondaryNumber;
        @Nullable
        @BindView(R$id.line_secondary_telecom)
        public TextView lineSecondaryTelecom;
        @Nullable
        @BindView(R$id.line_secondary_waiting)
        public View lineSecondaryWaiting;
        @Nullable
        @BindView(R$id.line_tertiary)
        public TextView lineTertiary;
        @Nullable
        @BindView(R$id.ll_item)
        public View llItem;
        @Nullable
        @BindView(R$id.ll_empty)
        public View mEmptyView;
        @Nullable
        @BindView(R$id.iv_metaphor)
        public RoundImageView metaphor;
        @Nullable
        @BindView(R$id.iv_searchbar_voice_btn)
        public ImageView voiceButton;

        /* renamed from: gogolook.callgogolook2.search.SearchHistoryAdapter$HistoryViewHolder$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/SearchHistoryAdapter$HistoryViewHolder$a.class */
        public class C5091a extends C11086o {
            public C5091a() {
            }

            @Override // p459j.p460a.p461a0.C11040b
            /* renamed from: b */
            public void mo1836b(String str, NumberInfo numberInfo) {
                RowInfo c = RowInfo.m28235c(str, numberInfo);
                String str2 = c.m28224h().name;
                String str3 = TextUtils.isEmpty(c.m28223i().name) ? "" : c.m28223i().name;
                String S = numberInfo.m28377S();
                HistoryViewHolder.this.cardSpamIcon.setVisibility(8);
                HistoryViewHolder historyViewHolder = HistoryViewHolder.this;
                historyViewHolder.linePrimary.setTextColor(ContextCompat.getColor(SearchHistoryAdapter.this.f12565a, 2131099964));
                HistoryViewHolder.this.linePrimary.setCompoundDrawablesWithIntrinsicBounds(0, 0, numberInfo.whoscall.favored ? R$drawable.call_favorite_green_icon : 0, 0);
                if (c != null) {
                    HistoryViewHolder historyViewHolder2 = HistoryViewHolder.this;
                    CallUtils.m26576a(historyViewHolder2.metaphor, historyViewHolder2.cardSpamIcon, c, historyViewHolder2.f12575b, CallUtils.EnumC4993l.SEARCH_RESULT_CACHE);
                    if (c.m28224h().isRed) {
                        HistoryViewHolder historyViewHolder3 = HistoryViewHolder.this;
                        historyViewHolder3.linePrimary.setTextColor(ContextCompat.getColor(SearchHistoryAdapter.this.f12565a, 2131099965));
                    }
                }
                HistoryViewHolder.this.linePrimary.setText(str2);
                if (!TextUtils.isEmpty(str3) || !TextUtils.isEmpty(S)) {
                    HistoryViewHolder.this.lineSecondaryNumber.setText(str3);
                    HistoryViewHolder.this.lineSecondaryNumber.setVisibility(TextUtils.isEmpty(str3) ? 8 : 0);
                    HistoryViewHolder.this.lineSecondaryTelecom.setText(S);
                    HistoryViewHolder.this.lineSecondaryTelecom.setVisibility(TextUtils.isEmpty(S) ? 8 : 0);
                } else {
                    HistoryViewHolder.this.lineSecondary.setVisibility(8);
                }
                if (!c.m28222j() || c.m28223i().type == RowInfo.Secondary.Type.COO_DESC) {
                    HistoryViewHolder.this.lineTertiary.setVisibility(8);
                    HistoryViewHolder.this.llItem.getLayoutParams().height = C13321e.m4261b();
                } else {
                    HistoryViewHolder.this.lineTertiary.setText(C14206w4.m2225a((int) R$string.calldialog_coo_desc));
                    HistoryViewHolder historyViewHolder4 = HistoryViewHolder.this;
                    historyViewHolder4.lineTertiary.setTextColor(ContextCompat.getColor(SearchHistoryAdapter.this.f12565a, 2131099965));
                    HistoryViewHolder.this.lineTertiary.setVisibility(0);
                    HistoryViewHolder.this.llItem.getLayoutParams().height = C13321e.m4262a();
                }
                HistoryViewHolder.this.lineSecondaryWaiting.setVisibility(8);
            }
        }

        public HistoryViewHolder(View view) {
            super(view);
        }

        /* renamed from: a */
        public final void m26369a() {
            this.f12574a = new C5091a();
        }
    }

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/SearchHistoryAdapter$HistoryViewHolder_ViewBinding.class */
    public class HistoryViewHolder_ViewBinding extends LabelViewHolder_ViewBinding {

        /* renamed from: b */
        public HistoryViewHolder f12578b;

        @UiThread
        public HistoryViewHolder_ViewBinding(HistoryViewHolder historyViewHolder, View view) {
            super(historyViewHolder, view);
            this.f12578b = historyViewHolder;
            historyViewHolder.llItem = view.findViewById(R$id.ll_item);
            historyViewHolder.metaphor = (RoundImageView) Utils.findOptionalViewAsType(view, R$id.iv_metaphor, "field 'metaphor'", RoundImageView.class);
            historyViewHolder.cardSpamIcon = (ImageView) Utils.findOptionalViewAsType(view, R$id.iv_card_spam_icon, "field 'cardSpamIcon'", ImageView.class);
            historyViewHolder.linePrimary = (TextView) Utils.findOptionalViewAsType(view, R$id.line_primary, "field 'linePrimary'", TextView.class);
            historyViewHolder.lineSecondary = (LinearLayout) Utils.findOptionalViewAsType(view, R$id.line_secondary, "field 'lineSecondary'", LinearLayout.class);
            historyViewHolder.lineSecondaryWaiting = view.findViewById(R$id.line_secondary_waiting);
            historyViewHolder.lineSecondaryNumber = (TextView) Utils.findOptionalViewAsType(view, R$id.line_secondary_number, "field 'lineSecondaryNumber'", TextView.class);
            historyViewHolder.lineSecondaryTelecom = (TextView) Utils.findOptionalViewAsType(view, R$id.line_secondary_telecom, "field 'lineSecondaryTelecom'", TextView.class);
            historyViewHolder.lineTertiary = (TextView) Utils.findOptionalViewAsType(view, R$id.line_tertiary, "field 'lineTertiary'", TextView.class);
            historyViewHolder.date = (TextView) Utils.findOptionalViewAsType(view, R$id.tv_date, "field 'date'", TextView.class);
            historyViewHolder.call = (IconFontTextView) Utils.findOptionalViewAsType(view, R$id.iftv_call, "field 'call'", IconFontTextView.class);
            historyViewHolder.keywordEdit = (SearchBarEditText) Utils.findOptionalViewAsType(view, R$id.et_search_keyword, "field 'keywordEdit'", SearchBarEditText.class);
            historyViewHolder.voiceButton = (ImageView) Utils.findOptionalViewAsType(view, R$id.iv_searchbar_voice_btn, "field 'voiceButton'", ImageView.class);
            historyViewHolder.deleteButton = (ImageView) Utils.findOptionalViewAsType(view, R$id.iv_searchbar_delete_btn, "field 'deleteButton'", ImageView.class);
            historyViewHolder.mEmptyView = view.findViewById(R$id.ll_empty);
            historyViewHolder.headerText = (TextView) Utils.findOptionalViewAsType(view, R$id.header_text, "field 'headerText'", TextView.class);
        }

        @Override // gogolook.callgogolook2.search.views.view.LabelViewHolder_ViewBinding, butterknife.Unbinder
        public void unbind() {
            HistoryViewHolder historyViewHolder = this.f12578b;
            if (historyViewHolder != null) {
                this.f12578b = null;
                historyViewHolder.llItem = null;
                historyViewHolder.metaphor = null;
                historyViewHolder.cardSpamIcon = null;
                historyViewHolder.linePrimary = null;
                historyViewHolder.lineSecondary = null;
                historyViewHolder.lineSecondaryWaiting = null;
                historyViewHolder.lineSecondaryNumber = null;
                historyViewHolder.lineSecondaryTelecom = null;
                historyViewHolder.lineTertiary = null;
                historyViewHolder.date = null;
                historyViewHolder.call = null;
                historyViewHolder.keywordEdit = null;
                historyViewHolder.voiceButton = null;
                historyViewHolder.deleteButton = null;
                historyViewHolder.mEmptyView = null;
                historyViewHolder.headerText = null;
                super.unbind();
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    public SearchHistoryAdapter(Context context, Cursor cursor, List<C13332i> list, List<String> list2) {
        this.f12572h = new ArrayList();
        this.f12573i = new ArrayList();
        this.f12565a = context;
        this.f12567c = LayoutInflater.from(this.f12565a);
        this.f12566b = cursor;
        this.f12572h = list;
        this.f12573i = list2;
        m26389a();
        m26371g();
    }

    /* renamed from: a */
    public long m26387a(Cursor cursor) {
        int i;
        if (cursor == null || cursor.isClosed() || (i = this.f12571g) <= -1) {
            return 0L;
        }
        return cursor.getLong(i);
    }

    /* renamed from: a */
    public Cursor m26388a(int i) {
        this.f12566b.moveToPosition(i);
        return this.f12566b;
    }

    /* renamed from: a */
    public final void m26389a() {
        long currentTimeMillis = System.currentTimeMillis();
        long[] jArr = this.f12568d;
        if (jArr[0] == -1 || currentTimeMillis > jArr[0] + AdUtils.ONE_DAY) {
            Calendar instance = Calendar.getInstance();
            instance.setTimeInMillis(currentTimeMillis);
            int i = instance.get(1);
            int i2 = instance.get(2);
            int i3 = instance.get(5);
            instance.clear();
            instance.set(i, i2, i3);
            this.f12568d[0] = instance.getTimeInMillis();
            long[] jArr2 = this.f12568d;
            jArr2[1] = jArr2[0] - AdUtils.ONE_DAY;
        }
    }

    /* renamed from: a */
    public void onBindViewHolder(HistoryViewHolder historyViewHolder, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == 0 || itemViewType == 1) {
            m26384a((LabelViewHolder) historyViewHolder, itemViewType);
        } else if (itemViewType == 3) {
            this.f12566b.moveToPosition(i - m26377d());
            String d = m26376d(this.f12566b);
            boolean a = C14108o4.m2499a((CharSequence) d);
            boolean f = m26372f(this.f12566b);
            historyViewHolder.date.setVisibility(8);
            historyViewHolder.call.setVisibility(0);
            historyViewHolder.call.setEnabled(a);
            historyViewHolder.cardSpamIcon.setVisibility(8);
            String str = null;
            if (f) {
                str = C14217x3.m2155c(this.f12565a, C14108o4.m2474l(m26376d(this.f12566b)));
                CallUtils.m26576a(historyViewHolder.metaphor, historyViewHolder.cardSpamIcon, (RowInfo) null, str, CallUtils.EnumC4993l.SEARCH_RESULT);
            } else {
                historyViewHolder.metaphor.setImageResource(C13909c.m3071b().m3077v().m3069a());
            }
            historyViewHolder.f12575b = str;
            if (TextUtils.isEmpty(d)) {
                historyViewHolder.linePrimary.setText(m26374e(this.f12566b));
                historyViewHolder.lineSecondary.setVisibility(8);
                historyViewHolder.lineTertiary.setVisibility(8);
            } else {
                historyViewHolder.linePrimary.setText(d);
                historyViewHolder.lineSecondary.setVisibility(0);
                historyViewHolder.lineSecondaryWaiting.setVisibility(0);
                historyViewHolder.lineSecondaryNumber.setVisibility(8);
                historyViewHolder.lineSecondaryTelecom.setVisibility(8);
                historyViewHolder.lineTertiary.setVisibility(8);
                C11052i.m10328e().m10340a(d, historyViewHolder.f12574a, 0, EnumC11047e.CallLog);
            }
            if (historyViewHolder.date != null) {
                long a2 = m26387a(this.f12566b);
                TextView textView = historyViewHolder.date;
                long[] jArr = this.f12568d;
                textView.setText(a2 >= jArr[0] ? C14206w4.m2225a((int) R$string.calllog_session_today) : a2 >= jArr[1] ? C14206w4.m2225a((int) R$string.calllog_session_yesterday) : C14123p4.m2419e(a2));
            }
        } else if (itemViewType == 2) {
            historyViewHolder.headerText.setText(C14206w4.m2225a((int) R$string.whoscall_search_history_label));
        }
    }

    /* renamed from: a */
    public final void m26384a(LabelViewHolder labelViewHolder, int i) {
        boolean z = i == 0;
        labelViewHolder.itemContainer.removeAllViews();
        C14037j3.m2731a().mo2704a(new C14325z1(labelViewHolder, z ? this.f12573i : this.f12572h, z ? 1 : 2, false, z ? TextSearchFragment.EnumC5122j1.RECENT : TextSearchFragment.EnumC5122j1.TRENDING));
        if (!z) {
            View view = new View(this.f12565a);
            view.setBackgroundColor(C13351n.m4136a().f30038H);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, C14217x3.m2201a(1.0f));
            layoutParams.topMargin = C13351n.m4136a().f30048R;
            int childCount = labelViewHolder.itemContainer.getChildCount();
            if (childCount == 2) {
                layoutParams.addRule(3, R$id.first_line);
            } else if (childCount == 3) {
                layoutParams.addRule(3, R$id.second_line);
            }
            labelViewHolder.itemContainer.addView(view, layoutParams);
        }
    }

    /* renamed from: a */
    public void m26383a(List<String> list) {
        this.f12573i = list;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public final int m26382b() {
        Cursor cursor = this.f12566b;
        return cursor != null ? cursor.getCount() : 0;
    }

    /* renamed from: b */
    public String m26381b(Cursor cursor) {
        int i;
        if (cursor == null || cursor.isClosed() || (i = this.f12570f) <= -1) {
            return null;
        }
        return cursor.getString(i);
    }

    /* renamed from: b */
    public void m26380b(List<C13332i> list) {
        this.f12572h = list;
        notifyDataSetChanged();
    }

    /* renamed from: c */
    public int m26379c() {
        Cursor cursor = this.f12566b;
        if (cursor == null || cursor.getCount() <= 0) {
            return -1;
        }
        return m26377d();
    }

    /* renamed from: c */
    public String m26378c(Cursor cursor) {
        return C14217x3.m2146e(this.f12565a, m26376d(cursor));
    }

    /* renamed from: d */
    public int m26377d() {
        return (m26375e() ? 1 : 0) + (m26373f() ? 1 : 0) + (m26382b() >= 0 ? 1 : 0);
    }

    /* renamed from: d */
    public String m26376d(Cursor cursor) {
        int i;
        if (cursor == null || cursor.isClosed() || cursor.getCount() <= 0 || (i = this.f12569e) <= -1) {
            return null;
        }
        return cursor.getString(i);
    }

    /* renamed from: e */
    public final CharSequence m26374e(Cursor cursor) {
        String c = m26378c(cursor);
        String str = c;
        if (TextUtils.isEmpty(c)) {
            str = m26376d(cursor);
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = this.f12565a.getString(R$string.unknown_number);
        }
        return str2;
    }

    /* renamed from: e */
    public boolean m26375e() {
        List<String> list = this.f12573i;
        return list != null && list.size() > 0;
    }

    /* renamed from: f */
    public final boolean m26373f() {
        List<C13332i> list = this.f12572h;
        return list != null && list.size() > 0;
    }

    /* renamed from: f */
    public boolean m26372f(Cursor cursor) {
        return !TextUtils.isEmpty(m26378c(cursor));
    }

    /* renamed from: g */
    public final void m26371g() {
        this.f12566b.getColumnIndex("_id");
        this.f12569e = this.f12566b.getColumnIndex("_number");
        this.f12570f = this.f12566b.getColumnIndex("_e164");
        this.f12571g = this.f12566b.getColumnIndex("_searchtime");
        this.f12566b.getColumnIndex("_updatetime");
    }

    /* renamed from: g */
    public void m26370g(Cursor cursor) {
        Cursor cursor2 = this.f12566b;
        if (!(cursor2 == cursor || cursor2 == null || cursor2.isClosed())) {
            this.f12566b.close();
        }
        this.f12566b = cursor;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return m26377d() + m26382b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        boolean e = m26375e();
        boolean f = m26373f();
        int b = m26382b();
        if (i == 0 && e) {
            return 0;
        }
        if (!e ? i == 0 : i == 1) {
            if (f) {
                return 1;
            }
        }
        if (b > 0) {
            if (e) {
                if (f) {
                    if (i == 2) {
                        return 2;
                    }
                } else if (i == 1) {
                    return 2;
                }
            } else if (f) {
                if (i == 1) {
                    return 2;
                }
            } else if (i == 0) {
                return 2;
            }
        }
        return b == 0 ? 4 : 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public HistoryViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        HistoryViewHolder historyViewHolder;
        if (i == 0 || i == 1) {
            historyViewHolder = new HistoryViewHolder(this.f12567c.inflate(R$layout.text_search_label_listitem, viewGroup, false));
        } else if (i == 2) {
            historyViewHolder = new HistoryViewHolder(this.f12567c.inflate(R$layout.text_search_header_listitem, viewGroup, false));
        } else if (i == 3) {
            historyViewHolder = new HistoryViewHolder(this.f12567c.inflate(R$layout.text_search_general_listitem, viewGroup, false));
            historyViewHolder.m26369a();
        } else {
            historyViewHolder = i == 4 ? new HistoryViewHolder(this.f12567c.inflate(R$layout.text_search_empty_listitem, viewGroup, false)) : null;
        }
        return historyViewHolder;
    }
}
