package com.truecaller.messaging.mediaviewer;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p242j.C6407a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/mediaviewer/MediaViewerActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/mediaviewer/MediaViewerActivity.class */
public final class MediaViewerActivity extends h {
    /* renamed from: pa */
    public static final Intent m34953pa(Context context, BinaryEntity binaryEntity, Message message, Conversation conversation, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(binaryEntity, "entity");
        l.e(message, "message");
        Intent putExtra = new Intent(context, MediaViewerActivity.class).putExtra("entity", binaryEntity).putExtra("message", message).putExtra("conversation", conversation).putExtra("is_bubble_intent", z);
        l.d(putExtra, "Intent(context, MediaVie…E_INTENT, isBubbleIntent)");
        return putExtra;
    }

    /* renamed from: qa */
    public static final String m34952qa(long j) {
        return C22128a.m8583p2("media#", j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Message message;
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16067m(theme, true);
        MediaViewerActivity.super.onCreate(bundle);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        BinaryEntity binaryEntity = (BinaryEntity) getIntent().getParcelableExtra("entity");
        if (binaryEntity == null || (message = (Message) getIntent().getParcelableExtra("message")) == null) {
            return;
        }
        Conversation conversation = (Conversation) getIntent().getParcelableExtra("conversation");
        boolean booleanExtra = getIntent().getBooleanExtra("is_bubble_intent", false);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        Objects.requireNonNull(C6407a.f21328d);
        l.e(binaryEntity, "entity");
        l.e(message, "message");
        C6407a c6407a = new C6407a();
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("entity", binaryEntity);
        bundle2.putParcelable("message", message);
        bundle2.putParcelable("conversation", conversation);
        bundle2.putBoolean("is_bubble_intent", booleanExtra);
        c6407a.setArguments(bundle2);
        c26907a.m1120m(16908290, c6407a, null);
        c26907a.mo1127f();
    }
}
