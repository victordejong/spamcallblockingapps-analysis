package p193e.p194a.p195a.p200c.p219p8;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import s1.z.c.l;
/* renamed from: e.a.a.c.p8.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p8/h.class */
public final class C5668h implements TextWatcher {

    /* renamed from: a */
    public final Context f19027a;

    /* renamed from: b */
    public boolean f19028b;

    public C5668h(Context context, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f19027a = context;
        this.f19028b = z;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        l.e(editable, "s");
        if (this.f19028b) {
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            TextDelimiterFormatter.m35098c(this.f19027a, editable, TextDelimiterFormatter.DelimiterVisibility.SHOW);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
