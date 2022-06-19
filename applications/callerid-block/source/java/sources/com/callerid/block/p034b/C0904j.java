package com.callerid.block.p034b;

import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.bean.MessageBean;
import com.callerid.block.sms.MessageBoxListActivity;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1210r0;
import com.callerid.block.util.C1227w;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.callerid.block.b.j */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/j.class */
public class C0904j extends BaseAdapter {

    /* renamed from: b */
    private int f4028b;

    /* renamed from: c */
    private List<MessageBean> f4029c;

    /* renamed from: d */
    private MessageBoxListActivity f4030d;

    /* renamed from: e */
    private LayoutInflater f4031e;

    /* renamed from: f */
    private Typeface f4032f = C1210r0.m9624b();

    /* renamed from: g */
    private AbstractC0912h f4033g;

    /* renamed from: com.callerid.block.b.j$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/j$a.class */
    class View$OnLongClickListenerC0905a implements View.OnLongClickListener {

        /* renamed from: b */
        final /* synthetic */ int f4034b;

        /* renamed from: c */
        final /* synthetic */ MessageBean f4035c;

        View$OnLongClickListenerC0905a(int i, MessageBean messageBean) {
            C0904j.this = r4;
            this.f4034b = i;
            this.f4035c = messageBean;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (!C0904j.this.f4030d.x0) {
                C0904j.this.f4030d.x0 = true;
                if (C0904j.this.f4033g != null) {
                    C0904j.this.f4033g.m10590a(view, this.f4034b);
                }
                this.f4035c.setSelect(true);
                C0904j.this.f4030d.y0.add(this.f4035c);
                view.setBackgroundColor(C0904j.this.f4028b);
                C0904j.this.f4030d.j1();
                C0904j.this.f4030d.b1();
                return true;
            }
            return true;
        }
    }

    /* renamed from: com.callerid.block.b.j$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/j$b.class */
    class View$OnClickListenerC0906b implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ MessageBean f4037b;

        View$OnClickListenerC0906b(MessageBean messageBean) {
            C0904j.this = r4;
            this.f4037b = messageBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0904j.this.f4030d.x0) {
                if (this.f4037b.isSelect()) {
                    this.f4037b.setSelect(false);
                    view.setBackgroundColor(C0904j.this.f4030d.getResources().getColor(R$color.touming));
                    C0904j.this.f4030d.y0.remove(this.f4037b);
                } else {
                    this.f4037b.setSelect(true);
                    view.setBackgroundColor(C0904j.this.f4028b);
                    C0904j.this.f4030d.y0.add(this.f4037b);
                }
                C0904j.this.f4030d.b1();
            }
        }
    }

    /* renamed from: com.callerid.block.b.j$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/j$c.class */
    class View$OnLongClickListenerC0907c implements View.OnLongClickListener {

        /* renamed from: b */
        final /* synthetic */ int f4039b;

        /* renamed from: c */
        final /* synthetic */ MessageBean f4040c;

        View$OnLongClickListenerC0907c(int i, MessageBean messageBean) {
            C0904j.this = r4;
            this.f4039b = i;
            this.f4040c = messageBean;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (!C0904j.this.f4030d.x0) {
                C0904j.this.f4030d.x0 = true;
                if (C0904j.this.f4033g != null) {
                    C0904j.this.f4033g.m10590a(view, this.f4039b);
                }
                this.f4040c.setSelect(true);
                C0904j.this.f4030d.y0.add(this.f4040c);
                view.setBackgroundColor(C0904j.this.f4028b);
                C0904j.this.f4030d.j1();
                C0904j.this.f4030d.b1();
                return true;
            }
            return true;
        }
    }

    /* renamed from: com.callerid.block.b.j$d */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/j$d.class */
    class View$OnClickListenerC0908d implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ MessageBean f4042b;

        View$OnClickListenerC0908d(MessageBean messageBean) {
            C0904j.this = r4;
            this.f4042b = messageBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0904j.this.f4030d.x0) {
                if (this.f4042b.isSelect()) {
                    this.f4042b.setSelect(false);
                    view.setBackgroundColor(C0904j.this.f4030d.getResources().getColor(R$color.touming));
                    C0904j.this.f4030d.y0.remove(this.f4042b);
                } else {
                    this.f4042b.setSelect(true);
                    view.setBackgroundColor(C0904j.this.f4028b);
                    C0904j.this.f4030d.y0.add(this.f4042b);
                }
                C0904j.this.f4030d.b1();
            }
        }
    }

    /* renamed from: com.callerid.block.b.j$e */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/j$e.class */
    class View$OnClickListenerC0909e implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ String f4044b;

        /* renamed from: c */
        final /* synthetic */ int f4045c;

        View$OnClickListenerC0909e(String str, int i) {
            C0904j.this = r4;
            this.f4044b = str;
            this.f4045c = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            String str2 = this.f4044b;
            if (str2 == null || "".equals(str2)) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(1);
            Uri parse = Uri.parse("content://mms/part/" + this.f4044b);
            if (C1227w.f5084a) {
                C1227w.m9527a("readsms", "uri:" + parse.getPath());
            }
            int i = this.f4045c;
            if (i != 1) {
                if (i == 2) {
                    str = "video/*";
                }
                C0904j.this.f4030d.startActivity(intent);
            }
            str = "image/*";
            intent.setDataAndType(parse, str);
            C0904j.this.f4030d.startActivity(intent);
        }
    }

    /* renamed from: com.callerid.block.b.j$f */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/j$f.class */
    class View$OnClickListenerC0910f implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ String f4047b;

        /* renamed from: c */
        final /* synthetic */ int f4048c;

        View$OnClickListenerC0910f(String str, int i) {
            C0904j.this = r4;
            this.f4047b = str;
            this.f4048c = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            try {
                String str2 = this.f4047b;
                if (str2 == null || "".equals(str2)) {
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                Uri parse = Uri.parse("content://mms/part/" + this.f4047b);
                intent.addFlags(1);
                if (C1227w.f5084a) {
                    C1227w.m9527a("readsms", "uri:" + parse.toString());
                }
                int i = this.f4048c;
                if (i != 1) {
                    if (i == 2) {
                        str = "video/*";
                    }
                    C0904j.this.f4030d.startActivity(intent);
                }
                str = "image/*";
                intent.setDataAndType(parse, str);
                C0904j.this.f4030d.startActivity(intent);
            } catch (Exception e) {
                if (C1227w.f5084a) {
                    C1227w.m9527a("readsms", "Exception：" + e.getLocalizedMessage());
                }
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.callerid.block.b.j$g */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/j$g.class */
    class C0911g {

        /* renamed from: a */
        LinearLayout f4050a;

        /* renamed from: b */
        TextView f4051b;

        /* renamed from: c */
        TextView f4052c;

        /* renamed from: d */
        TextView f4053d;

        /* renamed from: e */
        TextView f4054e;

        /* renamed from: f */
        ImageView f4055f;

        /* renamed from: g */
        ImageView f4056g;

        /* renamed from: h */
        LinearLayout f4057h;

        /* renamed from: i */
        LinearLayout f4058i;

        /* renamed from: j */
        LinearLayout f4059j;

        /* renamed from: k */
        TextView f4060k;

        /* renamed from: l */
        TextView f4061l;

        /* renamed from: m */
        TextView f4062m;

        /* renamed from: n */
        TextView f4063n;

        /* renamed from: o */
        ImageView f4064o;

        /* renamed from: p */
        ImageView f4065p;

        /* renamed from: q */
        LinearLayout f4066q;

        /* renamed from: r */
        LinearLayout f4067r;

        C0911g(C0904j c0904j) {
        }
    }

    /* renamed from: com.callerid.block.b.j$h */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/j$h.class */
    private interface AbstractC0912h {
        /* renamed from: a */
        void m10590a(View view, int i);
    }

    public C0904j(MessageBoxListActivity messageBoxListActivity, ArrayList<MessageBean> arrayList) {
        this.f4030d = messageBoxListActivity;
        this.f4031e = LayoutInflater.from(messageBoxListActivity);
        this.f4029c = arrayList;
        this.f4028b = C1205p0.m9636a(this.f4030d, R$attr.color_calllogs_selected, R$color.colorselect);
    }

    /* renamed from: d */
    public void m10593d(MessageBean messageBean) {
        List<MessageBean> list = this.f4029c;
        if (list != null) {
            list.add(messageBean);
        }
    }

    /* renamed from: e */
    public void m10592e(ArrayList<MessageBean> arrayList, boolean z) {
        if (arrayList != null) {
            if (z) {
                this.f4029c.clear();
            }
            this.f4029c.addAll(arrayList);
        }
    }

    /* renamed from: f */
    public void m10591f(ArrayList<MessageBean> arrayList) {
        if (arrayList != null) {
            this.f4029c = arrayList;
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4029c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4029c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x02d8, code lost:
        if (r0 == 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x02db, code lost:
        r17 = r11.f4065p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x03c4, code lost:
        if (r0 == 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x04a5, code lost:
        if (r0 == 2) goto L58;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r8, android.view.View r9, android.view.ViewGroup r10) {
        /*
            Method dump skipped, instructions count: 1775
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p034b.C0904j.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
