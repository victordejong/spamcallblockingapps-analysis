package com.callapp.contacts.popup;

import android.text.Spannable;
import com.callapp.contacts.util.HtmlUtils;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/WhatsNewItemData.class */
public class WhatsNewItemData {

    /* renamed from: a  reason: collision with root package name */
    private final int f15400a;

    /* renamed from: b  reason: collision with root package name */
    private final Spannable f15401b;

    /* renamed from: c  reason: collision with root package name */
    private final Spannable f15402c;

    /* renamed from: d  reason: collision with root package name */
    private int f15403d;
    private int e;
    private boolean f;
    private final boolean g;

    public WhatsNewItemData(int i, Spannable spannable, Spannable spannable2) {
        this.f = false;
        this.f15400a = i;
        this.f15401b = spannable;
        this.f15402c = spannable2;
        this.g = false;
    }

    public WhatsNewItemData(int i, String str, Spannable spannable) {
        this(i, HtmlUtils.b(str), spannable);
    }

    public WhatsNewItemData(Spannable spannable) {
        this.f = false;
        this.f15400a = 0;
        this.f15401b = spannable;
        this.f15402c = null;
        this.g = true;
    }

    public WhatsNewItemData(String str) {
        this(HtmlUtils.b(str));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WhatsNewItemData whatsNewItemData = (WhatsNewItemData) obj;
        if (this.f15400a == whatsNewItemData.f15400a && this.f15403d == whatsNewItemData.f15403d && this.e == whatsNewItemData.e && this.f == whatsNewItemData.f && this.g == whatsNewItemData.g && Objects.equals(this.f15401b, whatsNewItemData.f15401b)) {
            return Objects.equals(this.f15402c, whatsNewItemData.f15402c);
        }
        return false;
    }

    public int getIconResId() {
        return this.f15400a;
    }

    public Spannable getText() {
        return this.f15402c;
    }

    public int getTextMaxHeight() {
        return this.f15403d;
    }

    public int getTextMinHeight() {
        return this.e;
    }

    public Spannable getTitle() {
        return this.f15401b;
    }

    public int hashCode() {
        int i = this.f15400a;
        Spannable spannable = this.f15401b;
        int i2 = 0;
        int hashCode = spannable != null ? spannable.hashCode() : 0;
        Spannable spannable2 = this.f15402c;
        if (spannable2 != null) {
            i2 = spannable2.hashCode();
        }
        return (((((((((((i * 31) + hashCode) * 31) + i2) * 31) + this.f15403d) * 31) + this.e) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0);
    }

    public boolean isExpanded() {
        return this.f;
    }

    public boolean isHeader() {
        return this.g;
    }

    public void setExpanded(boolean z) {
        this.f = z;
    }

    public void setTextMaxHeight(int i) {
        this.f15403d = i;
    }

    public void setTextMinHeight(int i) {
        this.e = i;
    }
}
