package p459j.p460a.p551p0;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.text.Html;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.LatLng;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.TextSearchResultEntry;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.search.TextSearchFragment;
import gogolook.callgogolook2.search.views.view.ResultViewHolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14325z1;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
/* renamed from: j.a.p0.g */
/* loaded from: classes3-dex2jar.jar:j/a/p0/g.class */
public class C13324g extends RecyclerView.Adapter<C13328d> {

    /* renamed from: a */
    public String f29989a;

    /* renamed from: b */
    public int f29990b;

    /* renamed from: c */
    public ArrayList<TextSearchResultEntry> f29991c;

    /* renamed from: d */
    public Context f29992d;

    /* renamed from: e */
    public LayoutInflater f29993e;

    /* renamed from: f */
    public double f29994f;

    /* renamed from: g */
    public double f29995g;

    /* renamed from: h */
    public int f29996h;

    /* renamed from: i */
    public int f29997i;

    /* renamed from: j */
    public AbstractC13326b f29998j;

    /* renamed from: k */
    public AbstractC13327c f29999k;

    /* renamed from: l */
    public ArrayList<LatLng> f30000l = new ArrayList<>();

    /* renamed from: j.a.p0.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/g$a.class */
    public class View$OnClickListenerC13325a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ TextSearchResultEntry f30001a;

        /* renamed from: b */
        public final /* synthetic */ int f30002b;

        public View$OnClickListenerC13325a(TextSearchResultEntry textSearchResultEntry, int i) {
            this.f30001a = textSearchResultEntry;
            this.f30002b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C13324g.this.f29998j.mo4214a(this.f30001a, "List", this.f30002b);
        }
    }

    /* renamed from: j.a.p0.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/g$b.class */
    public interface AbstractC13326b {
        /* renamed from: a */
        void mo4214a(TextSearchResultEntry textSearchResultEntry, String str, int i);
    }

    /* renamed from: j.a.p0.g$c */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/g$c.class */
    public interface AbstractC13327c {
        /* renamed from: a */
        void mo4213a();
    }

    /* renamed from: j.a.p0.g$d */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/g$d.class */
    public class C13328d extends ResultViewHolder {

        /* renamed from: j.a.p0.g$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/p0/g$d$a.class */
        public class C13329a extends C11086o {
            public C13329a() {
            }

            @Override // p459j.p460a.p461a0.C11040b
            /* renamed from: b */
            public void mo1836b(String str, NumberInfo numberInfo) {
                RowInfo c = RowInfo.m28235c(str, numberInfo);
                String str2 = c.m28224h().name;
                String str3 = TextUtils.isEmpty(c.m28223i().name) ? "" : c.m28223i().name;
                String S = numberInfo.m28377S();
                C13328d.this.cardSpamIcon.setVisibility(8);
                C13328d dVar = C13328d.this;
                dVar.linePrimary.setTextColor(ContextCompat.getColor(C13324g.this.f29992d, 2131099964));
                C13328d.this.linePrimary.setCompoundDrawablesWithIntrinsicBounds(0, 0, numberInfo.whoscall.favored ? R$drawable.call_favorite_green_icon : 0, 0);
                if (c != null) {
                    C13328d dVar2 = C13328d.this;
                    CallUtils.m26576a(dVar2.metaphor, dVar2.cardSpamIcon, c, dVar2.f12749b, CallUtils.EnumC4993l.SEARCH_RESULT_CACHE);
                    if (c.m28224h().isRed) {
                        C13328d dVar3 = C13328d.this;
                        dVar3.linePrimary.setTextColor(ContextCompat.getColor(C13324g.this.f29992d, 2131099965));
                    }
                }
                C13328d dVar4 = C13328d.this;
                TextView textView = dVar4.linePrimary;
                C13324g gVar = C13324g.this;
                textView.setText(gVar.m4232a(false, str2, gVar.f29989a));
                if (!TextUtils.isEmpty(str3) || !TextUtils.isEmpty(S)) {
                    C13328d dVar5 = C13328d.this;
                    TextView textView2 = dVar5.lineSecondaryNumber;
                    C13324g gVar2 = C13324g.this;
                    textView2.setText(gVar2.m4232a(true, str3, gVar2.f29989a));
                    C13328d.this.lineSecondaryNumber.setVisibility(TextUtils.isEmpty(str3) ? 8 : 0);
                    C13328d.this.lineSecondaryTelecom.setText(S);
                    C13328d.this.lineSecondaryTelecom.setVisibility(TextUtils.isEmpty(S) ? 8 : 0);
                } else {
                    C13328d.this.lineSecondary.setVisibility(8);
                }
                if (!c.m28222j() || c.m28223i().type == RowInfo.Secondary.Type.COO_DESC) {
                    C13328d.this.lineTertiary.setVisibility(8);
                    C13328d.this.llItem.getLayoutParams().height = C13321e.m4261b();
                } else {
                    C13328d.this.lineTertiary.setText(C14206w4.m2225a((int) R$string.calldialog_coo_desc));
                    C13328d dVar6 = C13328d.this;
                    dVar6.lineTertiary.setTextColor(ContextCompat.getColor(C13324g.this.f29992d, 2131099965));
                    C13328d.this.lineTertiary.setVisibility(0);
                    C13328d.this.llItem.getLayoutParams().height = C13321e.m4262a();
                }
                C13328d.this.lineSecondaryWaiting.setVisibility(8);
                C13322f.m4257a(C13324g.this.f29989a, C13328d.this.f12750c, numberInfo.m28393C());
            }
        }

        /* renamed from: j.a.p0.g$d$b */
        /* loaded from: classes3-dex2jar.jar:j/a/p0/g$d$b.class */
        public class C13330b extends C11086o {
            public C13330b() {
            }

            @Override // p459j.p460a.p461a0.C11040b
            /* renamed from: b */
            public void mo1836b(String str, NumberInfo numberInfo) {
                RowInfo c = RowInfo.m28235c(str, numberInfo);
                if (c != null) {
                    C13328d dVar = C13328d.this;
                    CallUtils.m26576a(dVar.metaphor, dVar.cardSpamIcon, c, dVar.f12749b, CallUtils.EnumC4993l.SEARCH_RESULT_CACHE);
                }
            }
        }

        public C13328d(View view) {
            super(view);
        }

        /* renamed from: a */
        public final void m4212a() {
            this.f12748a = new C13329a();
        }

        /* renamed from: b */
        public final void m4210b() {
            this.f12748a = new C13330b();
        }

        /* renamed from: c */
        public final void m4208c() {
            this.linePrimary.setSingleLine(false);
        }
    }

    public C13324g(Context context, ArrayList<TextSearchResultEntry> arrayList) {
        this.f29990b = -1;
        this.f29991c = new ArrayList<>();
        this.f29996h = -1;
        this.f29997i = 0;
        this.f29992d = context;
        this.f29993e = LayoutInflater.from(context);
        notifyItemRangeRemoved(0, this.f29991c.size());
        this.f29991c = arrayList;
        notifyItemRangeInserted(0, this.f29991c.size());
        ArrayList<TextSearchResultEntry> arrayList2 = this.f29991c;
        if (arrayList2 == null || arrayList2.size() <= 0) {
            this.f29990b = -1;
        } else {
            ArrayList<TextSearchResultEntry> arrayList3 = this.f29991c;
            this.f29990b = arrayList3.get(arrayList3.size() - 1).listType;
        }
        this.f29996h = -1;
        this.f29997i = 0;
        new Handler();
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final SpannableString m4232a(boolean z, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        SpannableString spannableString = new SpannableString(str);
        if (TextUtils.isEmpty(str2)) {
            return spannableString;
        }
        for (String str3 : str2.split("\\s+")) {
            String replaceAll = str3.replaceAll("[^\\p{L}\\d\\s_]", "");
            if (!C14217x3.m2160b(replaceAll)) {
                Matcher matcher = Pattern.compile("(?i)".concat(replaceAll)).matcher(spannableString);
                if (matcher.find()) {
                    int start = matcher.start();
                    int end = matcher.end();
                    if (z) {
                        spannableString.setSpan(new StyleSpan(1), start, end, 33);
                    }
                    spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#26b500")), start, end, 33);
                } else if (str2.startsWith("+")) {
                    return m4232a(z, str, str2.substring(1));
                }
            }
        }
        return spannableString;
    }

    /* renamed from: a */
    public final String m4240a(String str) {
        return C14217x3.m2146e(this.f29992d, str);
    }

    /* renamed from: a */
    public final String m4236a(ArrayList arrayList) {
        boolean z;
        List<C14099o3.C14106f> d = C14099o3.m2510n().m2526d();
        StringBuilder sb = new StringBuilder();
        for (C14099o3.C14106f fVar : d) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                String str = (String) it.next();
                if (TextUtils.equals(str, fVar.f31599c)) {
                    z = true;
                    break;
                }
                for (C14099o3.C14104d dVar : fVar.f31600d) {
                    if (TextUtils.equals(str, dVar.f31592b)) {
                        arrayList2.add(dVar.f31591a);
                    }
                }
            }
            if (z || !arrayList2.isEmpty()) {
                if (sb.length() != 0) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
                sb.append(fVar.f31598b);
                if (!z) {
                    sb.append(" ( ");
                    sb.append((String) arrayList2.get(0));
                    for (int i = 2; i < arrayList2.size(); i++) {
                        sb.append(UserProfile.CARD_CATE_SEPARATOR);
                        sb.append((String) arrayList2.get(i));
                    }
                    sb.append(" )");
                }
            }
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.insert(0, this.f29992d.getString(R$string.ndp_sarea_title) + " : ");
        return sb.toString();
    }

    /* renamed from: a */
    public final void m4250a() {
        this.f29999k.mo4213a();
    }

    /* renamed from: a */
    public void m4249a(int i) {
        this.f29990b = i;
    }

    /* renamed from: a */
    public final void m4248a(ResultViewHolder resultViewHolder) {
        resultViewHolder.headerText.setText(C14206w4.m2225a(C14217x3.m2137h(this.f29992d) ? R$string.whoscall_search_result_label : R$string.whoscall_search_offline_results));
    }

    /* renamed from: a */
    public final void m4247a(ResultViewHolder resultViewHolder, int i) {
        TextSearchResultEntry textSearchResultEntry = this.f29991c.get(i);
        resultViewHolder.f12750c = textSearchResultEntry.listType;
        C13351n a = C13351n.m4136a();
        resultViewHolder.itemContainer.removeAllViews();
        C14037j3.m2731a().mo2704a(new C14325z1(resultViewHolder, textSearchResultEntry.autoCompleteLabel, 3, true, TextSearchFragment.EnumC5122j1.AUTO_COMPLETE));
        int childCount = resultViewHolder.itemContainer.getChildCount();
        View view = new View(this.f29992d);
        view.setBackgroundColor(a.f30038H);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, C14217x3.m2201a(1.0f));
        layoutParams.topMargin = a.f30048R;
        if (childCount == 2) {
            layoutParams.addRule(3, R$id.first_line);
        } else if (childCount == 3) {
            layoutParams.addRule(3, R$id.second_line);
        } else if (childCount == 4) {
            layoutParams.addRule(3, R$id.third_line);
        }
        resultViewHolder.itemContainer.addView(view, layoutParams);
        resultViewHolder.title.setText(C14206w4.m2225a((int) R$string.textsearch_before_typein_hot_searches));
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0273  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4246a(gogolook.callgogolook2.search.views.view.ResultViewHolder r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p551p0.C13324g.m4246a(gogolook.callgogolook2.search.views.view.ResultViewHolder, java.lang.String):void");
    }

    /* renamed from: a */
    public void m4245a(AbstractC13326b bVar) {
        this.f29998j = bVar;
    }

    /* renamed from: a */
    public void m4244a(AbstractC13327c cVar) {
        this.f29999k = cVar;
    }

    /* renamed from: a */
    public void onBindViewHolder(C13328d dVar, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == 0) {
            m4221d(dVar, i);
        } else if (itemViewType == 1) {
            m4247a((ResultViewHolder) dVar, i);
        } else if (itemViewType == 2 || getItemViewType(i) == 3) {
            m4229b(dVar, i);
        } else if (itemViewType == 4) {
            m4224c(dVar, i);
        } else if (itemViewType == 5) {
            m4250a();
        } else if (itemViewType == 6) {
            m4225c(dVar);
        } else if (itemViewType == 7) {
            m4230b(dVar);
        } else if (itemViewType == 8) {
            m4248a(dVar);
        }
    }

    /* renamed from: a */
    public void m4239a(String str, double d, double d2) {
        this.f29989a = str;
        this.f29994f = d;
        this.f29995g = d2;
    }

    /* renamed from: a */
    public void m4238a(String str, ArrayList<TextSearchResultEntry> arrayList, int i) {
        this.f29989a = str;
        notifyItemRangeRemoved(0, this.f29991c.size());
        this.f29991c = arrayList;
        notifyItemRangeInserted(0, this.f29991c.size());
        this.f29990b = i;
        this.f29996h = -1;
        this.f29997i = 0;
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public void m4237a(String str, List<TextSearchResultEntry> list, int i, boolean z) {
        if (this.f29990b <= i && list != null) {
            this.f29990b = i;
            boolean z2 = 2 == i;
            boolean z3 = 1 == i;
            if (z2) {
                TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
                if (z3) {
                    textSearchResultEntry.listType = 7;
                    this.f29991c.remove(textSearchResultEntry);
                }
                textSearchResultEntry.listType = 1;
                this.f29991c.remove(textSearchResultEntry);
                if (list.size() > 0) {
                    TextSearchResultEntry textSearchResultEntry2 = new TextSearchResultEntry();
                    textSearchResultEntry2.listType = 8;
                    this.f29991c.remove(textSearchResultEntry2);
                    this.f29991c.add(textSearchResultEntry2);
                }
            }
            this.f29989a = str;
            this.f29996h = -1;
            this.f29997i = 0;
            if (z) {
                for (TextSearchResultEntry textSearchResultEntry3 : list) {
                    textSearchResultEntry3.e164 = C14108o4.m2474l(textSearchResultEntry3.num);
                    if (!this.f29991c.contains(textSearchResultEntry3)) {
                        this.f29991c.add(textSearchResultEntry3);
                    }
                }
            } else {
                this.f29991c.addAll(list);
            }
            C13322f.m4258a(str, i, list.size());
            notifyDataSetChanged();
        }
    }

    /* renamed from: a */
    public void m4235a(ArrayList<TextSearchResultEntry> arrayList, int i, int i2, boolean z, TextSearchFragment.EnumC5125k1 k1Var) {
        boolean z2;
        if (this.f29990b <= i2) {
            this.f29990b = i2;
            this.f29996h = i;
            m4233a(z);
            if (arrayList.size() > 0) {
                TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
                textSearchResultEntry.listType = 8;
                if (!this.f29991c.contains(textSearchResultEntry)) {
                    this.f29991c.add(textSearchResultEntry);
                }
            }
            Iterator<TextSearchResultEntry> it = arrayList.iterator();
            int i3 = 0;
            while (it.hasNext()) {
                TextSearchResultEntry next = it.next();
                next.e164 = C14108o4.m2474l(next.num);
                if (!this.f29991c.contains(next)) {
                    if ("GPS_OFF".equals(next.name) || "NO_LOCATION".equals(next.name)) {
                        this.f29991c.add(0, next);
                    } else if (next.listType == 2) {
                        it.remove();
                    } else {
                        this.f29991c.add(next);
                        i3++;
                    }
                }
            }
            this.f29997i += i3;
            if (i3 > 0 && this.f29997i < this.f29996h) {
                TextSearchResultEntry textSearchResultEntry2 = new TextSearchResultEntry();
                textSearchResultEntry2.listType = 5;
                this.f29991c.add(textSearchResultEntry2);
            }
            ListIterator<TextSearchResultEntry> listIterator = this.f29991c.listIterator();
            TextSearchResultEntry textSearchResultEntry3 = null;
            while (true) {
                z2 = true;
                if (!listIterator.hasNext()) {
                    break;
                }
                TextSearchResultEntry next2 = listIterator.next();
                if (next2.lnglat.size() >= 2 && 0.0d != next2.lnglat.get(0).doubleValue() && 0.0d != next2.lnglat.get(1).doubleValue() && C14217x3.m2110w() && C13878a3.m3206l() && C14217x3.m2125l(this.f29992d)) {
                    textSearchResultEntry3 = new TextSearchResultEntry();
                    textSearchResultEntry3.listType = 6;
                    break;
                }
            }
            if (textSearchResultEntry3 == null) {
                z2 = false;
            }
            boolean l = C14217x3.m2125l(this.f29992d);
            boolean k = C14217x3.m2128k(this.f29992d);
            if (z2) {
                C14299q.m1756V0();
                this.f29991c.add(0, textSearchResultEntry3);
                TextSearchResultEntry textSearchResultEntry4 = new TextSearchResultEntry();
                textSearchResultEntry4.listType = 0;
                textSearchResultEntry4.name = "GPS_OFF";
                if (!this.f29991c.contains(textSearchResultEntry4)) {
                    textSearchResultEntry4.name = "NO_LOCATION";
                }
                this.f29991c.remove(textSearchResultEntry4);
            }
            C13322f.m4258a(this.f29989a, i2, i);
            String str = this.f29989a;
            if (this.f29996h == 0) {
                k1Var = TextSearchFragment.EnumC5125k1.NONE;
            }
            C14289m.m1886a(str, l, k, z2, k1Var);
            notifyDataSetChanged();
        }
    }

    /* renamed from: a */
    public final void m4234a(ArrayList<String> arrayList, ResultViewHolder resultViewHolder) {
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            m4246a(resultViewHolder, it.next());
        }
    }

    /* renamed from: a */
    public final void m4233a(boolean z) {
        if (!z) {
            TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
            TextSearchResultEntry textSearchResultEntry2 = new TextSearchResultEntry();
            textSearchResultEntry.listType = 5;
            textSearchResultEntry2.listType = 6;
            this.f29991c.remove(textSearchResultEntry);
            this.f29991c.remove(textSearchResultEntry2);
            return;
        }
        this.f29991c.clear();
    }

    /* renamed from: b */
    public void m4231b() {
        this.f30000l.clear();
        Iterator<TextSearchResultEntry> it = this.f29991c.iterator();
        while (it.hasNext()) {
            ArrayList<Double> arrayList = it.next().lnglat;
            if (arrayList.size() == 2) {
                this.f30000l.add(new LatLng(arrayList.get(1).doubleValue(), arrayList.get(0).doubleValue()));
            }
        }
    }

    /* renamed from: b */
    public final void m4230b(ResultViewHolder resultViewHolder) {
        resultViewHolder.linePrimary.setText(Html.fromHtml(C14206w4.m2225a((int) R$string.textsearch_external_noresults_text)));
    }

    /* renamed from: b */
    public final void m4229b(ResultViewHolder resultViewHolder, int i) {
        TextSearchResultEntry textSearchResultEntry = this.f29991c.get(i);
        String str = textSearchResultEntry.num;
        String str2 = textSearchResultEntry.name;
        resultViewHolder.f12750c = textSearchResultEntry.listType;
        boolean a = C14108o4.m2499a((CharSequence) str);
        boolean b = m4227b(str);
        resultViewHolder.date.setVisibility(8);
        resultViewHolder.call.setVisibility(0);
        resultViewHolder.call.setEnabled(a);
        resultViewHolder.cardSpamIcon.setVisibility(8);
        String str3 = null;
        if (b) {
            str3 = C14217x3.m2155c(this.f29992d, C14108o4.m2474l(str));
            CallUtils.m26576a(resultViewHolder.metaphor, resultViewHolder.cardSpamIcon, (RowInfo) null, str3, CallUtils.EnumC4993l.SEARCH_RESULT);
        } else {
            resultViewHolder.metaphor.setImageResource(C13909c.m3071b().m3077v().m3069a());
        }
        resultViewHolder.f12749b = str3;
        if (TextUtils.isEmpty(str)) {
            resultViewHolder.linePrimary.setText(m4232a(false, str2, this.f29989a));
            resultViewHolder.lineSecondary.setVisibility(8);
            resultViewHolder.lineTertiary.setVisibility(8);
            return;
        }
        resultViewHolder.linePrimary.setText(m4232a(true, str, this.f29989a));
        resultViewHolder.lineSecondary.setVisibility(0);
        resultViewHolder.lineSecondaryWaiting.setVisibility(0);
        resultViewHolder.lineSecondaryNumber.setVisibility(8);
        resultViewHolder.lineSecondaryTelecom.setVisibility(8);
        resultViewHolder.lineTertiary.setVisibility(8);
        C11052i.m10328e().m10340a(str, resultViewHolder.f12748a, 0, EnumC11047e.CallLog);
    }

    /* renamed from: b */
    public final boolean m4227b(String str) {
        return !TextUtils.isEmpty(m4240a(str));
    }

    /* renamed from: c */
    public int m4226c() {
        return this.f29996h;
    }

    /* renamed from: c */
    public final void m4225c(ResultViewHolder resultViewHolder) {
    }

    /* renamed from: c */
    public final void m4224c(ResultViewHolder resultViewHolder, int i) {
        double d;
        double d2;
        TextSearchResultEntry textSearchResultEntry = this.f29991c.get(i);
        resultViewHolder.f12750c = textSearchResultEntry.listType;
        String str = textSearchResultEntry.address;
        String str2 = textSearchResultEntry.name;
        String str3 = textSearchResultEntry.num;
        ArrayList<String> arrayList = textSearchResultEntry.matched_labels;
        if (textSearchResultEntry.lnglat.size() > 0) {
            d2 = textSearchResultEntry.lnglat.get(1).doubleValue();
            d = textSearchResultEntry.lnglat.get(0).doubleValue();
        } else {
            d2 = 0.0d;
            d = 0.0d;
        }
        int i2 = textSearchResultEntry.callCount;
        int i3 = textSearchResultEntry.favoriteCount;
        boolean a = C14108o4.m2499a((CharSequence) str3);
        boolean b = m4227b(str3);
        resultViewHolder.call.setVisibility(0);
        resultViewHolder.call.setEnabled(a);
        resultViewHolder.cardSpamIcon.setVisibility(8);
        String str4 = null;
        if (b) {
            str4 = C14217x3.m2155c(this.f29992d, C14108o4.m2474l(str3));
            CallUtils.m26576a(resultViewHolder.metaphor, resultViewHolder.cardSpamIcon, (RowInfo) null, str4, CallUtils.EnumC4993l.SEARCH_RESULT);
        } else {
            resultViewHolder.metaphor.setImageResource(C13909c.m3071b().m3077v().m3069a());
        }
        resultViewHolder.f12749b = str4;
        resultViewHolder.linePrimary.setText(m4232a(false, str2, this.f29989a));
        if (C14217x3.m2160b(str)) {
            int size = textSearchResultEntry.serviceAreas.size();
            if (size != 0) {
                resultViewHolder.lineSecondaryNumber.setText((size != 1 || !"all".equalsIgnoreCase(textSearchResultEntry.serviceAreas.get(0))) ? m4236a(textSearchResultEntry.serviceAreas) : C14206w4.m2225a((int) R$string.search_result_sarea_all));
            } else {
                resultViewHolder.lineSecondaryNumber.setText(C14108o4.m2493a(str3, true, false));
            }
        } else {
            resultViewHolder.lineSecondaryNumber.setText(str);
        }
        resultViewHolder.lineSecondaryTelecom.setVisibility(8);
        resultViewHolder.callTimes.setText(String.valueOf(i2));
        resultViewHolder.favoriteTimes.setText(String.valueOf(i3));
        if (d2 == 0.0d || d == 0.0d || this.f29994f == 0.0d || this.f29995g == 0.0d) {
            resultViewHolder.distance.setVisibility(8);
        } else {
            resultViewHolder.distance.setVisibility(0);
            resultViewHolder.distance.setText(C14217x3.m2192a(this.f29992d, textSearchResultEntry.distance));
        }
        resultViewHolder.callTimes.setTextColor(-10329502);
        resultViewHolder.favoriteTimes.setTextColor(-10329502);
        resultViewHolder.callTimes.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ic_txsearch_hotcall_n, 0, 0, 0);
        resultViewHolder.favoriteTimes.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ic_txsearch_fav_n, 0, 0, 0);
        int childCount = resultViewHolder.lineTertiaryContainer.getChildCount() - 1;
        if (resultViewHolder.lineTertiaryContainer.getChildAt(childCount) instanceof LinearLayout) {
            ((LinearLayout) resultViewHolder.lineTertiaryContainer.getChildAt(childCount)).removeAllViews();
        }
        if (resultViewHolder.lineFourthContainer.getChildCount() != 0) {
            resultViewHolder.lineFourthContainer.removeAllViews();
            resultViewHolder.lineFourthContainer.setVisibility(8);
        }
        if (arrayList.size() > 0) {
            m4234a(arrayList, resultViewHolder);
        } else {
            resultViewHolder.lineFourthContainer.setVisibility(8);
        }
        C11052i.m10328e().m10340a(str3, resultViewHolder.f12748a, 0, EnumC11047e.CallLog);
        resultViewHolder.call.setOnClickListener(new View$OnClickListenerC13325a(textSearchResultEntry, i));
    }

    /* renamed from: d */
    public int m4222d() {
        return this.f29990b;
    }

    /* renamed from: d */
    public final void m4221d(ResultViewHolder resultViewHolder, int i) {
        TextSearchResultEntry textSearchResultEntry = this.f29991c.get(i);
        resultViewHolder.f12750c = textSearchResultEntry.listType;
        if ("NO_NETWORK".equals(textSearchResultEntry.name)) {
            resultViewHolder.linePrimary.setText(C14206w4.m2225a((int) R$string.whoscall_search_no_internet_title));
            resultViewHolder.subTitle.setText(C14206w4.m2225a((int) R$string.whoscall_search_no_internet_subtitle));
            resultViewHolder.metaphor.setBackgroundResource(R$drawable.icon_no_internet);
            resultViewHolder.rightMetaphor.setVisibility(8);
        } else if ("GPS_OFF".equals(textSearchResultEntry.name)) {
            resultViewHolder.linePrimary.setText(C14206w4.m2225a((int) R$string.whoscall_search_no_gps_title));
            resultViewHolder.subTitle.setText(C14206w4.m2225a((int) R$string.whoscall_search_no_gps_subtitle));
            resultViewHolder.metaphor.setBackgroundResource(R$drawable.icon_gps_off);
            resultViewHolder.rightMetaphor.setVisibility(0);
            resultViewHolder.rightMetaphor.setBackgroundResource(R$drawable.icon_chevron_right);
        } else if ("NO_LOCATION".equals(textSearchResultEntry.name)) {
            resultViewHolder.linePrimary.setText(C14206w4.m2225a((int) R$string.textsearch_dialogue_connecterror_text));
            resultViewHolder.metaphor.setBackgroundResource(R$drawable.icon_gps_off);
        } else {
            resultViewHolder.linePrimary.setText(textSearchResultEntry.name);
            resultViewHolder.metaphor.setBackgroundResource(R$drawable.inapp_icon_search);
        }
    }

    /* renamed from: e */
    public int m4220e() {
        return (m4217h() ? 1 : 0) + (m4216i() ? 1 : 0) + (m4215j() ? 1 : 0);
    }

    /* renamed from: f */
    public ArrayList<TextSearchResultEntry> m4219f() {
        return this.f29991c;
    }

    /* renamed from: g */
    public int m4218g() {
        return this.f29997i;
    }

    public TextSearchResultEntry getItem(int i) {
        ArrayList<TextSearchResultEntry> arrayList = this.f29991c;
        if (arrayList == null || i < 0 || i >= arrayList.size()) {
            return null;
        }
        return this.f29991c.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f29991c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        ArrayList<TextSearchResultEntry> arrayList = this.f29991c;
        if (arrayList == null || i >= arrayList.size()) {
            return -1;
        }
        return this.f29991c.get(i).listType;
    }

    /* renamed from: h */
    public boolean m4217h() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 8;
        ArrayList<TextSearchResultEntry> arrayList = this.f29991c;
        return arrayList != null && arrayList.contains(textSearchResultEntry);
    }

    /* renamed from: i */
    public boolean m4216i() {
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.listType = 6;
        ArrayList<TextSearchResultEntry> arrayList = this.f29991c;
        return arrayList != null && arrayList.contains(textSearchResultEntry);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0059, code lost:
        if (r0 != false) goto L_0x005c;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m4215j() {
        /*
            r3 = this;
            gogolook.callgogolook2.gson.TextSearchResultEntry r0 = new gogolook.callgogolook2.gson.TextSearchResultEntry
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            r1 = 0
            r0.listType = r1
            r0 = r4
            java.lang.String r1 = "GPS_OFF"
            r0.name = r1
            r0 = r3
            java.util.ArrayList<gogolook.callgogolook2.gson.TextSearchResultEntry> r0 = r0.f29991c
            r1 = r4
            boolean r0 = r0.contains(r1)
            r6 = r0
            r0 = r4
            java.lang.String r1 = "NO_LOCATION"
            r0.name = r1
            r0 = r3
            java.util.ArrayList<gogolook.callgogolook2.gson.TextSearchResultEntry> r0 = r0.f29991c
            r1 = r4
            boolean r0 = r0.contains(r1)
            r7 = r0
            r0 = r4
            java.lang.String r1 = "NO_NETWORK"
            r0.name = r1
            r0 = r3
            java.util.ArrayList<gogolook.callgogolook2.gson.TextSearchResultEntry> r0 = r0.f29991c
            r1 = r4
            boolean r0 = r0.contains(r1)
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = r3
            java.util.ArrayList<gogolook.callgogolook2.gson.TextSearchResultEntry> r0 = r0.f29991c
            if (r0 == 0) goto L_0x005f
            r0 = r6
            if (r0 != 0) goto L_0x005c
            r0 = r7
            if (r0 != 0) goto L_0x005c
            r0 = r5
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x005f
        L_0x005c:
            r0 = 1
            r9 = r0
        L_0x005f:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p551p0.C13324g.m4215j():boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C13328d onCreateViewHolder(ViewGroup viewGroup, int i) {
        C13328d dVar;
        if (i == 0) {
            dVar = new C13328d(this.f29993e.inflate(R$layout.text_search_status_listitem, viewGroup, false));
            dVar.m4208c();
        } else if (i == 1) {
            dVar = new C13328d(this.f29993e.inflate(R$layout.text_search_label_listitem, viewGroup, false));
        } else if (i == 2 || i == 3) {
            dVar = new C13328d(this.f29993e.inflate(R$layout.text_search_general_listitem, viewGroup, false));
            dVar.m4212a();
        } else if (i == 4) {
            dVar = new C13328d(this.f29993e.inflate(R$layout.text_search_result_listitem, viewGroup, false));
            dVar.m4210b();
        } else {
            dVar = i == 5 ? new C13328d(this.f29993e.inflate(R$layout.progress_bar_more, viewGroup, false)) : i == 6 ? new C13328d(this.f29993e.inflate(R$layout.text_search_sticky_listitem, viewGroup, false)) : i == 7 ? new C13328d(this.f29993e.inflate(R$layout.text_search_hint_listitem, viewGroup, false)) : i == 8 ? new C13328d(this.f29993e.inflate(R$layout.text_search_header_listitem, viewGroup, false)) : i == 9 ? new C13328d(this.f29993e.inflate(R$layout.progress_bar_more, viewGroup, false)) : null;
        }
        return dVar;
    }
}
