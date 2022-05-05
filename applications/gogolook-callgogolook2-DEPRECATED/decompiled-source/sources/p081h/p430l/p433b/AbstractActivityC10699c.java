package p081h.p430l.p433b;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.DataKeys;
/* renamed from: h.l.b.c */
/* loaded from: classes2-dex2jar.jar:h/l/b/c.class */
public abstract class AbstractActivityC10699c extends Activity {
    @Nullable

    /* renamed from: a */
    public AdReport f24382a;
    @Nullable

    /* renamed from: b */
    public CloseableLayout f24383b;
    @Nullable

    /* renamed from: c */
    public Long f24384c;

    /* renamed from: h.l.b.c$a */
    /* loaded from: classes2-dex2jar.jar:h/l/b/c$a.class */
    public class C10700a implements CloseableLayout.OnCloseListener {
        public C10700a() {
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            AbstractActivityC10699c.this.finish();
        }
    }

    @Nullable
    /* renamed from: a */
    public static AdReport m10880a(Intent intent) {
        try {
            return (AdReport) intent.getSerializableExtra(DataKeys.AD_REPORT_KEY);
        } catch (ClassCastException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static Long m10878b(Intent intent) {
        if (intent.hasExtra(DataKeys.BROADCAST_IDENTIFIER_KEY)) {
            return Long.valueOf(intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L));
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    public Long m10881a() {
        return this.f24384c;
    }

    /* renamed from: b */
    public void m10879b() {
        CloseableLayout closeableLayout = this.f24383b;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisible(false);
        }
    }

    /* renamed from: c */
    public void m10877c() {
        CloseableLayout closeableLayout = this.f24383b;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisible(true);
        }
    }

    public abstract View getAdView();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.f24384c = m10878b(intent);
        this.f24382a = m10880a(intent);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        View adView = getAdView();
        this.f24383b = new CloseableLayout(this);
        this.f24383b.setOnCloseListener(new C10700a());
        this.f24383b.addView(adView, new FrameLayout.LayoutParams(-1, -1));
        setContentView(this.f24383b);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        CloseableLayout closeableLayout = this.f24383b;
        if (closeableLayout != null) {
            closeableLayout.removeAllViews();
        }
        super.onDestroy();
    }
}
