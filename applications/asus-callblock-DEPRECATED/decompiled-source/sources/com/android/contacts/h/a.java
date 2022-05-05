package com.android.contacts.h;

import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/h/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f1429a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1430b;
    private ForegroundColorSpan c;
    private BackgroundColorSpan d;

    public a(int i, int i2) {
        this.f1429a = i;
        this.f1430b = i2;
    }

    public final CharSequence a(CharSequence charSequence, char[] cArr) {
        boolean z;
        int i;
        if (cArr != null) {
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i2 >= cArr.length) {
                    break;
                }
                char c = cArr[i2];
                z2 = z2;
                if (c >= 19968) {
                    z2 = z2;
                    if (c <= 40869) {
                        z2 = true;
                    }
                }
                i2++;
            }
        } else {
            z = false;
        }
        if (!z) {
            if (cArr == null || charSequence == null) {
                i = -1;
            } else {
                int length = charSequence.length();
                int length2 = cArr.length;
                if (length2 == 0 || length < length2) {
                    i = -1;
                } else {
                    int i3 = 0;
                    while (i3 < length) {
                        while (i3 < length && !Character.isLetterOrDigit(charSequence.charAt(i3))) {
                            i3++;
                        }
                        if (i3 + length2 > length) {
                            break;
                        }
                        int i4 = 0;
                        while (i4 < length2 && Character.toUpperCase(charSequence.charAt(i3 + i4)) == cArr[i4]) {
                            i4++;
                        }
                        i = i3;
                        if (i4 == length2) {
                            break;
                        }
                        int i5 = i3;
                        while (true) {
                            i3 = i5;
                            if (i5 < length) {
                                i3 = i5;
                                if (Character.isLetterOrDigit(charSequence.charAt(i5))) {
                                    i5++;
                                }
                            }
                        }
                    }
                    i = -1;
                }
            }
        } else if (cArr == null || charSequence == null) {
            i = -1;
        } else {
            int length3 = charSequence.length();
            int length4 = cArr.length;
            if (length4 == 0 || length3 < length4) {
                i = -1;
            } else {
                int i6 = 0;
                while (i6 < length3) {
                    while (i6 < length3 && !Character.isLetterOrDigit(charSequence.charAt(i6))) {
                        i6++;
                    }
                    if (i6 + length4 > length3) {
                        break;
                    }
                    int i7 = 0;
                    while (i7 < length4 && Character.toUpperCase(charSequence.charAt(i6 + i7)) == cArr[i7]) {
                        i7++;
                    }
                    i = i6;
                    if (i7 == length4) {
                        break;
                    }
                    i6++;
                }
                i = -1;
            }
        }
        SpannableString spannableString = charSequence;
        if (i != -1) {
            if (this.c == null) {
                this.c = new ForegroundColorSpan(this.f1429a);
            }
            if (this.d == null) {
                this.d = new BackgroundColorSpan(this.f1430b);
            }
            SpannableString spannableString2 = new SpannableString(charSequence);
            spannableString2.setSpan(this.c, i, cArr.length + i, 0);
            spannableString2.setSpan(this.d, i, cArr.length + i, 0);
            spannableString = spannableString2;
        }
        return spannableString;
    }

    public final void a(TextView textView, String str, char[] cArr) {
        textView.setText(a(str, cArr));
    }
}
