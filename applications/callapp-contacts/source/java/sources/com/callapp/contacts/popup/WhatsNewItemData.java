package com.callapp.contacts.popup;

import android.text.Spannable;
import com.callapp.contacts.util.HtmlUtils;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/WhatsNewItemData.class */
public class WhatsNewItemData {

    /* renamed from: a */
    private final int f26980a;

    /* renamed from: b */
    private final Spannable f26981b;

    /* renamed from: c */
    private final Spannable f26982c;

    /* renamed from: d */
    private int f26983d;

    /* renamed from: e */
    private int f26984e;

    /* renamed from: f */
    private boolean f26985f;

    /* renamed from: g */
    private final boolean f26986g;

    public WhatsNewItemData(int i, Spannable spannable, Spannable spannable2) {
        this.f26985f = false;
        this.f26980a = i;
        this.f26981b = spannable;
        this.f26982c = spannable2;
        this.f26986g = false;
    }

    public WhatsNewItemData(int i, String str, Spannable spannable) {
        this(i, HtmlUtils.m27537b(str), spannable);
    }

    public WhatsNewItemData(Spannable spannable) {
        this.f26985f = false;
        this.f26980a = 0;
        this.f26981b = spannable;
        this.f26982c = null;
        this.f26986g = true;
    }

    public WhatsNewItemData(String str) {
        this(HtmlUtils.m27537b(str));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WhatsNewItemData whatsNewItemData = (WhatsNewItemData) obj;
        if (this.f26980a != whatsNewItemData.f26980a || this.f26983d != whatsNewItemData.f26983d || this.f26984e != whatsNewItemData.f26984e || this.f26985f != whatsNewItemData.f26985f || this.f26986g != whatsNewItemData.f26986g || !Objects.equals(this.f26981b, whatsNewItemData.f26981b)) {
            return false;
        }
        return Objects.equals(this.f26982c, whatsNewItemData.f26982c);
    }

    public int getIconResId() {
        return this.f26980a;
    }

    public Spannable getText() {
        return this.f26982c;
    }

    public int getTextMaxHeight() {
        return this.f26983d;
    }

    public int getTextMinHeight() {
        return this.f26984e;
    }

    public Spannable getTitle() {
        return this.f26981b;
    }

    public int hashCode() {
        int i = this.f26980a;
        Spannable spannable = this.f26981b;
        int i2 = 0;
        int hashCode = spannable != null ? spannable.hashCode() : 0;
        Spannable spannable2 = this.f26982c;
        if (spannable2 != null) {
            i2 = spannable2.hashCode();
        }
        return (((((((((((i * 31) + hashCode) * 31) + i2) * 31) + this.f26983d) * 31) + this.f26984e) * 31) + (this.f26985f ? 1 : 0)) * 31) + (this.f26986g ? 1 : 0);
    }

    public boolean isExpanded() {
        return this.f26985f;
    }

    public boolean isHeader() {
        return this.f26986g;
    }

    public void setExpanded(boolean z) {
        this.f26985f = z;
    }

    public void setTextMaxHeight(int i) {
        this.f26983d = i;
    }

    public void setTextMinHeight(int i) {
        this.f26984e = i;
    }
}
