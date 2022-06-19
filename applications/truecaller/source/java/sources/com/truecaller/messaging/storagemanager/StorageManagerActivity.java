package com.truecaller.messaging.storagemanager;

import android.os.Bundle;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p271o.AbstractC7081c;
import p193e.p194a.p195a.p271o.C7086h;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/storagemanager/StorageManagerActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/storagemanager/StorageManagerActivity.class */
public final class StorageManagerActivity extends AbstractC7081c {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        StorageManagerActivity.super.onCreate(bundle);
        C17422k.m16066m0(this, true);
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            Objects.requireNonNull(C7086h.f22827i);
            c26907a.m1120m(16908290, new C7086h(), null);
            c26907a.mo1127f();
        }
    }
}
