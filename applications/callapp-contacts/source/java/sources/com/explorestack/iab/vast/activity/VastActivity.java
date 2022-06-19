package com.explorestack.iab.vast.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import com.explorestack.iab.utils.AbstractC9588c;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastActivityListener;
import com.explorestack.iab.vast.VastError;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.activity.VastView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastActivity.class */
public class VastActivity extends Activity {

    /* renamed from: a */
    static final Map<String, WeakReference<VastActivityListener>> f32663a = new HashMap();

    /* renamed from: b */
    private VastRequest f32664b;

    /* renamed from: c */
    private VastView f32665c;

    /* renamed from: d */
    private VastActivityListener f32666d;

    /* renamed from: e */
    private boolean f32667e;

    /* renamed from: f */
    private boolean f32668f;

    /* renamed from: g */
    private final VastView.AbstractC9652d f32669g = new VastView.AbstractC9652d() { // from class: com.explorestack.iab.vast.activity.VastActivity.1
        @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9652d
        /* renamed from: a */
        public final void mo23903a(int i) {
            VastActivity.this.setRequestedOrientation(VastActivity.m24003b(i));
        }

        @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9652d
        /* renamed from: a */
        public final void mo23902a(VastRequest vastRequest) {
            if (VastActivity.this.f32666d != null) {
                VastActivity.this.f32666d.onVastShown(VastActivity.this, vastRequest);
            }
        }

        @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9652d
        /* renamed from: a */
        public final void mo23901a(VastRequest vastRequest, int i) {
            VastActivity.this.m24009a(vastRequest, i);
        }

        @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9652d
        /* renamed from: a */
        public final void mo23900a(VastRequest vastRequest, AbstractC9588c abstractC9588c, String str) {
            if (VastActivity.this.f32666d != null) {
                VastActivity.this.f32666d.onVastClick(VastActivity.this, vastRequest, abstractC9588c, str);
            }
        }

        @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9652d
        /* renamed from: a */
        public final void mo23899a(VastRequest vastRequest, boolean z) {
            VastActivity.this.m24007a(vastRequest, z);
        }

        @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9652d
        /* renamed from: b */
        public final void mo23898b(VastRequest vastRequest) {
            if (VastActivity.this.f32666d != null) {
                VastActivity.this.f32666d.onVastComplete(VastActivity.this, vastRequest);
            }
        }
    };

    /* renamed from: com.explorestack.iab.vast.activity.VastActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastActivity$a.class */
    public static final class C9621a {

        /* renamed from: a */
        public VastRequest f32671a;

        /* renamed from: b */
        public VastActivityListener f32672b;

        /* renamed from: a */
        public final boolean m24001a(Context context) {
            if (this.f32671a == null) {
                VastLog.m24019a("VastRequest not provided");
                return false;
            }
            try {
                Intent intent = new Intent(context, VastActivity.class);
                if (!(context instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                intent.putExtra("com.explorestack.iab.vast.REQUEST", this.f32671a);
                VastActivityListener vastActivityListener = this.f32672b;
                if (vastActivityListener != null) {
                    VastActivity.m24008a(this.f32671a, vastActivityListener);
                }
                context.startActivity(intent);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                VastActivity.m24002b(this.f32671a);
                return false;
            }
        }
    }

    /* renamed from: a */
    public void m24009a(VastRequest vastRequest, int i) {
        VastActivityListener vastActivityListener = this.f32666d;
        if (vastActivityListener != null) {
            vastActivityListener.onVastError(this, vastRequest, i);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m24008a(VastRequest vastRequest, VastActivityListener vastActivityListener) {
        f32663a.put(vastRequest.getHash(), new WeakReference<>(vastActivityListener));
    }

    /* renamed from: a */
    public void m24007a(VastRequest vastRequest, boolean z) {
        VastActivityListener vastActivityListener = this.f32666d;
        if (vastActivityListener != null) {
            vastActivityListener.onVastDismiss(this, vastRequest, z);
        }
        this.f32668f = true;
        try {
            getWindow().clearFlags(128);
        } catch (Exception e) {
            VastLog.m24019a(e.getMessage());
        }
        if (vastRequest != null) {
            setRequestedOrientation(m24003b(vastRequest.getRequestedOrientation()));
        }
        finish();
        overridePendingTransition(0, 0);
    }

    /* renamed from: b */
    public static int m24003b(int i) {
        if (i != 0) {
            return i != 1 ? 6 : 7;
        }
        return -1;
    }

    /* renamed from: b */
    public static void m24002b(VastRequest vastRequest) {
        f32663a.remove(vastRequest.getHash());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        VastView vastView = this.f32665c;
        if (vastView != null) {
            vastView.m23988a();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        int preferredVideoOrientation;
        getWindow().setBackgroundDrawable(new ColorDrawable(-16777216));
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        this.f32664b = (VastRequest) getIntent().getParcelableExtra("com.explorestack.iab.vast.REQUEST");
        if (bundle != null && bundle.getBoolean("isFinishedPerformed")) {
            finish();
            return;
        }
        VastRequest vastRequest = this.f32664b;
        VastActivityListener vastActivityListener = null;
        if (vastRequest == null) {
            m24009a((VastRequest) null, VastError.ERROR_CODE_ERROR_SHOWING);
            m24007a((VastRequest) null, false);
            return;
        }
        if (bundle == null && (preferredVideoOrientation = vastRequest.getPreferredVideoOrientation()) != 0 && preferredVideoOrientation != getResources().getConfiguration().orientation) {
            setRequestedOrientation(m24003b(preferredVideoOrientation));
            try {
                if ((getPackageManager().getActivityInfo(getComponentName(), 65536).configChanges & 128) == 0) {
                    return;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        VastRequest vastRequest2 = this.f32664b;
        Map<String, WeakReference<VastActivityListener>> map = f32663a;
        WeakReference<VastActivityListener> weakReference = map.get(vastRequest2.getHash());
        if (weakReference == null || weakReference.get() == null) {
            map.remove(vastRequest2.getHash());
        } else {
            vastActivityListener = weakReference.get();
        }
        this.f32666d = vastActivityListener;
        VastView vastView = new VastView(this);
        this.f32665c = vastView;
        vastView.setId(1);
        this.f32665c.setListener(this.f32669g);
        if (bundle == null || !bundle.getBoolean("isLoadPerformed")) {
            this.f32667e = true;
            if (!this.f32665c.m23984a(this.f32664b, false)) {
                return;
            }
        }
        Utils.m24119a((Activity) this);
        setContentView(this.f32665c);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isChangingConfigurations() || this.f32664b == null) {
            return;
        }
        VastView vastView = this.f32665c;
        if (vastView != null && vastView.f32716q != null) {
            vastView.f32716q.destroy();
            vastView.f32716q = null;
            vastView.f32714o = null;
        }
        m24002b(this.f32664b);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isLoadPerformed", this.f32667e);
        bundle.putBoolean("isFinishedPerformed", this.f32668f);
    }
}
