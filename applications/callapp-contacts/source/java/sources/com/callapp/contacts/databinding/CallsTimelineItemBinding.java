package com.callapp.contacts.databinding;

import android.view.View;
import androidx.p061m.AbstractC1286a;
import com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallsTimelineItemBinding.class */
public final class CallsTimelineItemBinding implements AbstractC1286a {

    /* renamed from: a */
    public final TextRoundCornerProgressBar f25011a;

    /* renamed from: b */
    private final TextRoundCornerProgressBar f25012b;

    private CallsTimelineItemBinding(TextRoundCornerProgressBar textRoundCornerProgressBar, TextRoundCornerProgressBar textRoundCornerProgressBar2) {
        this.f25012b = textRoundCornerProgressBar;
        this.f25011a = textRoundCornerProgressBar2;
    }

    /* renamed from: a */
    public static CallsTimelineItemBinding m29068a(View view) {
        Objects.requireNonNull(view, "rootView");
        TextRoundCornerProgressBar textRoundCornerProgressBar = (TextRoundCornerProgressBar) view;
        return new CallsTimelineItemBinding(textRoundCornerProgressBar, textRoundCornerProgressBar);
    }

    @Override // androidx.p061m.AbstractC1286a
    public final TextRoundCornerProgressBar getRoot() {
        return this.f25012b;
    }
}
