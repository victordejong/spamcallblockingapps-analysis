package com.android.contacts.list;

import android.text.TextUtils;
import android.widget.SectionIndexer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ae.class */
public final class ae implements SectionIndexer {

    /* renamed from: a  reason: collision with root package name */
    String[] f1766a;

    /* renamed from: b  reason: collision with root package name */
    int[] f1767b;
    int c;

    public ae(String[] strArr, int[] iArr) {
        if (strArr == null || iArr == null) {
            throw new NullPointerException();
        } else if (strArr.length != iArr.length) {
            throw new IllegalArgumentException("The sections and counts arrays must have the same length");
        } else {
            this.f1766a = strArr;
            this.f1767b = new int[iArr.length];
            int i = 0;
            int i2 = 0;
            while (i < iArr.length) {
                if (TextUtils.isEmpty(this.f1766a[i])) {
                    this.f1766a[i] = " ";
                } else if (!this.f1766a[i].equals(" ")) {
                    this.f1766a[i] = this.f1766a[i].trim();
                }
                this.f1767b[i] = i2;
                int i3 = iArr[i];
                i++;
                i2 = i3 + i2;
            }
            this.c = i2;
        }
    }

    @Override // android.widget.SectionIndexer
    public final int getPositionForSection(int i) {
        return (i < 0 || i >= this.f1766a.length) ? -1 : this.f1767b[i];
    }

    @Override // android.widget.SectionIndexer
    public final int getSectionForPosition(int i) {
        int i2;
        if (i < 0 || i >= this.c) {
            i2 = -1;
        } else {
            int binarySearch = Arrays.binarySearch(this.f1767b, i);
            i2 = binarySearch;
            if (binarySearch < 0) {
                i2 = (-binarySearch) - 2;
            }
        }
        return i2;
    }

    @Override // android.widget.SectionIndexer
    public final Object[] getSections() {
        return this.f1766a;
    }
}
