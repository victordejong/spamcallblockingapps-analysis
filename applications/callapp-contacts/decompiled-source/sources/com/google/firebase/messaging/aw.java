package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import com.google.android.gms.tasks.h;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aw.class */
final class aw extends Binder {

    /* renamed from: a  reason: collision with root package name */
    final a f32522a;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aw$a.class */
    interface a {
        h<Void> a(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(a aVar) {
        this.f32522a = aVar;
    }
}
