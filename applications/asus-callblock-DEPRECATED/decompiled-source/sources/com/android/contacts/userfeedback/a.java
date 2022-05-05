package com.android.contacts.userfeedback;

import android.content.Context;
import android.util.Log;
import com.uservoice.uservoicesdk.b;
import com.uservoice.uservoicesdk.g;
/* loaded from: classes-dex2jar.jar:com/android/contacts/userfeedback/a.class */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static int f2176b;
    private static int c;
    private static int d;
    private static int e;
    private static int f;
    private static int g;

    /* renamed from: a  reason: collision with root package name */
    private static final String f2175a = a.class.getSimpleName();
    private static b h = new b() { // from class: com.android.contacts.userfeedback.a.1
        @Override // com.uservoice.uservoicesdk.b
        public final int a() {
            return a.c;
        }

        @Override // com.uservoice.uservoicesdk.b
        public final int b() {
            return a.f2176b;
        }

        @Override // com.uservoice.uservoicesdk.b
        public final int c() {
            return a.d;
        }
    };
    private static b i = new b() { // from class: com.android.contacts.userfeedback.a.2
        @Override // com.uservoice.uservoicesdk.b
        public final int a() {
            return a.f;
        }

        @Override // com.uservoice.uservoicesdk.b
        public final int b() {
            return a.e;
        }

        @Override // com.uservoice.uservoicesdk.b
        public final int c() {
            return a.g;
        }
    };

    public static void a(Context context) {
        if (context != null) {
            Log.d(f2175a, "launchContactsUserVoice");
            if (context != null) {
                Log.d(f2175a, "initContactsUserVoice");
                f2176b = context.getResources().getInteger(2131361803);
                c = context.getResources().getInteger(2131361805);
                d = context.getResources().getColor(2131034418);
                g.a(h, context);
                g.a();
            }
            g.a(context);
        }
    }

    public static boolean a() {
        return true;
    }

    public static void b(Context context) {
        if (context != null) {
            Log.d(f2175a, "launchPhoneUserVoice");
            if (context != null) {
                Log.d(f2175a, "initPhoneUserVoice");
                e = context.getResources().getInteger(2131361804);
                f = context.getResources().getInteger(2131361806);
                g = context.getResources().getColor(2131034418);
                g.a(i, context);
                g.a();
            }
            g.a(context);
        }
    }

    public static boolean b() {
        return true;
    }
}
