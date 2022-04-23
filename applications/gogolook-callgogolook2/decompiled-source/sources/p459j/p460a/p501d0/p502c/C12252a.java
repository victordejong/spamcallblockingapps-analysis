package p459j.p460a.p501d0.p502c;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.util.ProgressWheel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Map;
import p459j.p460a.p501d0.EnumC12251b;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p618b.p619a.p620a.p621a.AbstractC14689a;
import p459j.p618b.p619a.p620a.p621a.C14690b;
/* renamed from: j.a.d0.c.a */
/* loaded from: classes3-dex2jar.jar:j/a/d0/c/a.class */
public class C12252a extends AbstractC14689a {

    /* renamed from: g */
    public LayoutInflater f27637g;

    /* renamed from: h */
    public Context f27638h;

    /* renamed from: i */
    public ArrayList<Map<EnumC12251b, Object>> f27639i;

    /* renamed from: j */
    public SimpleDateFormat f27640j = new SimpleDateFormat("MM/dd HH:mm");

    /* renamed from: j.a.d0.c.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/d0/c/a$a.class */
    public class C12253a extends C14690b {

        /* renamed from: g */
        public ImageView f27641g = (ImageView) m849a(R$id.iv_status);

        /* renamed from: h */
        public TextView f27642h = (TextView) m849a(R$id.tv_title);

        /* renamed from: i */
        public TextView f27643i = (TextView) m849a(R$id.tv_subtitle);

        /* renamed from: j */
        public TextView f27644j = (TextView) m849a(R$id.tv_content);

        /* renamed from: k */
        public TextView f27645k = (TextView) m849a(R$id.tv_date);

        /* renamed from: l */
        public TextView f27646l = (TextView) m849a(R$id.tv_telecom);

        /* renamed from: n */
        public ProgressWheel f27648n = (ProgressWheel) m849a(R$id.pb_waiting);

        /* renamed from: o */
        public ImageView f27649o = (ImageView) m849a(R$id.iv_favorite);

        /* renamed from: m */
        public ImageView f27647m = (ImageView) m849a(R$id.iv_more);

        public C12253a(C12252a aVar, Context context, View view) {
            super(context, view);
        }
    }

    public C12252a(Context context) {
        super(context);
        this.f27638h = context;
        this.f27637g = LayoutInflater.from(context);
        m853b(-2236963);
        m855a(0.0f);
    }

    /* renamed from: a */
    public void m6539a(ArrayList<Map<EnumC12251b, Object>> arrayList, String str) {
        ArrayList<Map<EnumC12251b, Object>> arrayList2 = this.f27639i;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        this.f27639i = arrayList;
    }

    @Override // p459j.p618b.p619a.p620a.p621a.AbstractC14689a
    /* renamed from: b */
    public void mo852b(C14690b bVar, int i) {
        C12253a aVar = (C12253a) bVar;
        aVar.f27647m.setVisibility(4);
        aVar.f27644j.setVisibility(0);
        aVar.f27643i.setVisibility(0);
        aVar.f27648n.setVisibility(8);
        aVar.f27646l.setVisibility(4);
        aVar.f27641g.setVisibility(4);
        aVar.f27645k.setVisibility(0);
        aVar.f27649o.setVisibility(8);
        aVar.f27645k.setText(this.f27640j.format(this.f27639i.get(i).get(EnumC12251b.UPDATE_TIME)));
        Map<EnumC12251b, Object> map = this.f27639i.get(i);
        String str = (map.get(EnumC12251b.NAME) == null || map.get(EnumC12251b.NAME).equals("")) ? (String) map.get(EnumC12251b.E164) : (String) map.get(EnumC12251b.NAME);
        String str2 = map.get(EnumC12251b.TAG) != null ? (String) map.get(EnumC12251b.TAG) : "";
        aVar.f27643i.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        String str3 = str2;
        if (str2.equals("")) {
            if (map.get(EnumC12251b.NOTE) != null) {
                str3 = str2;
                for (int size = ((ArrayList) map.get(EnumC12251b.NOTE)).size() - 1; size >= 0; size--) {
                    str3 = size == 0 ? str3 + ((String) ((ArrayList) map.get(EnumC12251b.NOTE)).get(size)) : str3 + ((String) ((ArrayList) map.get(EnumC12251b.NOTE)).get(size)) + " , ";
                }
                aVar.f27643i.setCompoundDrawablesWithIntrinsicBounds(R$drawable.main_lock, 0, 0, 0);
            } else {
                str3 = "";
            }
        }
        String str4 = str3;
        if (str3.equals("")) {
            str4 = C14093n4.m2574c(this.f27638h, (String) map.get(EnumC12251b.SPAM));
        }
        String str5 = str;
        if (TextUtils.isEmpty(str)) {
            str5 = "";
        }
        SpannableString spannableString = new SpannableString(C14108o4.m2493a(str5, true, false));
        SpannableString spannableString2 = new SpannableString(str4);
        aVar.f27642h.setText(spannableString);
        aVar.f27643i.setText(spannableString2);
        aVar.f27644j.setVisibility(8);
        if (C13565v.m3921g().m23335b() && map.get(EnumC12251b.TAG) != null) {
            aVar.f27642h.setTextColor(new NumberInfo.Whoscall.Tag((String) map.get(EnumC12251b.TAG), ((Long) map.get(EnumC12251b.UPDATE_TIME)).longValue()).m28276a() ? SupportMenu.CATEGORY_MASK : Color.parseColor("#ff333333"));
        }
    }

    public Map<EnumC12251b, Object> getItem(int i) {
        return this.f27639i.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        ArrayList<Map<EnumC12251b, Object>> arrayList = this.f27639i;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C14690b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C12253a(this, m856a(), this.f27637g.inflate(R$layout.calllog_listview, (ViewGroup) null));
    }
}
