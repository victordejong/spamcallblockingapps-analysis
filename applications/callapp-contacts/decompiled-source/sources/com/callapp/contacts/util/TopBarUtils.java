package com.callapp.contacts.util;

import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/TopBarUtils.class */
public class TopBarUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/TopBarUtils$TopBarTitle.class */
    public enum TopBarTitle {
        TITLE_TOP_BAR,
        SUBTITLE_TOP_BAR,
        TITLE_TOP_BAR_SMALL
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.appcompat.app.ActionBar a(android.app.Activity r4, androidx.appcompat.app.ActionBar r5, com.callapp.contacts.util.TopBarUtils.TopBarTitle r6, int r7) {
        /*
            r0 = r6
            com.callapp.contacts.util.TopBarUtils$TopBarTitle r1 = com.callapp.contacts.util.TopBarUtils.TopBarTitle.TITLE_TOP_BAR
            if (r0 == r1) goto L_0x0023
            r0 = r6
            com.callapp.contacts.util.TopBarUtils$TopBarTitle r1 = com.callapp.contacts.util.TopBarUtils.TopBarTitle.SUBTITLE_TOP_BAR
            if (r0 != r1) goto L_0x0015
            r0 = 2131951862(0x7f1300f6, float:1.954015E38)
            r8 = r0
            goto L_0x0027
        L_0x0015:
            r0 = r6
            com.callapp.contacts.util.TopBarUtils$TopBarTitle r1 = com.callapp.contacts.util.TopBarUtils.TopBarTitle.TITLE_TOP_BAR_SMALL
            if (r0 != r1) goto L_0x0023
            r0 = 2131951848(0x7f1300e8, float:1.9540122E38)
            r8 = r0
            goto L_0x0027
        L_0x0023:
            r0 = 2131952312(0x7f1302b8, float:1.9541063E38)
            r8 = r0
        L_0x0027:
            r0 = r5
            if (r0 == 0) goto L_0x0061
            r0 = r5
            r1 = r7
            r0.a(r1)
            r0 = r5
            android.view.View r0 = r0.b()
            r1 = 2131361947(0x7f0a009b, float:1.834366E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r6 = r0
            r0 = r6
            r1 = r4
            r2 = r8
            r0.setTextAppearance(r1, r2)
            r0 = r6
            r1 = r5
            java.lang.CharSequence r1 = r1.c()
            r0.setText(r1)
            r0 = r5
            r1 = r4
            r2 = 2131231943(0x7f0804c7, float:1.8079981E38)
            android.graphics.drawable.Drawable r1 = androidx.core.content.b.a(r1, r2)
            r0.b(r1)
            r0 = r5
            r1 = 1
            r0.a(r1)
            r0 = r5
            r0.a()
            r0 = r5
            return r0
        L_0x0061:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.TopBarUtils.a(android.app.Activity, androidx.appcompat.app.ActionBar, com.callapp.contacts.util.TopBarUtils$TopBarTitle, int):androidx.appcompat.app.ActionBar");
    }

    public static void a(ActionBar actionBar, CharSequence charSequence) {
        if (actionBar != null) {
            if ((actionBar.d() & 16) != 0) {
                ((TextView) actionBar.b().findViewById(2131361947)).setText(charSequence);
            } else {
                actionBar.a(charSequence);
            }
        }
    }
}
