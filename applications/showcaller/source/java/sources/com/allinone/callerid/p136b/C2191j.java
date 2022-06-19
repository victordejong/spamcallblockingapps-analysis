package com.allinone.callerid.p136b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$string;
import com.allinone.callerid.customview.ProgressWheel;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3809p0;
import com.github.clans.fab.FloatingActionButton;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.allinone.callerid.b.j */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/j.class */
public class C2191j extends BaseAdapter {

    /* renamed from: d */
    private final int f7644d;

    /* renamed from: e */
    private final int f7645e;

    /* renamed from: f */
    private Context f7646f;

    /* renamed from: g */
    private List<CallLogBean> f7647g;

    /* renamed from: h */
    private HashMap<String, Integer> f7648h;

    /* renamed from: i */
    private LayoutInflater f7649i;

    /* renamed from: j */
    private ListView f7650j;

    /* renamed from: k */
    C2197f f7651k;

    /* renamed from: l */
    private LinearLayout f7652l;

    /* renamed from: m */
    private FloatingActionButton f7653m;

    /* renamed from: n */
    private int f7654n;

    /* renamed from: o */
    private RelativeLayout f7655o;

    /* renamed from: p */
    private int f7656p;

    /* renamed from: q */
    private int f7657q;

    /* renamed from: r */
    private int f7658r;

    /* renamed from: s */
    private int f7659s;

    /* renamed from: com.allinone.callerid.b.j$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/j$a.class */
    class View$OnClickListenerC2192a implements View.OnClickListener {
        View$OnClickListenerC2192a() {
            C2191j.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* renamed from: com.allinone.callerid.b.j$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/j$b.class */
    class View$OnClickListenerC2193b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7661d;

        View$OnClickListenerC2193b(int i) {
            C2191j.this = r4;
            this.f7661d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2191j.this.f7650j.getOnItemClickListener();
            ListView listView = C2191j.this.f7650j;
            int i = this.f7661d;
            onItemClickListener.onItemClick(listView, view, i, C2191j.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.j$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/j$c.class */
    class View$OnLongClickListenerC2194c implements View.OnLongClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7663d;

        View$OnLongClickListenerC2194c(int i) {
            C2191j.this = r4;
            this.f7663d = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AdapterView.OnItemLongClickListener onItemLongClickListener = C2191j.this.f7650j.getOnItemLongClickListener();
            ListView listView = C2191j.this.f7650j;
            int i = this.f7663d;
            onItemLongClickListener.onItemLongClick(listView, view, i, C2191j.this.getItemId(i));
            return true;
        }
    }

    /* renamed from: com.allinone.callerid.b.j$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/j$d.class */
    class C2195d implements AbsListView.OnScrollListener {
        C2195d() {
            C2191j.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            try {
                if (i > C2191j.this.f7654n) {
                    if (C2191j.this.f7653m != null && !C2191j.this.f7653m.m22345y()) {
                        C2191j.this.f7653m.m22349u(true);
                    }
                } else if (i < C2191j.this.f7654n && C2191j.this.f7653m != null && C2191j.this.f7653m.m22345y()) {
                    C2191j.this.f7653m.m22373H(true);
                }
                C2191j.this.f7654n = i;
                if (C2191j.this.f7652l == null) {
                    return;
                }
                TextView textView = (TextView) C2191j.this.f7652l.findViewById(R$id.tv_filter);
                textView.setTypeface(C3739f1.m24360a());
                if (i < 1) {
                    C2191j.this.f7652l.setVisibility(8);
                    return;
                }
                int i4 = i - 1;
                if (((CallLogBean) C2191j.this.f7647g.get(i4)).m24880o().equals("facebook_ad")) {
                    textView.setText(((CallLogBean) C2191j.this.f7647g.get(i)).m24897g());
                } else {
                    textView.setText(((CallLogBean) C2191j.this.f7647g.get(i4)).m24897g());
                }
                C2191j.this.f7652l.setVisibility(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.b.j$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/j$e.class */
    public class View$OnClickListenerC2196e implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7666d;

        View$OnClickListenerC2196e(CallLogBean callLogBean) {
            C2191j.this = r4;
            this.f7666d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (this.f7666d.m24880o() != null) {
                    if (!"".equals(this.f7666d.m24880o()) && !"-1".equals(this.f7666d.m24880o()) && !"-2".equals(this.f7666d.m24880o()) && !"-3".equals(this.f7666d.m24880o())) {
                        C3809p0.m24078a(C2191j.this.f7646f, this.f7666d.m24880o());
                    }
                    Toast.makeText(C2191j.this.f7646f, C2191j.this.f7646f.getResources().getString(R$string.unknow_call), 0).show();
                }
            } catch (Exception e) {
                Toast.makeText(C2191j.this.f7646f, C2191j.this.f7646f.getResources().getString(R$string.no_phone_related), 0).show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.j$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/j$f.class */
    private static class C2197f {

        /* renamed from: a */
        ImageView f7668a;

        /* renamed from: b */
        TextView f7669b;

        /* renamed from: c */
        TextView f7670c;

        /* renamed from: d */
        TextView f7671d;

        /* renamed from: e */
        TextView f7672e;

        /* renamed from: f */
        TextView f7673f;

        /* renamed from: g */
        RelativeLayout f7674g;

        /* renamed from: h */
        TextView f7675h;

        /* renamed from: i */
        TextView f7676i;

        /* renamed from: j */
        ImageView f7677j;

        /* renamed from: k */
        ImageView f7678k;

        /* renamed from: l */
        ImageView f7679l;

        /* renamed from: m */
        ImageView f7680m;

        /* renamed from: n */
        ImageView f7681n;

        /* renamed from: o */
        ProgressWheel f7682o;

        /* renamed from: p */
        FrameLayout f7683p;

        /* renamed from: q */
        RelativeLayout f7684q;

        /* renamed from: r */
        View f7685r;

        /* renamed from: s */
        View f7686s;

        /* renamed from: t */
        ImageView f7687t;

        private C2197f() {
        }

        /* synthetic */ C2197f(View$OnClickListenerC2192a view$OnClickListenerC2192a) {
            this();
        }
    }

    public C2191j(Context context, List<CallLogBean> list, HashMap<String, Integer> hashMap, ListView listView, LinearLayout linearLayout, FloatingActionButton floatingActionButton, RelativeLayout relativeLayout) {
        this.f7648h = new HashMap<>();
        this.f7646f = context;
        this.f7647g = list;
        this.f7649i = LayoutInflater.from(context);
        this.f7650j = listView;
        this.f7648h = hashMap;
        this.f7652l = linearLayout;
        this.f7653m = floatingActionButton;
        this.f7655o = relativeLayout;
        this.f7656p = C3719c1.m24432a(context, R$attr.color_333333, R$color.color_333333);
        this.f7657q = C3719c1.m24432a(context, R$attr.color_weak, R$color.color_999999);
        this.f7658r = C3719c1.m24432a(context, R$attr.color_FF0000, R$color.color_FF0000);
        this.f7659s = C3719c1.m24432a(context, R$attr.color_333333, R$color.color_333333);
        this.f7644d = C3719c1.m24431b(this.f7646f, R$attr.bg_tag, R$drawable.bg_tag);
        this.f7645e = C3719c1.m24431b(this.f7646f, R$attr.bg_tag_identified, R$drawable.bg_tag_identified);
    }

    /* renamed from: h */
    private void m27861h(View view, CallLogBean callLogBean, int i) {
        view.setOnClickListener(new View$OnClickListenerC2196e(callLogBean));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7647g.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7647g.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(53:2|(1:4)(1:5)|6|(1:13)(1:12)|14|(1:16)|17|(1:19)(1:20)|(2:211|21)|(4:27|28|29|(42:31|(1:33)(1:34)|46|(1:53)(2:50|(1:52))|54|(1:56)|210|57|(4:63|64|65|(22:67|(2:69|(2:71|(1:73)(1:74))(1:75))(2:76|(2:78|(1:80)(1:81))(1:82))|100|(1:105)(1:104)|106|(2:108|(2:117|(1:122)(1:121))(1:116))(1:123)|124|(2:129|(2:134|(2:139|(2:144|(2:146|(1:148)(1:149)))(1:143))(1:138))(1:133))(1:128)|150|(2:152|(2:154|(2:156|(2:158|(1:160)(1:161))(1:162))(1:163))(1:164))(1:165)|166|(2:172|(1:174)(2:175|(1:177)(2:178|(1:180)(2:181|(1:183)))))|184|(1:189)(1:188)|190|(1:192)|193|(1:202)(1:201)|203|(1:207)|208|209))|83|(2:85|(2:88|(2:93|(1:95)(1:96))(1:92))(1:87))(1:97)|100|(1:102)|105|106|(0)(0)|124|(1:126)|129|(1:131)|134|(1:136)|139|(1:141)|144|(0)|150|(0)(0)|166|(4:168|170|172|(0)(0))|184|(1:186)|189|190|(0)|193|(1:195)|202|203|(2:205|207)|208|209))|35|(1:43)|46|(1:48)|53|54|(0)|210|57|(6:59|61|63|64|65|(0))|83|(0)(0)|100|(0)|105|106|(0)(0)|124|(0)|129|(0)|134|(0)|139|(0)|144|(0)|150|(0)(0)|166|(0)|184|(0)|189|190|(0)|193|(0)|202|203|(0)|208|209) */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x06c3, code lost:
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x06c5, code lost:
        r6.f7651k.f7685r.setVisibility(0);
        r11.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0723  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x07e4  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x07fb  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x081e  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0842  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0866  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x088a  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x08c8  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x09b3  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x09e5  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0a0f  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0a42  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0b15  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0b8a  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0bb3  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0bfd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x055c A[Catch: Exception -> 0x06c3, TryCatch #0 {Exception -> 0x06c3, blocks: (B:57:0x051f, B:59:0x052a, B:63:0x0539, B:65:0x0544, B:67:0x055c, B:69:0x0583, B:71:0x0592, B:74:0x05bd, B:75:0x05cb, B:76:0x05d9, B:78:0x05e8, B:81:0x0613, B:82:0x0621, B:83:0x062f, B:85:0x063e, B:90:0x066e, B:92:0x0687, B:95:0x0699, B:96:0x06a7, B:97:0x06b5), top: B:210:0x051f }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x063e A[Catch: Exception -> 0x06c3, TryCatch #0 {Exception -> 0x06c3, blocks: (B:57:0x051f, B:59:0x052a, B:63:0x0539, B:65:0x0544, B:67:0x055c, B:69:0x0583, B:71:0x0592, B:74:0x05bd, B:75:0x05cb, B:76:0x05d9, B:78:0x05e8, B:81:0x0613, B:82:0x0621, B:83:0x062f, B:85:0x063e, B:90:0x066e, B:92:0x0687, B:95:0x0699, B:96:0x06a7, B:97:0x06b5), top: B:210:0x051f }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x06b5 A[Catch: Exception -> 0x06c3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x06c3, blocks: (B:57:0x051f, B:59:0x052a, B:63:0x0539, B:65:0x0544, B:67:0x055c, B:69:0x0583, B:71:0x0592, B:74:0x05bd, B:75:0x05cb, B:76:0x05d9, B:78:0x05e8, B:81:0x0613, B:82:0x0621, B:83:0x062f, B:85:0x063e, B:90:0x066e, B:92:0x0687, B:95:0x0699, B:96:0x06a7, B:97:0x06b5), top: B:210:0x051f }] */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 3102
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2191j.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }
}
