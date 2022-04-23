package com.callapp.contacts.widget.sticky;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionViewData.class */
public class StickyPermissionViewData {

    /* renamed from: a  reason: collision with root package name */
    private final String f16955a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16956b;

    /* renamed from: c  reason: collision with root package name */
    private final CharSequence f16957c;

    /* renamed from: d  reason: collision with root package name */
    private final View.OnClickListener f16958d;
    private final View.OnClickListener e;

    public StickyPermissionViewData(String str, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        this.f16955a = str;
        this.f16956b = i;
        this.f16957c = null;
        this.f16958d = onClickListener;
        this.e = onClickListener2;
    }

    public StickyPermissionViewData(String str, CharSequence charSequence, int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        this.f16955a = str;
        this.f16957c = charSequence;
        this.f16956b = i;
        this.f16958d = onClickListener;
        this.e = onClickListener2;
    }

    public CharSequence getDescription() {
        return this.f16957c;
    }

    public int getImage() {
        return this.f16956b;
    }

    public View.OnClickListener getOnAllowClickListener() {
        return this.f16958d;
    }

    public View.OnClickListener getOnDenyClickListener() {
        return this.e;
    }

    public String getTitle() {
        return this.f16955a;
    }
}
