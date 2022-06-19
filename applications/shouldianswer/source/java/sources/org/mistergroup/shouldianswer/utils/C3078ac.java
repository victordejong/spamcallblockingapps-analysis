package org.mistergroup.shouldianswer.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.google.android.gms.common.internal.ImagesContract;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.ac */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/ac.class */
public final class C3078ac {

    /* renamed from: a */
    public static final C3078ac f8981a = new C3078ac();

    private C3078ac() {
    }

    /* renamed from: a */
    public final void m220a(Context context, String str) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(str, ImagesContract.URL);
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e) {
            Toast.makeText(context, "Error - " + e.getMessage(), 1).show();
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }
}
