package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import com.google.android.gms.tasks.AbstractC14185h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.messaging.aw */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aw.class */
public final class BinderC15866aw extends Binder {

    /* renamed from: a */
    final AbstractC15867a f56397a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.messaging.aw$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aw$a.class */
    public interface AbstractC15867a {
        /* renamed from: a */
        AbstractC14185h<Void> mo8133a(Intent intent);
    }

    public BinderC15866aw(AbstractC15867a abstractC15867a) {
        this.f56397a = abstractC15867a;
    }
}
