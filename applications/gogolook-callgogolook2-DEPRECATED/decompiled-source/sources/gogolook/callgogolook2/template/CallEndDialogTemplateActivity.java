package gogolook.callgogolook2.template;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import gogolook.callgogolook2.AbstractDialogActivity;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p569u0.DialogC13655b;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14300r;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/template/CallEndDialogTemplateActivity.class */
public class CallEndDialogTemplateActivity extends AbstractDialogActivity {
    /* renamed from: a */
    public static Intent m26020a(@NonNull Context context, @Nullable C13673f fVar) {
        Intent intent = new Intent(context, CallEndDialogTemplateActivity.class);
        intent.putExtra("ARG_CONFIG", new Gson().m30988a(fVar));
        intent.setFlags(268435456);
        C14300r.m1653a("CallEndDialogTemplateActivity", intent);
        return intent;
    }

    @Override // gogolook.callgogolook2.AbstractDialogActivity
    /* renamed from: a */
    public Dialog mo26021a(Activity activity) {
        C14300r.m1652b("CallEndDialogTemplateActivity", getIntent());
        String stringExtra = getIntent().getStringExtra("ARG_CONFIG");
        if (C14217x3.m2160b(stringExtra)) {
            return null;
        }
        C13673f fVar = (C13673f) new Gson().m30982a(stringExtra, (Class<Object>) C13673f.class);
        DialogC13655b bVar = new DialogC13655b(this);
        bVar.m3732b(fVar);
        bVar.m3731c();
        bVar.setCancelable(true);
        return bVar;
    }
}
