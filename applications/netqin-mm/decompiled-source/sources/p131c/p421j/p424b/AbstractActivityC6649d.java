package p131c.p421j.p424b;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.DataKeys;
import com.mopub.common.util.Utils;
/* renamed from: c.j.b.d */
/* loaded from: classes2-dex2jar.jar:c/j/b/d.class */
public abstract class AbstractActivityC6649d extends Activity {

    /* renamed from: a */
    public AdReport f20532a;

    /* renamed from: b */
    public CloseableLayout f20533b;

    /* renamed from: c */
    public Long f20534c;

    /* renamed from: c.j.b.d$a */
    /* loaded from: classes2-dex2jar.jar:c/j/b/d$a.class */
    public class C6650a implements CloseableLayout.OnCloseListener {
        public C6650a() {
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            AbstractActivityC6649d.this.finish();
        }
    }

    /* renamed from: a */
    public static AdReport m20194a(Intent intent) {
        try {
            return (AdReport) intent.getSerializableExtra(DataKeys.AD_REPORT_KEY);
        } catch (ClassCastException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m20193a(AdReport adReport) {
        return adReport != null ? adReport.getResponseString() : null;
    }

    /* renamed from: b */
    public static Long m20191b(Intent intent) {
        if (intent.hasExtra(DataKeys.BROADCAST_IDENTIFIER_KEY)) {
            return Long.valueOf(intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L));
        }
        return null;
    }

    /* renamed from: a */
    public Long m20195a() {
        return this.f20534c;
    }

    /* renamed from: b */
    public CloseableLayout m20192b() {
        return this.f20533b;
    }

    /* renamed from: c */
    public String m20190c() {
        return m20193a(this.f20532a);
    }

    /* renamed from: d */
    public void m20189d() {
        CloseableLayout closeableLayout = this.f20533b;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisible(false);
        }
    }

    /* renamed from: e */
    public void m20188e() {
        CloseableLayout closeableLayout = this.f20533b;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisible(true);
        }
    }

    public abstract View getAdView();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.f20534c = m20191b(intent);
        this.f20532a = m20194a(intent);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        View adView = getAdView();
        this.f20533b = new CloseableLayout(this);
        this.f20533b.setBackgroundColor(getResources().getColor(17170444));
        this.f20533b.setOnCloseListener(new C6650a());
        this.f20533b.addView(adView, new FrameLayout.LayoutParams(-1, -1));
        setContentView(this.f20533b);
        Utils.hideNavigationBar(this);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        CloseableLayout closeableLayout = this.f20533b;
        if (closeableLayout != null) {
            closeableLayout.removeAllViews();
        }
        super.onDestroy();
    }
}
