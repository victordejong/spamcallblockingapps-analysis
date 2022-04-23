package com.tmobile.services.nameid.utility;

import android.text.InputFilter;
import android.text.Spanned;
/* renamed from: com.tmobile.services.nameid.utility.l1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/l1.class */
public final /* synthetic */ class C1959l1 implements InputFilter {

    /* renamed from: f */
    public static final /* synthetic */ C1959l1 f14562f = new C1959l1();

    private /* synthetic */ C1959l1() {
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        return SearchHelper.m5360p(charSequence, i, i2, spanned, i3, i4);
    }
}
