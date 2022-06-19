package com.callerid.block.p034b;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$drawable;
import com.callerid.block.customview.MyListView;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1205p0;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: com.callerid.block.b.f */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/f.class */
public class C0892f extends BaseAdapter implements SectionIndexer {

    /* renamed from: b */
    private final int f3966b;

    /* renamed from: c */
    private List<CallLogBean> f3967c;

    /* renamed from: d */
    private Context f3968d;

    /* renamed from: e */
    private Activity f3969e;

    /* renamed from: f */
    private LayoutInflater f3970f;

    /* renamed from: g */
    private ListView f3971g;

    /* renamed from: h */
    C0895c f3972h;

    /* renamed from: i */
    private String f3973i;

    /* renamed from: com.callerid.block.b.f$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/f$a.class */
    class View$OnClickListenerC0893a implements View.OnClickListener {
        View$OnClickListenerC0893a() {
            C0892f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            C0892f.this.f3971g.performItemClick(C0892f.this.f3971g, intValue, C0892f.this.getItemId(intValue));
        }
    }

    /* renamed from: com.callerid.block.b.f$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/f$b.class */
    class View$OnClickListenerC0894b implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f3975b;

        View$OnClickListenerC0894b(int i) {
            C0892f.this = r4;
            this.f3975b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C0892f.this.f3971g.getOnItemClickListener();
            ListView listView = C0892f.this.f3971g;
            int i = this.f3975b;
            onItemClickListener.onItemClick(listView, view, i, C0892f.this.getItemId(i));
        }
    }

    /* renamed from: com.callerid.block.b.f$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/f$c.class */
    public static class C0895c {

        /* renamed from: a */
        TextView f3977a;

        /* renamed from: b */
        TextView f3978b;

        /* renamed from: c */
        ImageView f3979c;

        /* renamed from: d */
        ImageView f3980d;

        /* renamed from: e */
        TextView f3981e;

        /* renamed from: f */
        FrameLayout f3982f;

        /* renamed from: g */
        FrameLayout f3983g;

        /* renamed from: h */
        MyListView f3984h;
    }

    public C0892f(Context context, List<CallLogBean> list, ListView listView) {
        this.f3968d = context;
        this.f3969e = (Activity) context;
        this.f3971g = listView;
        this.f3970f = LayoutInflater.from(context);
        if (list == null) {
            this.f3967c = new ArrayList();
        } else {
            this.f3967c = list;
        }
        this.f3966b = C1205p0.m9635b(this.f3968d, R$attr.touxiang_gray, R$drawable.touxiang_gray);
    }

    /* renamed from: b */
    public void m10607b(List<CallLogBean> list) {
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        this.f3967c = arrayList;
        this.f3973i = null;
        notifyDataSetChanged();
    }

    /* renamed from: c */
    public void m10606c(List<CallLogBean> list, String str) {
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        this.f3967c = arrayList;
        this.f3973i = str;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3967c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3967c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        for (int i2 = 0; i2 < getCount(); i2++) {
            List<CallLogBean> list = this.f3967c;
            if (list != null && list.get(i2) != null && this.f3967c.get(i2).m10105B() != null && this.f3967c.get(i2).m10105B().toUpperCase(Locale.CHINESE).charAt(0) == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        return this.f3967c.get(i).m10105B().charAt(0);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:(7:225|8|(2:10|11)|13|14|15|16)|(14:18|(1:20)(2:23|(1:25)(1:26))|21|22|30|(1:40)(2:34|(1:39)(1:38))|41|42|224|45|(1:72)(5:51|52|(2:63|(1:71)(2:67|(1:69)(1:70)))(1:60)|61|62)|223|75|(2:183|(4:189|(3:193|194|(1:203)(1:202))|204|(3:208|209|(3:218|149|150)(3:217|146|147))))(6:81|(1:96)(3:85|86|(1:95)(1:94))|97|(1:112)(3:101|102|(1:111)(1:110))|113|(2:115|(4:117|(3:121|122|(1:131)(1:130))|132|(3:136|137|(3:148|149|150)(3:145|146|147))))(2:151|(4:153|(3:157|158|(1:167)(1:166))|168|(3:172|173|(3:182|149|150)(3:181|146|147))))))(1:29)|27|28|30|(1:32)|40|41|42|224|45|(1:47)|72|223|75|(1:77)|183|(6:185|187|189|(6:191|193|194|(1:196)|198|203)|204|(8:206|208|209|(1:211)|213|218|149|150))) */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0129, code lost:
        if ("".equals(r0) != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x03f3, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x03f4, code lost:
        r6.f3972h.f3981e.setVisibility(8);
        r8.printStackTrace();
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 2354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p034b.C0892f.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
