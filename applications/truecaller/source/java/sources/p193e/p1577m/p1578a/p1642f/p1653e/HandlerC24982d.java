package p193e.p1577m.p1578a.p1642f.p1653e;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.internal.base.zap;
import java.util.Objects;
/* renamed from: e.m.a.f.e.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/d.class */
public final class HandlerC24982d extends zap {

    /* renamed from: a */
    public final Context f69942a;

    /* renamed from: b */
    public final /* synthetic */ GoogleApiAvailability f69943b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC24982d(GoogleApiAvailability googleApiAvailability, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f69943b = googleApiAvailability;
        this.f69942a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        int mo39063d = this.f69943b.mo39063d(this.f69942a);
        Objects.requireNonNull(this.f69943b);
        if (!GooglePlayServicesUtilLight.isUserRecoverableError(mo39063d)) {
            return;
        }
        GoogleApiAvailability googleApiAvailability = this.f69943b;
        Context context = this.f69942a;
        googleApiAvailability.m39070h(context, mo39063d, null, googleApiAvailability.m39064c(context, mo39063d, 0, "n"));
    }
}
