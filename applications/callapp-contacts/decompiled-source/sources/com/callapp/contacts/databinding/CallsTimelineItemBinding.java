package com.callapp.contacts.databinding;

import android.view.View;
import androidx.m.a;
import com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallsTimelineItemBinding.class */
public final class CallsTimelineItemBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final TextRoundCornerProgressBar f14303a;

    /* renamed from: b  reason: collision with root package name */
    private final TextRoundCornerProgressBar f14304b;

    private CallsTimelineItemBinding(TextRoundCornerProgressBar textRoundCornerProgressBar, TextRoundCornerProgressBar textRoundCornerProgressBar2) {
        this.f14304b = textRoundCornerProgressBar;
        this.f14303a = textRoundCornerProgressBar2;
    }

    public static CallsTimelineItemBinding a(View view) {
        Objects.requireNonNull(view, "rootView");
        TextRoundCornerProgressBar textRoundCornerProgressBar = (TextRoundCornerProgressBar) view;
        return new CallsTimelineItemBinding(textRoundCornerProgressBar, textRoundCornerProgressBar);
    }

    @Override // androidx.m.a
    public final TextRoundCornerProgressBar getRoot() {
        return this.f14304b;
    }
}
