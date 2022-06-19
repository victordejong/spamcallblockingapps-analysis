package com.truecaller.messaging.notifications;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import androidx.appcompat.app.AlertController;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.notifications.ClassZeroActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import n3.b.a.g;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p437c.p578p.C10480a;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/notifications/ClassZeroActivity.class */
public class ClassZeroActivity extends h {

    /* renamed from: g */
    public static final /* synthetic */ int f13643g = 0;

    /* renamed from: a */
    public long f13644a = 0;

    /* renamed from: b */
    public g f13645b = null;

    /* renamed from: c */
    public ArrayList<Message> f13646c = null;

    /* renamed from: d */
    public final Handler f13647d = new HandlerC4236a(this);

    /* renamed from: e */
    public final DialogInterface.OnClickListener f13648e = new DialogInterface.OnClickListener() { // from class: e.a.a.y0.b
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            ClassZeroActivity classZeroActivity = ClassZeroActivity.this;
            Objects.requireNonNull(classZeroActivity);
            dialogInterface.dismiss();
            classZeroActivity.m34926qa();
        }
    };

    /* renamed from: f */
    public final DialogInterface.OnClickListener f13649f = new DialogInterface.OnClickListener() { // from class: e.a.a.y0.a
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            ClassZeroActivity classZeroActivity = ClassZeroActivity.this;
            classZeroActivity.m34923ta(true);
            dialogInterface.dismiss();
            classZeroActivity.m34926qa();
        }
    };

    /* renamed from: com.truecaller.messaging.notifications.ClassZeroActivity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/notifications/ClassZeroActivity$a.class */
    public static class HandlerC4236a extends Handler {

        /* renamed from: a */
        public final WeakReference<ClassZeroActivity> f13650a;

        public HandlerC4236a(ClassZeroActivity classZeroActivity) {
            this.f13650a = new WeakReference<>(classZeroActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            ClassZeroActivity classZeroActivity = this.f13650a.get();
            if (message.what != 1 || classZeroActivity == null) {
                return;
            }
            int i = ClassZeroActivity.f13643g;
            classZeroActivity.m34923ta(false);
            classZeroActivity.m34926qa();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        ClassZeroActivity.super.onCreate(bundle);
        C17422k.m16069l(getTheme());
        requestWindowFeature(1);
        if (bundle != null && bundle.containsKey("messages")) {
            this.f13646c = bundle.getParcelableArrayList("messages");
        }
        if (this.f13646c == null) {
            this.f13646c = new ArrayList<>();
        }
        m34925ra(getIntent());
        if (this.f13646c.isEmpty()) {
            finish();
            return;
        }
        m34927pa(this.f13646c.get(0));
        long uptimeMillis = SystemClock.uptimeMillis() + 300000;
        this.f13644a = uptimeMillis;
        if (bundle == null) {
            return;
        }
        this.f13644a = Math.min(bundle.getLong("timer_fire", uptimeMillis), this.f13644a);
    }

    public void onNewIntent(Intent intent) {
        ClassZeroActivity.super.onNewIntent(intent);
        m34925ra(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onRestart() {
        ClassZeroActivity.super.onRestart();
        if (!this.f13646c.isEmpty()) {
            m34927pa(this.f13646c.get(0));
        } else {
            finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onResume() {
        ClassZeroActivity.super.onResume();
        if (this.f13646c.isEmpty()) {
            finish();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        ClassZeroActivity.super.onSaveInstanceState(bundle);
        if (this.f13646c.size() <= 10) {
            bundle.putLong("timer_fire", this.f13644a);
        }
        ArrayList<Message> arrayList = this.f13646c;
        arrayList.subList(0, Math.max(arrayList.size() - 10, 0)).clear();
        bundle.putParcelableArrayList("messages", this.f13646c);
    }

    public void onStart() {
        ClassZeroActivity.super.onStart();
        m34924sa();
    }

    public void onStop() {
        ClassZeroActivity.super.onStop();
        this.f13647d.removeMessages(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public final void m34927pa(Message message) {
        g gVar = this.f13645b;
        if (gVar != null) {
            gVar.dismiss();
            this.f13645b = null;
        }
        g$a g_a = new g$a(this);
        g_a.f70854a.f156f = message.m35025a();
        g_a.m3660i(2131887922, this.f13649f);
        g_a.m3662g(2131887867, this.f13648e);
        String m25885v0 = C10480a.m25885v0(message.f13382c);
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f154d = m25885v0;
        c0037b.f163m = false;
        this.f13645b = g_a.m3652q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: qa */
    public final void m34926qa() {
        g gVar = this.f13645b;
        if (gVar != null) {
            gVar.dismiss();
            this.f13645b = null;
        }
        if (!this.f13646c.isEmpty()) {
            this.f13646c.remove(0);
        }
        if (this.f13646c.isEmpty()) {
            finish();
            return;
        }
        m34927pa(this.f13646c.get(0));
        this.f13644a = SystemClock.uptimeMillis() + 300000;
        m34924sa();
    }

    /* renamed from: ra */
    public final void m34925ra(Intent intent) {
        Message message = (Message) intent.getParcelableExtra("extra_message_values");
        if (message == null || this.f13646c.contains(message)) {
            return;
        }
        this.f13646c.add(message);
    }

    /* renamed from: sa */
    public final void m34924sa() {
        this.f13647d.removeMessages(1);
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = this.f13644a;
        if (j <= uptimeMillis) {
            this.f13647d.sendEmptyMessage(1);
        } else {
            this.f13647d.sendEmptyMessageAtTime(1, j);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ta */
    public final void m34923ta(boolean z) {
        if (!this.f13646c.isEmpty()) {
            Message message = this.f13646c.get(0);
            AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplicationContext()).mo10154s();
            Message.C4209b m35024b = message.m35024b();
            m35024b.f13428h = z;
            mo10154s.mo12453a7().mo11854a().mo31694d0(m35024b.m35012a(), true);
        }
    }
}
