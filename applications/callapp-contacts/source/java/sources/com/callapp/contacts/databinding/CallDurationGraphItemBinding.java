package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.p061m.AbstractC1286a;
import com.callapp.contacts.activity.analytics.graph.CallAllRoundedCornerProgressBar;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallDurationGraphItemBinding.class */
public final class CallDurationGraphItemBinding implements AbstractC1286a {

    /* renamed from: a */
    public final CallAllRoundedCornerProgressBar f24955a;

    /* renamed from: b */
    private final CallAllRoundedCornerProgressBar f24956b;

    private CallDurationGraphItemBinding(CallAllRoundedCornerProgressBar callAllRoundedCornerProgressBar, CallAllRoundedCornerProgressBar callAllRoundedCornerProgressBar2) {
        this.f24956b = callAllRoundedCornerProgressBar;
        this.f24955a = callAllRoundedCornerProgressBar2;
    }

    /* renamed from: a */
    public static CallDurationGraphItemBinding m29075a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558509, viewGroup, false);
        Objects.requireNonNull(inflate, "rootView");
        CallAllRoundedCornerProgressBar callAllRoundedCornerProgressBar = (CallAllRoundedCornerProgressBar) inflate;
        return new CallDurationGraphItemBinding(callAllRoundedCornerProgressBar, callAllRoundedCornerProgressBar);
    }

    @Override // androidx.p061m.AbstractC1286a
    public final CallAllRoundedCornerProgressBar getRoot() {
        return this.f24956b;
    }
}
