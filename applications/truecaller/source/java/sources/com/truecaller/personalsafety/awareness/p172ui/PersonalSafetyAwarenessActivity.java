package com.truecaller.personalsafety.awareness.p172ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.personalsafety.C4318R;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p194a.p1399z.p1400a.p1401a.C21819a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "a", "personal-safety_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.personalsafety.awareness.ui.PersonalSafetyAwarenessActivity */
/* loaded from: classes11-dex2jar.jar:com/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity.class */
public final class PersonalSafetyAwarenessActivity extends h {

    /* renamed from: a */
    public static final /* synthetic */ int f14152a = 0;

    /* renamed from: com.truecaller.personalsafety.awareness.ui.PersonalSafetyAwarenessActivity$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity$a.class */
    public static final class C4323a {
        /* renamed from: a */
        public static final Intent m34829a(Context context, String str) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "source");
            Intent intent = new Intent(context, PersonalSafetyAwarenessActivity.class);
            intent.putExtra("source", str);
            return intent;
        }
    }

    /* renamed from: com.truecaller.personalsafety.awareness.ui.PersonalSafetyAwarenessActivity$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/personalsafety/awareness/ui/PersonalSafetyAwarenessActivity$b.class */
    public static final class C4324b extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4324b() {
            super(0);
            PersonalSafetyAwarenessActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.personalsafety.awareness.ui.PersonalSafetyAwarenessActivity, android.app.Activity] */
        public Object invoke() {
            PersonalSafetyAwarenessActivity.this.finish();
            return s.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        PersonalSafetyAwarenessActivity.super.onCreate(bundle);
        setContentView(C4318R.layout.activity_personal_safety_awareness_activity);
        String stringExtra = getIntent().getStringExtra("source");
        C21819a c21819a = new C21819a();
        Bundle bundle2 = new Bundle();
        bundle2.putString("arg_source", stringExtra);
        c21819a.setArguments(bundle2);
        C4324b c4324b = new C4324b();
        l.e(c4324b, "onDismiss");
        c21819a.f60683c = c4324b;
        c21819a.show(getSupportFragmentManager(), "PersonalSafetyAwarenessSheet");
    }
}
