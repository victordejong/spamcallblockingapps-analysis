package com.allinone.callerid.mvc.view.recorder;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.util.C3739f1;
/* renamed from: com.allinone.callerid.mvc.view.recorder.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/b.class */
public class C3572b extends PopupWindow {

    /* renamed from: a */
    private TextView f11457a;

    /* renamed from: b */
    private TextView f11458b;

    /* renamed from: c */
    private TextView f11459c;

    /* renamed from: d */
    private FrameLayout f11460d;

    /* renamed from: e */
    private FrameLayout f11461e;

    /* renamed from: f */
    private FrameLayout f11462f;

    /* renamed from: g */
    private View f11463g;

    /* renamed from: h */
    private View.OnClickListener f11464h;

    /* renamed from: i */
    private Context f11465i;

    public C3572b(Context context) {
        this.f11465i = context;
        this.f11463g = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R$layout.popuwindow_layout, (ViewGroup) null);
        setWidth(-2);
        setHeight(-2);
        setContentView(this.f11463g);
        setFocusable(true);
        setOutsideTouchable(true);
        update();
        setBackgroundDrawable(new ColorDrawable(0));
        Typeface m24359b = C3739f1.m24359b();
        this.f11460d = (FrameLayout) this.f11463g.findViewById(R$id.popuwindow_layout_st);
        this.f11457a = (TextView) this.f11463g.findViewById(R$id.popuwindow_layout_st_text);
        this.f11461e = (FrameLayout) this.f11463g.findViewById(R$id.popuwindow_layout_nd);
        this.f11458b = (TextView) this.f11463g.findViewById(R$id.popuwindow_layout_nd_text);
        this.f11462f = (FrameLayout) this.f11463g.findViewById(R$id.popuwindow_layout_th);
        this.f11459c = (TextView) this.f11463g.findViewById(R$id.popuwindow_layout_th_text);
        this.f11457a.setTypeface(m24359b);
        this.f11458b.setTypeface(m24359b);
        this.f11459c.setTypeface(m24359b);
    }

    /* renamed from: a */
    public void m24964a(View.OnClickListener onClickListener) {
        this.f11464h = onClickListener;
        this.f11460d.setOnClickListener(onClickListener);
        this.f11461e.setOnClickListener(onClickListener);
        this.f11462f.setOnClickListener(onClickListener);
    }

    /* renamed from: b */
    public void m24963b(String[] strArr) {
        if (strArr[0] != null) {
            this.f11457a.setText(strArr[0]);
        }
        if (strArr.length <= 1 || strArr[1] == null) {
            this.f11461e.setVisibility(8);
        } else {
            this.f11458b.setText(strArr[1]);
        }
        if (strArr.length <= 2 || strArr[2] == null) {
            this.f11462f.setVisibility(8);
        } else {
            this.f11459c.setText(strArr[2]);
        }
    }
}
