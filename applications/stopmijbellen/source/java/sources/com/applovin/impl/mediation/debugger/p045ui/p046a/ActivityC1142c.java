package com.applovin.impl.mediation.debugger.p045ui.p046a;

import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.mediation.debugger.p041a.p042a.C1118a;
import com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1167a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1176e;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
import com.applovin.sdk.C1583R;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.applovin.impl.mediation.debugger.ui.a.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/a/c.class */
public class ActivityC1142c extends ActivityC1130a {

    /* renamed from: a */
    private List<C1118a> f4129a;

    /* renamed from: b */
    private C1408l f4130b;

    /* renamed from: c */
    private AbstractView$OnClickListenerC1173d f4131c;

    /* renamed from: d */
    private List<C1169c> f4132d;

    /* renamed from: e */
    private ListView f4133e;

    /* renamed from: a */
    private List<C1169c> m6320a(List<C1118a> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (C1118a c1118a : list) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ID\t\t\t\t\t\t", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(c1118a.m6410a(), -16777216));
            spannableStringBuilder.append((CharSequence) new SpannedString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("FORMAT  ", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(c1118a.m6407c(), -16777216));
            arrayList.add(C1169c.m6256a(C1169c.EnumC1172b.DETAIL).m6239a(StringUtils.createSpannedString(c1118a.m6408b(), -16777216, 18, 1)).m6235b(new SpannedString(spannableStringBuilder)).m6240a(this).m6237a(true).m6242a());
        }
        return arrayList;
    }

    public void initialize(final List<C1118a> list, final C1408l c1408l) {
        this.f4129a = list;
        this.f4130b = c1408l;
        this.f4132d = m6320a(list);
        AbstractView$OnClickListenerC1173d abstractView$OnClickListenerC1173d = new AbstractView$OnClickListenerC1173d(this) { // from class: com.applovin.impl.mediation.debugger.ui.a.c.1
            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
            /* renamed from: a */
            public int mo6218a(int i) {
                return list.size();
            }

            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
            /* renamed from: b */
            public int mo6217b() {
                return 1;
            }

            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
            /* renamed from: b */
            public C1169c mo6216b(int i) {
                return new C1176e("");
            }

            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
            /* renamed from: c */
            public List<C1169c> mo6215c(int i) {
                return ActivityC1142c.this.f4132d;
            }
        };
        this.f4131c = abstractView$OnClickListenerC1173d;
        abstractView$OnClickListenerC1173d.m6226a(new AbstractView$OnClickListenerC1173d.AbstractC1175a() { // from class: com.applovin.impl.mediation.debugger.ui.a.c.2
            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d.AbstractC1175a
            /* renamed from: a */
            public void mo6214a(final C1167a c1167a, C1169c c1169c) {
                ActivityC1142c.this.startActivity(MaxDebuggerAdUnitDetailActivity.class, c1408l.m5491ad(), new ActivityC1130a.AbstractC1132a<MaxDebuggerAdUnitDetailActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.a.c.2.1
                    /* renamed from: a */
                    public void mo6279a(MaxDebuggerAdUnitDetailActivity maxDebuggerAdUnitDetailActivity) {
                        maxDebuggerAdUnitDetailActivity.initialize((C1118a) list.get(c1167a.m6261b()), null, c1408l);
                    }
                });
            }
        });
        this.f4131c.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Ad Units");
        setContentView(C1583R.layout.list_view);
        ListView listView = (ListView) findViewById(C1583R.C1586id.listView);
        this.f4133e = listView;
        listView.setAdapter((ListAdapter) this.f4131c);
    }
}
