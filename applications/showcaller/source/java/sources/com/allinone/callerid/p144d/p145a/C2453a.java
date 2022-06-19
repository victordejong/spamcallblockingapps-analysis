package com.allinone.callerid.p144d.p145a;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.d.a.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/a.class */
public class C2453a extends BaseAdapter implements SectionIndexer {

    /* renamed from: d */
    private List<PersonaliseContact> f8722d;

    /* renamed from: e */
    private List<PersonaliseContact> f8723e = new ArrayList();

    /* renamed from: f */
    private Context f8724f;

    /* renamed from: g */
    private Activity f8725g;

    /* renamed from: h */
    private LayoutInflater f8726h;

    /* renamed from: i */
    C2456c f8727i;

    /* renamed from: j */
    private AbstractC2455b f8728j;

    /* renamed from: k */
    private int f8729k;

    /* renamed from: l */
    private int f8730l;

    /* renamed from: m */
    private int f8731m;

    /* renamed from: n */
    private int f8732n;

    /* renamed from: com.allinone.callerid.d.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/a$a.class */
    class View$OnClickListenerC2454a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ PersonaliseContact f8733d;

        /* renamed from: e */
        final /* synthetic */ int f8734e;

        View$OnClickListenerC2454a(PersonaliseContact personaliseContact, int i) {
            C2453a.this = r4;
            this.f8733d = personaliseContact;
            this.f8734e = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PersonaliseContact personaliseContact = this.f8733d;
            if (!personaliseContact.isselect) {
                personaliseContact.isselect = true;
                C2453a.this.f8723e.add(this.f8733d);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "isChecked:name:" + this.f8733d.getName());
                }
            } else {
                C2453a.this.f8723e.remove(this.f8733d);
                this.f8733d.isselect = false;
            }
            C2453a.this.notifyDataSetChanged();
            if (C2453a.this.f8728j != null) {
                C2453a.this.f8728j.mo27308a(view, this.f8734e, C2453a.this.f8723e);
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/a$b.class */
    public interface AbstractC2455b {
        /* renamed from: a */
        void mo27308a(View view, int i, List<PersonaliseContact> list);
    }

    /* renamed from: com.allinone.callerid.d.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/a$c.class */
    public static class C2456c {

        /* renamed from: a */
        TextView f8736a;

        /* renamed from: b */
        TextView f8737b;

        /* renamed from: c */
        ImageView f8738c;

        /* renamed from: d */
        TextView f8739d;

        /* renamed from: e */
        FrameLayout f8740e;

        /* renamed from: f */
        FrameLayout f8741f;

        /* renamed from: g */
        RelativeLayout f8742g;

        /* renamed from: h */
        View f8743h;

        /* renamed from: i */
        CheckBox f8744i;
    }

    public C2453a(Context context, List<PersonaliseContact> list) {
        this.f8724f = context;
        this.f8725g = (Activity) context;
        this.f8726h = LayoutInflater.from(context);
        if (list == null) {
            this.f8722d = new ArrayList();
        } else {
            this.f8722d = list;
        }
        this.f8729k = C3719c1.m24431b(context, R$attr.bg_list_card_bottom, R$drawable.bg_list_card_bottom);
        this.f8730l = C3719c1.m24431b(context, R$attr.bg_list_card, R$drawable.bg_list_card);
        this.f8731m = C3719c1.m24431b(context, R$attr.bg_list_card_center, R$drawable.bg_list_card_center);
        this.f8732n = C3719c1.m24431b(context, R$attr.bg_list_card_top, R$drawable.bg_list_card_top);
    }

    /* renamed from: c */
    public void m27310c(AbstractC2455b abstractC2455b) {
        this.f8728j = abstractC2455b;
    }

    /* renamed from: d */
    public void m27309d(List<PersonaliseContact> list) {
        if (list == null) {
            this.f8722d = new ArrayList();
        } else {
            this.f8722d = list;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f8722d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f8722d.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        for (int i2 = 0; i2 < getCount(); i2++) {
            List<PersonaliseContact> list = this.f8722d;
            if (list != null && list.get(i2) != null && this.f8722d.get(i2).getSortLetters() != null && this.f8722d.get(i2).getSortLetters().toUpperCase(Locale.CHINESE).charAt(0) == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        return this.f8722d.get(i).getSortLetters().charAt(0);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0138, code lost:
        if ("".equals(r0) != false) goto L13;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 2655
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p144d.p145a.C2453a.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
