package com.android.contacts.calllog;

import android.view.View;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.aa;
import com.android.contacts.dialpad.AsusQuickContactBadge;
import com.uservoice.uservoicesdk.d;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final AsusQuickContactBadge f705a;

    /* renamed from: b  reason: collision with root package name */
    public final View f706b;
    public final ImageView c;
    public final aa d;
    public final TextView e;
    public final ImageView f;
    public final ImageView g;
    public int h;
    public final ViewStub i;
    public ImageView j;
    public ImageView k;
    public final TextView l;
    public final CheckedTextView m;
    public final ViewStub n;
    public ImageView o;
    public final ViewStub p;
    public View q;
    public TextView r;
    public ImageButton s;
    public ImageView t;
    public final ViewStub u;
    public View v;
    public ViewStub w;
    public View x;
    public ImageView y;
    public ViewStub z;

    private h(AsusQuickContactBadge asusQuickContactBadge, View view, ImageView imageView, aa aaVar, TextView textView, ImageView imageView2, ImageView imageView3, ViewStub viewStub, TextView textView2, CheckedTextView checkedTextView, ViewStub viewStub2, ViewStub viewStub3, ViewStub viewStub4, View view2, ViewStub viewStub5, ViewStub viewStub6) {
        this.f705a = asusQuickContactBadge;
        this.f706b = view;
        this.c = imageView;
        this.d = aaVar;
        this.e = textView;
        this.f = imageView2;
        this.g = imageView3;
        this.i = viewStub;
        this.l = textView2;
        this.m = checkedTextView;
        this.n = viewStub2;
        this.p = viewStub3;
        this.u = viewStub4;
        this.v = view2;
        this.z = viewStub5;
        this.w = viewStub6;
    }

    public static h a(View view) {
        return new h((AsusQuickContactBadge) view.findViewById(2131297202), view.findViewById(2131297184), (ImageView) view.findViewById(2131297262), new aa((TextView) view.findViewById(d.b.g), view.findViewById(2131296486), (CallTypeIconsView) view.findViewById(2131296489), (TextView) view.findViewById(2131296439), (TextView) view.findViewById(2131297128), (TextView) view.findViewById(2131296354), (TextView) view.findViewById(2131296538), (TextView) view.findViewById(2131296540), (ImageView) view.findViewById(2131296539), (TextView) view.findViewById(2131296464), (ViewStub) view.findViewById(2131296444)), (TextView) view.findViewById(2131296464), (ImageView) view.findViewById(2131296997), (ImageView) view.findViewById(2131296484), (ViewStub) view.findViewById(2131296379), (TextView) view.findViewById(2131296491), (CheckedTextView) view.findViewById(2131296965), (ViewStub) view.findViewById(2131296499), (ViewStub) view.findViewById(2131296473), (ViewStub) view.findViewById(2131297321), view.findViewById(2131296974), (ViewStub) view.findViewById(2131297549), (ViewStub) view.findViewById(2131296466));
    }
}
