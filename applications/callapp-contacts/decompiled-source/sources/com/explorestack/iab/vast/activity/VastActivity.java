package com.explorestack.iab.vast.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.c;
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

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, WeakReference<VastActivityListener>> f19227a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private VastRequest f19228b;

    /* renamed from: c  reason: collision with root package name */
    private VastView f19229c;

    /* renamed from: d  reason: collision with root package name */
    private VastActivityListener f19230d;
    private boolean e;
    private boolean f;
    private final VastView.d g = new VastView.d() { // from class: com.explorestack.iab.vast.activity.VastActivity.1
        @Override // com.explorestack.iab.vast.activity.VastView.d
        public final void a(int i) {
            VastActivity.this.setRequestedOrientation(VastActivity.b(i));
        }

        @Override // com.explorestack.iab.vast.activity.VastView.d
        public final void a(VastRequest vastRequest) {
            if (VastActivity.this.f19230d != null) {
                VastActivity.this.f19230d.onVastShown(VastActivity.this, vastRequest);
            }
        }

        @Override // com.explorestack.iab.vast.activity.VastView.d
        public final void a(VastRequest vastRequest, int i) {
            VastActivity.this.a(vastRequest, i);
        }

        @Override // com.explorestack.iab.vast.activity.VastView.d
        public final void a(VastRequest vastRequest, c cVar, String str) {
            if (VastActivity.this.f19230d != null) {
                VastActivity.this.f19230d.onVastClick(VastActivity.this, vastRequest, cVar, str);
            }
        }

        @Override // com.explorestack.iab.vast.activity.VastView.d
        public final void a(VastRequest vastRequest, boolean z) {
            VastActivity.this.a(vastRequest, z);
        }

        @Override // com.explorestack.iab.vast.activity.VastView.d
        public final void b(VastRequest vastRequest) {
            if (VastActivity.this.f19230d != null) {
                VastActivity.this.f19230d.onVastComplete(VastActivity.this, vastRequest);
            }
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastActivity$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public VastRequest f19232a;

        /* renamed from: b  reason: collision with root package name */
        public VastActivityListener f19233b;

        public final boolean a(Context context) {
            if (this.f19232a == null) {
                VastLog.a("VastRequest not provided");
                return false;
            }
            try {
                Intent intent = new Intent(context, VastActivity.class);
                if (!(context instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                intent.putExtra("com.explorestack.iab.vast.REQUEST", this.f19232a);
                VastActivityListener vastActivityListener = this.f19233b;
                if (vastActivityListener != null) {
                    VastActivity.a(this.f19232a, vastActivityListener);
                }
                context.startActivity(intent);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                VastActivity.b(this.f19232a);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(VastRequest vastRequest, int i) {
        VastActivityListener vastActivityListener = this.f19230d;
        if (vastActivityListener != null) {
            vastActivityListener.onVastError(this, vastRequest, i);
        }
    }

    static /* synthetic */ void a(VastRequest vastRequest, VastActivityListener vastActivityListener) {
        f19227a.put(vastRequest.getHash(), new WeakReference<>(vastActivityListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(VastRequest vastRequest, boolean z) {
        VastActivityListener vastActivityListener = this.f19230d;
        if (vastActivityListener != null) {
            vastActivityListener.onVastDismiss(this, vastRequest, z);
        }
        this.f = true;
        try {
            getWindow().clearFlags(128);
        } catch (Exception e) {
            VastLog.a(e.getMessage());
        }
        if (vastRequest != null) {
            setRequestedOrientation(b(vastRequest.getRequestedOrientation()));
        }
        finish();
        overridePendingTransition(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i) {
        if (i != 0) {
            return i != 1 ? 6 : 7;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(VastRequest vastRequest) {
        f19227a.remove(vastRequest.getHash());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        VastView vastView = this.f19229c;
        if (vastView != null) {
            vastView.a();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        int preferredVideoOrientation;
        getWindow().setBackgroundDrawable(new ColorDrawable(-16777216));
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        this.f19228b = (VastRequest) getIntent().getParcelableExtra("com.explorestack.iab.vast.REQUEST");
        if (bundle == null || !bundle.getBoolean("isFinishedPerformed")) {
            VastRequest vastRequest = this.f19228b;
            VastActivityListener vastActivityListener = null;
            if (vastRequest == null) {
                a((VastRequest) null, VastError.ERROR_CODE_ERROR_SHOWING);
                a((VastRequest) null, false);
                return;
            }
            if (!(bundle != null || (preferredVideoOrientation = vastRequest.getPreferredVideoOrientation()) == 0 || preferredVideoOrientation == getResources().getConfiguration().orientation)) {
                setRequestedOrientation(b(preferredVideoOrientation));
                try {
                    if ((getPackageManager().getActivityInfo(getComponentName(), 65536).configChanges & 128) == 0) {
                        return;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            VastRequest vastRequest2 = this.f19228b;
            Map<String, WeakReference<VastActivityListener>> map = f19227a;
            WeakReference<VastActivityListener> weakReference = map.get(vastRequest2.getHash());
            if (weakReference == null || weakReference.get() == null) {
                map.remove(vastRequest2.getHash());
            } else {
                vastActivityListener = weakReference.get();
            }
            this.f19230d = vastActivityListener;
            VastView vastView = new VastView(this);
            this.f19229c = vastView;
            vastView.setId(1);
            this.f19229c.setListener(this.g);
            if (bundle == null || !bundle.getBoolean("isLoadPerformed")) {
                this.e = true;
                if (!this.f19229c.a(this.f19228b, false)) {
                    return;
                }
            }
            Utils.a((Activity) this);
            setContentView(this.f19229c);
            return;
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (!isChangingConfigurations() && this.f19228b != null) {
            VastView vastView = this.f19229c;
            if (!(vastView == null || vastView.q == null)) {
                vastView.q.destroy();
                vastView.q = null;
                vastView.o = null;
            }
            b(this.f19228b);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isLoadPerformed", this.e);
        bundle.putBoolean("isFinishedPerformed", this.f);
    }
}
