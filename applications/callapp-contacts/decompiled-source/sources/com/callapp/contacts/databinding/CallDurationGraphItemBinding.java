package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.m.a;
import com.callapp.contacts.activity.analytics.graph.CallAllRoundedCornerProgressBar;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallDurationGraphItemBinding.class */
public final class CallDurationGraphItemBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final CallAllRoundedCornerProgressBar f14277a;

    /* renamed from: b  reason: collision with root package name */
    private final CallAllRoundedCornerProgressBar f14278b;

    private CallDurationGraphItemBinding(CallAllRoundedCornerProgressBar callAllRoundedCornerProgressBar, CallAllRoundedCornerProgressBar callAllRoundedCornerProgressBar2) {
        this.f14278b = callAllRoundedCornerProgressBar;
        this.f14277a = callAllRoundedCornerProgressBar2;
    }

    public static CallDurationGraphItemBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558509, viewGroup, false);
        Objects.requireNonNull(inflate, "rootView");
        CallAllRoundedCornerProgressBar callAllRoundedCornerProgressBar = (CallAllRoundedCornerProgressBar) inflate;
        return new CallDurationGraphItemBinding(callAllRoundedCornerProgressBar, callAllRoundedCornerProgressBar);
    }

    @Override // androidx.m.a
    public final CallAllRoundedCornerProgressBar getRoot() {
        return this.f14278b;
    }
}
