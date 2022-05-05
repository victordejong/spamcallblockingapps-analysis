package p081h.p203i.p204a.p224e.p226b.p227e;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6746h;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
/* renamed from: h.i.a.e.b.e.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/k.class */
public final class C6768k extends C6805a.AbstractC6806a<C6746h, GoogleSignInOptions> {
    @Override // p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6806a
    /* renamed from: a */
    public final /* synthetic */ C6746h mo16058a(Context context, Looper looper, C6983e eVar, @Nullable GoogleSignInOptions googleSignInOptions, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar) {
        return new C6746h(context, looper, eVar, googleSignInOptions, bVar, cVar);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.C6805a.C6815e
    /* renamed from: a */
    public final /* synthetic */ List mo21859a(@Nullable Object obj) {
        GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
        return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.m32034I();
    }
}
