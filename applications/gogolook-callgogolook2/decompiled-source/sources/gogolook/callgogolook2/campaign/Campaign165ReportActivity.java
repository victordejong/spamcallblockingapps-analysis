package gogolook.callgogolook2.campaign;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import p459j.p460a.p537m.C13015a;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/campaign/Campaign165ReportActivity.class */
public class Campaign165ReportActivity extends Activity {

    /* renamed from: a */
    public static final String f10720a = Campaign165ReportActivity.class.getSimpleName();

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(1);
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("android.intent.extra.SUBJECT");
            String stringExtra2 = intent.getStringExtra("android.intent.extra.TEXT");
            C13015a.C13017b a = C13015a.m4770a();
            if (a.m4765d()) {
                Uri.Builder buildUpon = Uri.parse(a.m4766c()).buildUpon();
                if (stringExtra == null) {
                    stringExtra = "";
                }
                try {
                    startActivity(new Intent("android.intent.action.VIEW", buildUpon.appendQueryParameter("title", stringExtra).appendQueryParameter("url", stringExtra2 != null ? stringExtra2 : "").build()));
                } catch (ActivityNotFoundException e) {
                    C14080m2.m2613a(f10720a, e, true);
                }
            }
        }
        setResult(-1);
        finish();
    }
}
