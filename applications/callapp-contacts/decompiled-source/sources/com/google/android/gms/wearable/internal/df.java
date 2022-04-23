package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.h;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/df.class */
final class df implements i.b<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ DataHolder f30124a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public df(DataHolder dataHolder) {
        this.f30124a = dataHolder;
    }

    @Override // com.google.android.gms.common.api.internal.i.b
    public final void a() {
        this.f30124a.close();
    }

    @Override // com.google.android.gms.common.api.internal.i.b
    public final /* synthetic */ void a(Object obj) {
        try {
            new h(this.f30124a);
        } finally {
            this.f30124a.close();
        }
    }
}
