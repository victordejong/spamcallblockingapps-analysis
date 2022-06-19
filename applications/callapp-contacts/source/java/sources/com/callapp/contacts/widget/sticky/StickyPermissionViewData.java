package com.callapp.contacts.widget.sticky;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionViewData.class */
public class StickyPermissionViewData {

    /* renamed from: a */
    private final String f29471a;

    /* renamed from: b */
    private final int f29472b;

    /* renamed from: c */
    private final CharSequence f29473c;

    /* renamed from: d */
    private final View.OnClickListener f29474d;

    /* renamed from: e */
    private final View.OnClickListener f29475e;

    public StickyPermissionViewData(String str, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        this.f29471a = str;
        this.f29472b = i;
        this.f29473c = null;
        this.f29474d = onClickListener;
        this.f29475e = onClickListener2;
    }

    public StickyPermissionViewData(String str, CharSequence charSequence, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        this.f29471a = str;
        this.f29473c = charSequence;
        this.f29472b = i;
        this.f29474d = onClickListener;
        this.f29475e = onClickListener2;
    }

    public CharSequence getDescription() {
        return this.f29473c;
    }

    public int getImage() {
        return this.f29472b;
    }

    public View.OnClickListener getOnAllowClickListener() {
        return this.f29474d;
    }

    public View.OnClickListener getOnDenyClickListener() {
        return this.f29475e;
    }

    public String getTitle() {
        return this.f29471a;
    }
}
