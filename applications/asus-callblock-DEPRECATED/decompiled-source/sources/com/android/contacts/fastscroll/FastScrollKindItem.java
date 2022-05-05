package com.android.contacts.fastscroll;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/fastscroll/FastScrollKindItem.class */
public class FastScrollKindItem extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f1301a;

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f1302b;
    private LayoutInflater c;
    private ListView d;
    private PopupWindow e;
    private int f = 6;

    public FastScrollKindItem(Context context) {
        super(context, null);
    }

    public FastScrollKindItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        this.c = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.f1301a = (TextView) findViewById(2131297176);
        this.f1302b = (LinearLayout) findViewById(2131297174);
        this.f1301a.setVisibility(8);
    }

    public void setAllStrokeValues(String[] strArr, int[] iArr, int i) {
        if (strArr == null || strArr.length == 0) {
            Log.i("FastScrollKindItem", "cnTitles is null");
            return;
        }
        int length = strArr.length;
        int i2 = (length - 1) / this.f;
        int i3 = 0;
        for (int i4 = 0; i4 < i2 + 1; i4++) {
            LinearLayout linearLayout = (LinearLayout) this.c.inflate(2131427374, (ViewGroup) null, false);
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(2131296535);
            for (int i5 = 0; i5 < this.f && (this.f * i4) + i5 != length; i5++) {
                FastScrollTextItemView fastScrollTextItemView = new FastScrollTextItemView(getContext(), null);
                fastScrollTextItemView.a(strArr[(this.f * i4) + i5]);
                fastScrollTextItemView.setListViewAndPosition(this.d, i + i3);
                fastScrollTextItemView.setPopupHandle(this.e);
                if ((this.f * i4) + i5 + 1 == length) {
                    fastScrollTextItemView.a();
                }
                i3 += iArr[(this.f * i4) + i5];
                linearLayout2.addView(fastScrollTextItemView);
            }
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams((FastScrollTextItemView.f1303b * this.f) + (this.f - 1), FastScrollTextItemView.f1303b));
            this.f1302b.addView(linearLayout);
        }
    }

    public void setListView(ListView listView) {
        this.d = listView;
    }

    public void setMaxRowTextNumber(int i) {
        switch (i) {
            case 4:
                this.f = 4;
                return;
            case 5:
            default:
                return;
            case 6:
                this.f = 6;
                return;
        }
    }

    public void setPopupHandle(PopupWindow popupWindow) {
        this.e = popupWindow;
    }

    public void setStrokeValues(String[] strArr, int[] iArr, int i) {
        if (strArr == null || strArr.length == 0) {
            Log.i("FastScrollKindItem", "cnTitles is null");
            return;
        }
        int length = strArr.length;
        int i2 = (length - 1) / this.f;
        int i3 = 0;
        for (int i4 = 0; i4 < i2 + 1; i4++) {
            LinearLayout linearLayout = (LinearLayout) this.c.inflate(2131427374, (ViewGroup) null, false);
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(2131296535);
            for (int i5 = 0; i5 < this.f && (this.f * i4) + i5 != length; i5++) {
                FastScrollTextItemView fastScrollTextItemView = new FastScrollTextItemView(getContext(), null);
                fastScrollTextItemView.a(strArr[(this.f * i4) + i5]);
                fastScrollTextItemView.setListViewAndPosition(this.d, i + i3);
                fastScrollTextItemView.setPopupHandle(this.e);
                if ((this.f * i4) + i5 + 1 == length) {
                    fastScrollTextItemView.a();
                }
                i3 += iArr[(this.f * i4) + i5];
                linearLayout2.addView(fastScrollTextItemView);
            }
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams((FastScrollTextItemView.f1303b * this.f) + (this.f - 1), FastScrollTextItemView.f1303b));
            this.f1302b.addView(linearLayout);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f1301a.setText(charSequence);
    }
}
