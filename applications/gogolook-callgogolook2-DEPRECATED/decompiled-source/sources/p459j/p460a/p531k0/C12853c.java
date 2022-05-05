package p459j.p460a.p531k0;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.gogolook.commonlib.view.IconFontTextView;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p569u0.DialogC13661d;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
/* renamed from: j.a.k0.c */
/* loaded from: classes3-dex2jar.jar:j/a/k0/c.class */
public class C12853c extends RecyclerView.Adapter<C12854a> {

    /* renamed from: a */
    public LayoutInflater f29051a;

    /* renamed from: b */
    public Context f29052b;

    /* renamed from: c */
    public List<Map<EnumC14329a, String>> f29053c;

    /* renamed from: d */
    public List<Integer> f29054d;

    /* renamed from: e */
    public Set<String> f29055e = new HashSet();

    /* renamed from: f */
    public boolean f29056f;

    /* renamed from: g */
    public boolean f29057g;

    /* renamed from: j.a.k0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/c$a.class */
    public class C12854a extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public RecycleSafeImageView f29058a;

        /* renamed from: b */
        public ImageView f29059b;

        /* renamed from: c */
        public TextView f29060c;

        /* renamed from: d */
        public ImageView f29061d;

        /* renamed from: e */
        public TextView f29062e;

        /* renamed from: f */
        public TextView f29063f;

        /* renamed from: g */
        public TextView f29064g;

        /* renamed from: h */
        public View f29065h;

        /* renamed from: i */
        public TextView f29066i;

        /* renamed from: j */
        public TextView f29067j;

        /* renamed from: k */
        public View f29068k;

        /* renamed from: l */
        public IconFontTextView f29069l;

        /* renamed from: m */
        public View f29070m;

        /* renamed from: n */
        public View f29071n;

        /* renamed from: o */
        public View f29072o;

        /* renamed from: p */
        public View f29073p;

        /* renamed from: q */
        public Button f29074q;

        /* renamed from: r */
        public C11086o f29075r;

        /* renamed from: s */
        public Map<EnumC14329a, String> f29076s;

        /* renamed from: t */
        public String f29077t;

        /* renamed from: u */
        public String f29078u;

        /* renamed from: v */
        public String f29079v;

        /* renamed from: w */
        public int f29080w = -1;

        /* renamed from: j.a.k0.c$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/k0/c$a$a.class */
        public class View$OnClickListenerC12855a implements View.OnClickListener {
            public View$OnClickListenerC12855a(C12853c cVar) {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C13673f fVar = new C13673f();
                fVar.f30648b = "in_app_dialog";
                fVar.f30652f = "{img_fav_tab_tip}";
                fVar.f30653g = null;
                fVar.f30656j = new C13673f.C13676c();
                fVar.f30656j.f30676d = C14206w4.m2225a((int) R$string.favorite_tutorial_button);
                fVar.f30656j.f30675c = true;
                fVar.f30657k = new C13673f.C13675b();
                fVar.f30657k.f30675c = true;
                fVar.f30667u = 1;
                fVar.f30651e = C14206w4.m2225a((int) R$string.favorite_tutorial_content);
                fVar.f30650d = C14206w4.m2225a((int) R$string.favorite_tutorial_title);
                DialogC13661d dVar = new DialogC13661d(C12853c.this.f29052b, fVar);
                if (!dVar.m3733b()) {
                    dVar.show();
                }
            }
        }

        /* renamed from: j.a.k0.c$a$b */
        /* loaded from: classes3-dex2jar.jar:j/a/k0/c$a$b.class */
        public class C12856b extends C11086o {
            public C12856b(C12853c cVar) {
            }

            @Override // p459j.p460a.p461a0.C11040b
            /* renamed from: b */
            public void mo1836b(String str, NumberInfo numberInfo) {
                C12854a.this.f29068k.setVisibility(8);
                if (TextUtils.equals(C12854a.this.f29076s.get(EnumC14329a.NUMBER), str)) {
                    RowInfo c = RowInfo.m28235c(str, numberInfo);
                    if (c != null) {
                        if (c.m28224h() != null) {
                            C12854a.this.f29062e.setText(c.m28224h().name);
                        }
                        if (c.m28223i() == null || TextUtils.isEmpty(c.m28223i().name)) {
                            C12854a.this.f29063f.setVisibility(8);
                        } else {
                            C12854a.this.f29063f.setVisibility(0);
                            C12854a.this.f29063f.setText(c.m28223i().name);
                        }
                    }
                    C12854a.this.f29064g.setText(numberInfo.m28328g());
                    if (C14123p4.m2436a(numberInfo.m28293u()) == null) {
                        C12854a.this.f29066i.setVisibility(8);
                    } else {
                        String v = numberInfo.m28291v();
                        C12854a.this.f29066i.setBackgroundColor(Color.parseColor(v.equalsIgnoreCase(C14206w4.m2225a((int) R$string.ndp_hour_close)) ? "#aaaaaa" : "#1cbd39"));
                        C12854a.this.f29066i.setText(v);
                        C12854a.this.f29066i.setVisibility(0);
                    }
                    C12854a.this.f29059b.setVisibility(8);
                    C12854a aVar = C12854a.this;
                    CallUtils.m26576a(aVar.f29058a, aVar.f29059b, c, aVar.f29077t, CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
                    if (numberInfo == null || !numberInfo.m28308m0() || TextUtils.isEmpty(numberInfo.m28307n())) {
                        C12854a.this.f29067j.setVisibility(8);
                    } else {
                        C12854a.this.f29067j.setText(numberInfo.m28307n());
                        C12854a.this.f29067j.setVisibility(0);
                    }
                    C12854a.this.m5139a();
                }
            }
        }

        /* renamed from: j.a.k0.c$a$c */
        /* loaded from: classes3-dex2jar.jar:j/a/k0/c$a$c.class */
        public class View$OnTouchListenerC12857c implements View.OnTouchListener {
            public View$OnTouchListenerC12857c(C12853c cVar) {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                try {
                    ((RippleDrawable) C12854a.this.f29070m.getBackground()).setHotspot(motionEvent.getX(), motionEvent.getY());
                    return false;
                } catch (Exception e) {
                    e.printStackTrace();
                    return false;
                }
            }
        }

        public C12854a(View view) {
            super(view);
            this.f29060c = (TextView) view.findViewById(R$id.tv_category);
            this.f29061d = (ImageView) view.findViewById(R$id.iv_pin);
            this.f29062e = (TextView) view.findViewById(R$id.favorite_item_title);
            this.f29063f = (TextView) view.findViewById(R$id.favorite_item_number);
            this.f29064g = (TextView) view.findViewById(R$id.favorite_item_address);
            this.f29066i = (TextView) view.findViewById(R$id.favorite_item_opennow);
            this.f29067j = (TextView) view.findViewById(R$id.favorite_description);
            this.f29065h = view.findViewById(R$id.ll_card_desc_container);
            this.f29069l = (IconFontTextView) view.findViewById(R$id.favorite_list_call_iftv);
            this.f29068k = view.findViewById(R$id.line_secondary_waiting);
            this.f29070m = view.findViewById(R$id.rl_background);
            this.f29071n = view.findViewById(R$id.rl_more_container);
            this.f29072o = view.findViewById(R$id.iv_more);
            this.f29073p = view.findViewById(R$id.ll_divider);
            this.f29058a = (RecycleSafeImageView) view.findViewById(R$id.iv_metaphor);
            this.f29059b = (ImageView) view.findViewById(R$id.iv_card_spam_icon);
            this.f29074q = (Button) view.findViewById(R$id.btn_learn_more_button);
            Button button = this.f29074q;
            if (button != null) {
                button.setOnClickListener(new View$OnClickListenerC12855a(C12853c.this));
            }
            if (this.f29060c != null) {
                this.f29075r = new C12856b(C12853c.this);
                if (C14017g4.m2805s() && view != null) {
                    view.setOnTouchListener(new View$OnTouchListenerC12857c(C12853c.this));
                }
            }
        }

        /* renamed from: a */
        public final void m5139a() {
            View view;
            TextView textView = this.f29066i;
            if (textView != null && this.f29067j != null && (view = this.f29065h) != null) {
                view.setVisibility((textView.getVisibility() == 0 || this.f29067j.getVisibility() == 0) ? 0 : 8);
            }
        }
    }

    public C12853c(Context context, @NonNull List<Map<EnumC14329a, String>> list, boolean z) {
        boolean z2 = false;
        this.f29056f = false;
        this.f29057g = false;
        this.f29052b = context;
        this.f29053c = list;
        this.f29056f = z;
        this.f29051a = LayoutInflater.from(context);
        this.f29055e.clear();
        this.f29057g = (list == null || list.size() == 0) ? true : z2;
        m5144a();
    }

    /* renamed from: a */
    public final void m5144a() {
        synchronized (this) {
            this.f29054d = new ArrayList();
            if (this.f29053c != null) {
                String str = null;
                int i = 0;
                for (int i2 = 0; i2 < this.f29053c.size(); i2++) {
                    if (!this.f29056f) {
                        this.f29054d.add(Integer.valueOf(i2));
                        str = str;
                    } else {
                        Map<EnumC14329a, String> map = this.f29053c.get(i2);
                        if (TextUtils.equals(str, map.get(EnumC14329a.PARENT_ID))) {
                            int i3 = i + 1;
                            if (i3 > 3) {
                                i = i3;
                                str = str;
                                if (!this.f29055e.contains(str)) {
                                }
                            }
                            this.f29054d.add(Integer.valueOf(i2));
                            i = i3;
                            str = str;
                        } else {
                            if (i > 3) {
                                this.f29054d.add(Integer.valueOf(-this.f29054d.remove(this.f29054d.size() - 1).intValue()));
                            }
                            str = map.get(EnumC14329a.PARENT_ID);
                            this.f29054d.add(Integer.valueOf(i2));
                            i = 1;
                        }
                    }
                }
                if (i > 3) {
                    this.f29054d.add(Integer.valueOf(-this.f29054d.remove(this.f29054d.size() - 1).intValue()));
                }
            }
        }
    }

    /* renamed from: a */
    public void onBindViewHolder(C12854a aVar, int i) {
        String str;
        aVar.f29078u = null;
        aVar.f29079v = null;
        int i2 = -1;
        aVar.f29080w = -1;
        List<Integer> list = this.f29054d;
        if (list != null && i >= 0 && i < list.size()) {
            boolean z = this.f29054d.get(i).intValue() < 0;
            int abs = Math.abs(this.f29054d.get(i).intValue());
            List<Map<EnumC14329a, String>> list2 = this.f29053c;
            if (list2 != null && abs >= 0 && abs < list2.size()) {
                aVar.f29076s = this.f29053c.get(abs);
                aVar.m5139a();
                aVar.f29078u = aVar.f29076s.get(EnumC14329a.E164NUMBER);
                aVar.f29079v = aVar.f29076s.get(EnumC14329a.NUMBER);
                aVar.f29080w = abs;
                if (i < this.f29054d.size() - 1) {
                    i2 = Math.abs(this.f29054d.get(i + 1).intValue());
                }
                Map<EnumC14329a, String> map = (i2 < 0 || i2 >= this.f29053c.size()) ? null : this.f29053c.get(i2);
                boolean z2 = !z && map != null && !map.containsKey(EnumC14329a.CATEGORY_FAVORITE_COUNT);
                String str2 = aVar.f29076s.get(EnumC14329a.PARENT_ID);
                String str3 = aVar.f29076s.get(EnumC14329a.CATEGORY_FAVORITE_COUNT);
                if (TextUtils.isEmpty(str3) || Integer.parseInt(str3) <= 0 || TextUtils.isEmpty(str2)) {
                    aVar.f29060c.setVisibility(8);
                    aVar.f29061d.setVisibility(8);
                    aVar.f29061d.setOnClickListener(null);
                } else {
                    boolean equals = TextUtils.equals(aVar.f29076s.get(EnumC14329a.PINNED), "1");
                    boolean equals2 = TextUtils.equals("0", str2);
                    TextView textView = aVar.f29060c;
                    StringBuilder sb = new StringBuilder();
                    sb.append(equals2 ? C14206w4.m2225a((int) R$string.group_none) : str2);
                    sb.append(" (");
                    sb.append(str3);
                    sb.append(")");
                    textView.setText(sb.toString());
                    aVar.f29060c.setVisibility(0);
                    if (equals2 || !this.f29056f) {
                        aVar.f29061d.setVisibility(8);
                        aVar.f29061d.setOnClickListener(null);
                    } else {
                        aVar.f29061d.setVisibility(0);
                        aVar.f29061d.setImageResource(equals ? R$drawable.icon_pin_enable : R$drawable.icon_pin_disable);
                    }
                }
                aVar.f29071n.setVisibility(z ? 0 : 8);
                aVar.f29073p.setVisibility(z2 ? 0 : 8);
                if (z) {
                    aVar.f29072o.setRotation(this.f29055e.contains(str2) ? 180.0f : 0.0f);
                }
                if (aVar.f29076s.get(EnumC14329a.GROUP_NAME) != null) {
                    aVar.f29058a.setVisibility(8);
                    aVar.f29069l.setVisibility(8);
                    aVar.f29063f.setVisibility(8);
                    aVar.f29062e.setText(aVar.f29076s.get(EnumC14329a.GROUP_NAME));
                    return;
                }
                aVar.f29058a.setVisibility(0);
                aVar.f29069l.setVisibility(0);
                aVar.f29069l.setEnabled(!C14108o4.m2496a(aVar.f29079v, C14108o4.EnumC14110b.OTHERS));
                aVar.f29063f.setVisibility(0);
                aVar.f29059b.setVisibility(8);
                aVar.f29058a.setImageResource(C13909c.m3071b().m3077v().m3069a());
                if (aVar.f29076s.get(EnumC14329a.CONTACT_NAME) != null) {
                    aVar.f29062e.setText(aVar.f29076s.get(EnumC14329a.CONTACT_NAME));
                    aVar.f29063f.setText(aVar.f29076s.get(EnumC14329a.NUMBER));
                    aVar.f29063f.setVisibility(0);
                    str = C14217x3.m2155c(this.f29052b, aVar.f29076s.get(EnumC14329a.E164NUMBER));
                    CallUtils.m26576a(aVar.f29058a, aVar.f29059b, (RowInfo) null, str, CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
                } else {
                    aVar.f29062e.setText(aVar.f29076s.get(EnumC14329a.NUMBER));
                    aVar.f29063f.setVisibility(8);
                    aVar.f29058a.setImageResource(C13909c.m3071b().m3077v().m3069a());
                    str = null;
                }
                aVar.f29068k.setVisibility(0);
                aVar.f29077t = str;
                C11052i.m10328e().m10340a(aVar.f29076s.get(EnumC14329a.NUMBER), aVar.f29075r, 0, EnumC11047e.Favorite);
            }
        }
    }

    /* renamed from: a */
    public void m5141a(String str) {
        if (this.f29055e.contains(str)) {
            this.f29055e.remove(str);
            C14299q.m1685p(MraidParser.MRAID_COMMAND_CLOSE);
            C12861f.m5126b("click_area", MraidParser.MRAID_COMMAND_CLOSE);
        } else {
            this.f29055e.add(str);
            C14299q.m1685p(MraidParser.MRAID_COMMAND_EXPAND);
            C12861f.m5126b("click_area", "exp");
        }
        m5144a();
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public void m5140a(List<Map<EnumC14329a, String>> list, boolean z) {
        this.f29053c = list;
        this.f29056f = z;
        this.f29057g = list == null || list.size() == 0;
        m5144a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<Integer> list = this.f29054d;
        return (list == null || this.f29057g) ? 1 : list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (this.f29054d == null || this.f29057g) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C12854a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C12854a(this.f29051a.inflate(i == 0 ? R$layout.favorite_listitem : R$layout.listitem_empty, viewGroup, false));
    }
}
