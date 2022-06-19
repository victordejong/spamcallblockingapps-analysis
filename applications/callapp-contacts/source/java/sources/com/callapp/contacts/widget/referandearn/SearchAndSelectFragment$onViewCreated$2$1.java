package com.callapp.contacts.widget.referandearn;

import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "v", "Landroid/view/View;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "Landroid/view/MotionEvent;", "onTouch"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$onViewCreated$2$1.class */
final class SearchAndSelectFragment$onViewCreated$2$1 implements View.OnTouchListener {

    /* renamed from: a */
    public static final SearchAndSelectFragment$onViewCreated$2$1 f29430a = new SearchAndSelectFragment$onViewCreated$2$1();

    SearchAndSelectFragment$onViewCreated$2$1() {
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View v, MotionEvent motionEvent) {
        C18524p.m3843b(v, "v");
        Object systemService = v.getContext().getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(v.getWindowToken(), 0);
        return false;
    }
}
