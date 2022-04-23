package com.explorestack.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.ViewGroup;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidActivity.class */
public class MraidActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<MraidInterstitial> f19088a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private Integer f19089b;

    /* renamed from: c  reason: collision with root package name */
    private MraidInterstitial f19090c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f19091d = false;

    /* renamed from: com.explorestack.iab.mraid.MraidActivity$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidActivity$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f19092a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MraidType.values().length];
            f19092a = iArr;
            try {
                iArr[MraidType.Static.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19092a[MraidType.Video.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19092a[MraidType.Rewarded.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidActivity$MraidType.class */
    public enum MraidType {
        Static,
        Video,
        Rewarded
    }

    private static void a(Integer num) {
        if (num != null) {
            f19088a.remove(num.intValue());
        }
    }

    public static void show(Context context, MraidInterstitial mraidInterstitial, MraidType mraidType) {
        if (mraidInterstitial == null) {
            MraidLog.a("Mraid interstitial object not provided for display");
        } else if (context == null) {
            MraidLog.a("Context not provided for display mraid interstitial");
            mraidInterstitial.b();
        } else if (mraidType == null) {
            MraidLog.a("Mraid type not provided for display");
            mraidInterstitial.b();
        } else {
            try {
                f19088a.put(mraidInterstitial.id, mraidInterstitial);
                int i = mraidInterstitial.id;
                Intent intent = new Intent(context, MraidActivity.class);
                intent.putExtra("InterstitialId", i);
                intent.putExtra("InterstitialType", mraidType);
                intent.addFlags(268435456);
                intent.addFlags(8388608);
                context.startActivity(intent);
            } catch (Throwable th) {
                th.printStackTrace();
                mraidInterstitial.b();
                a(Integer.valueOf(mraidInterstitial.id));
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f19091d) {
            MraidInterstitial mraidInterstitial = this.f19090c;
            if (mraidInterstitial != null) {
                mraidInterstitial.dispatchClose();
                return;
            }
            finish();
            overridePendingTransition(0, 0);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        getWindow().setBackgroundDrawable(new ColorDrawable(-16777216));
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        if (!getIntent().hasExtra("InterstitialId")) {
            MraidLog.a("Mraid display cache id not provided");
            finish();
            return;
        }
        Integer valueOf = Integer.valueOf(getIntent().getIntExtra("InterstitialId", 0));
        this.f19089b = valueOf;
        MraidInterstitial mraidInterstitial = f19088a.get(valueOf.intValue());
        this.f19090c = mraidInterstitial;
        if (mraidInterstitial == null) {
            MraidLog.a("Mraid interstitial not found in display cache, id=" + this.f19089b);
            finish();
            overridePendingTransition(0, 0);
            return;
        }
        MraidType mraidType = (MraidType) getIntent().getSerializableExtra("InterstitialType");
        if (mraidType == null) {
            MraidLog.a("Mraid type not provided");
            finish();
            overridePendingTransition(0, 0);
            this.f19090c.b();
            return;
        }
        Utils.a((Activity) this);
        int i = AnonymousClass1.f19092a[mraidType.ordinal()];
        if (i == 1) {
            this.f19091d = true;
        } else if (i == 2) {
            this.f19091d = true;
        } else if (i == 3) {
            this.f19091d = false;
        }
        this.f19090c.a(this, (ViewGroup) findViewById(16908290), true, false);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.f19090c != null && !isChangingConfigurations()) {
            this.f19090c.a();
            this.f19090c.destroy();
            a(this.f19089b);
        }
    }
}
