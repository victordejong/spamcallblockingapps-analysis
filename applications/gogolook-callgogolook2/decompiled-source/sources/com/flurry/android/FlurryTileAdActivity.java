package com.flurry.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import androidx.media2.session.SessionCommand;
import com.flurry.sdk.AbstractC3506u;
import com.flurry.sdk.C2921cr;
import com.flurry.sdk.C3162gl;
import com.flurry.sdk.C3323iz;
import com.flurry.sdk.C3356jq;
import com.flurry.sdk.C3363jx;
import com.flurry.sdk.C3368jz;
import com.flurry.sdk.C3418km;
import com.flurry.sdk.C3445la;
import com.flurry.sdk.C3484p;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryTileAdActivity.class */
public final class FlurryTileAdActivity extends Activity {

    /* renamed from: a */
    public static final String f3866a = FlurryTileAdActivity.class.getSimpleName();

    /* renamed from: b */
    public C3162gl f3867b;

    public static Intent newIntent(Context context, int i) {
        return new Intent(context, FlurryTileAdActivity.class).putExtra("ad_object_id", i);
    }

    @Override // android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        int intExtra = getIntent().getIntExtra("ad_object_id", 0);
        if (intExtra != 0) {
            AbstractC3506u uVar = (AbstractC3506u) C3484p.m32358a().f6000b.m32298a(intExtra);
            if (uVar != null) {
                this.f3867b = new C3162gl(this);
                this.f3867b.setAdObject(uVar);
                this.f3867b.setOnCloseListener(new C3162gl.AbstractC3170d() { // from class: com.flurry.android.FlurryTileAdActivity.1
                    @Override // com.flurry.sdk.C3162gl.AbstractC3170d
                    /* renamed from: a */
                    public final void mo32940a() {
                        FlurryTileAdActivity.this.finish();
                    }
                });
                setContentView(this.f3867b);
                final C3162gl glVar = this.f3867b;
                String str = null;
                final String str2 = null;
                for (C2921cr crVar : glVar.f5192b.f6064h.f4111b.m33504b()) {
                    String str3 = crVar.f4515a;
                    String str4 = str;
                    if (str3.equals("htmlRenderer")) {
                        str4 = crVar.f4517c;
                    }
                    str = str4;
                    if (str3.equals("adView")) {
                        str2 = crVar.f4517c;
                        str = str4;
                    }
                }
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    C3356jq.m32615a(5, C3162gl.f5190a, "No HtmlRendererUrl found, close the activity");
                    glVar.m32954a();
                    return;
                }
                if (C3484p.m32358a().f6006h.m33630e(str) != null) {
                    File e = C3484p.m32358a().f6006h.m33631e(glVar.f5192b, str);
                    if (e != null) {
                        try {
                            String b = C3445la.m32459b(new FileInputStream(e));
                            if (!TextUtils.isEmpty(b)) {
                                glVar.m32949a(b, str2);
                                return;
                            }
                            String str5 = C3162gl.f5190a;
                            C3356jq.m32615a(5, str5, "Html renderer content in cache is empty. download it. htmlRendererUrl = " + str);
                        } catch (IOException e2) {
                            C3356jq.m32614a(6, C3162gl.f5190a, "Error reading html renderer content from cache", e2);
                        }
                    }
                } else {
                    String str6 = C3162gl.f5190a;
                    C3356jq.m32615a(4, str6, "No cached asset found for html renderer. htmlRendererUrl = " + str);
                }
                glVar.f5193c = new ProgressBar(glVar.getContext());
                glVar.f5193c.setIndeterminate(true);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = 17;
                glVar.f5193c.setLayoutParams(layoutParams);
                glVar.addView(glVar.f5193c);
                C3162gl.C3166a aVar = new C3162gl.C3166a((byte) 0);
                C3162gl.AbstractC3169b bVar = new C3162gl.AbstractC3169b() { // from class: com.flurry.sdk.gl.3
                    @Override // com.flurry.sdk.C3162gl.AbstractC3169b
                    /* renamed from: a */
                    public final void mo32942a() {
                        C3162gl.this.m32954a();
                    }

                    @Override // com.flurry.sdk.C3162gl.AbstractC3169b
                    /* renamed from: a */
                    public final void mo32941a(String str7) {
                        C3162gl.this.m32949a(str7, str2);
                    }
                };
                C3363jx jxVar = new C3363jx();
                jxVar.f5766g = str;
                jxVar.f5767h = C3368jz.EnumC3371a.kGet;
                jxVar.f5941u = SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD;
                jxVar.f5754d = new C3418km();
                jxVar.f5751a = new C3363jx.AbstractC3365a<Void, String>(aVar, bVar, str) { // from class: com.flurry.sdk.gl.a.1

                    /* renamed from: a */
                    public final /* synthetic */ AbstractC3169b f5202a;

                    /* renamed from: b */
                    public final /* synthetic */ String f5203b;

                    {
                        this.f5202a = bVar;
                        this.f5203b = str;
                    }

                    @Override // com.flurry.sdk.C3363jx.AbstractC3365a
                    /* renamed from: a */
                    public final /* synthetic */ void mo32321a(final C3363jx<Void, String> jxVar2, String str7) {
                        final String str8 = str7;
                        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.gl.a.1.1
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                int i = jxVar2.f5776q;
                                if (i < 200 || i >= 300) {
                                    C3356jq.m32613a(C3162gl.f5190a, String.format(Locale.getDefault(), "Unexpected response code %d for url %s", Integer.valueOf(i), C31671.this.f5203b));
                                    C31671.this.f5202a.mo32942a();
                                    return;
                                }
                                C31671.this.f5202a.mo32941a(str8);
                            }
                        });
                    }
                };
                C3323iz.m32690a().m32623a((Object) aVar, (C3162gl.C3166a) jxVar);
                return;
            }
            C3356jq.m32609b(f3866a, "No ad object found. Can't launch activity");
            finish();
            return;
        }
        C3356jq.m32609b(f3866a, "Invalid ad object id. Can't launch activity");
        finish();
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        C3162gl glVar = this.f3867b;
        if (glVar != null) {
            glVar.m32950a("pause", (Object) null);
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        C3162gl glVar = this.f3867b;
        if (glVar != null) {
            glVar.m32950a("resume", (Object) null);
        }
    }
}
