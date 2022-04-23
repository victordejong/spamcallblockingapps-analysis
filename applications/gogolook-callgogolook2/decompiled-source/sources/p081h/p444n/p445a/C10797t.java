package p081h.p444n.p445a;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.File;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
/* renamed from: h.n.a.t */
/* loaded from: classes2-dex2jar.jar:h/n/a/t.class */
public final class C10797t implements AbstractC10782j {
    @VisibleForTesting

    /* renamed from: a */
    public final Call.Factory f24652a;

    public C10797t(Context context) {
        this(C10770e0.m10664b(context));
    }

    public C10797t(File file) {
        this(file, C10770e0.m10670a(file));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C10797t(java.io.File r8, long r9) {
        /*
            r7 = this;
            okhttp3.OkHttpClient$Builder r0 = new okhttp3.OkHttpClient$Builder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            okhttp3.Cache r1 = new okhttp3.Cache
            r2 = r1
            r3 = r8
            r4 = r9
            r2.<init>(r3, r4)
            okhttp3.OkHttpClient$Builder r0 = r0.cache(r1)
            r0 = r7
            r1 = r11
            okhttp3.OkHttpClient r1 = r1.build()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p444n.p445a.C10797t.<init>(java.io.File, long):void");
    }

    public C10797t(OkHttpClient okHttpClient) {
        this.f24652a = okHttpClient;
        okHttpClient.cache();
    }

    @Override // p081h.p444n.p445a.AbstractC10782j
    @NonNull
    /* renamed from: a */
    public Response mo10613a(@NonNull Request request) throws IOException {
        return FirebasePerfOkHttpClient.execute(this.f24652a.newCall(request));
    }
}
