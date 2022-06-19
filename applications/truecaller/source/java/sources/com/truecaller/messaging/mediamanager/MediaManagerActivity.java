package com.truecaller.messaging.mediamanager;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Conversation;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p269n.C6988a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/truecaller/messaging/mediamanager/MediaManagerActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/mediamanager/MediaManagerActivity.class */
public final class MediaManagerActivity extends h {

    /* renamed from: a */
    public static final C4224a f13548a = new C4224a(null);

    /* renamed from: com.truecaller.messaging.mediamanager.MediaManagerActivity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/mediamanager/MediaManagerActivity$a.class */
    public static final class C4224a {
        public C4224a(f fVar) {
        }

        /* renamed from: a */
        public final Intent m34972a(Context context, Conversation conversation, String str, boolean z) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(conversation, "conversation");
            l.e(str, "analyticsContext");
            Intent putExtra = new Intent(context, MediaManagerActivity.class).putExtra("conversation", conversation).putExtra("analytics_context", str).putExtra("is_delete_mode", z);
            l.d(putExtra, "Intent(context, MediaMan…ELETE_MODE, isDeleteMode)");
            return putExtra;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        MediaManagerActivity.super.onCreate(bundle);
        Conversation conversation = (Conversation) getIntent().getParcelableExtra("conversation");
        if (conversation != null) {
            C6988a.C6990c c6990c = C6988a.f22578f;
            String stringExtra = getIntent().getStringExtra("analytics_context");
            if (stringExtra == null) {
                stringExtra = "unknown";
            }
            l.d(stringExtra, "intent.getStringExtra(EX…AnalyticsContexts.UNKNOWN");
            boolean booleanExtra = getIntent().getBooleanExtra("is_delete_mode", false);
            Objects.requireNonNull(c6990c);
            l.e(conversation, "conversation");
            l.e(stringExtra, "analyticsContext");
            Fragment c6988a = new C6988a();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("conversation", conversation);
            bundle2.putString("analytics_context", stringExtra);
            bundle2.putBoolean("is_delete_mode", booleanExtra);
            c6988a.setArguments(bundle2);
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(16908290, c6988a, null);
            c26907a.mo1127f();
        }
    }
}
