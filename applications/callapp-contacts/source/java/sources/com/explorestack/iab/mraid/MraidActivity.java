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

    /* renamed from: a */
    private static final SparseArray<MraidInterstitial> f32432a = new SparseArray<>();

    /* renamed from: b */
    private Integer f32433b;

    /* renamed from: c */
    private MraidInterstitial f32434c;

    /* renamed from: d */
    private boolean f32435d = false;

    /* renamed from: com.explorestack.iab.mraid.MraidActivity$1 */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidActivity$1.class */
    static final /* synthetic */ class C95421 {

        /* renamed from: a */
        static final /* synthetic */ int[] f32436a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MraidType.values().length];
            f32436a = iArr;
            try {
                iArr[MraidType.Static.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32436a[MraidType.Video.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32436a[MraidType.Rewarded.ordinal()] = 3;
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

    /* renamed from: a */
    private static void m24199a(Integer num) {
        if (num != null) {
            f32432a.remove(num.intValue());
        }
    }

    public static void show(Context context, MraidInterstitial mraidInterstitial, MraidType mraidType) {
        if (mraidInterstitial == null) {
            MraidLog.m24189a("Mraid interstitial object not provided for display");
        } else if (context == null) {
            MraidLog.m24189a("Context not provided for display mraid interstitial");
            mraidInterstitial.m24194b();
        } else if (mraidType == null) {
            MraidLog.m24189a("Mraid type not provided for display");
            mraidInterstitial.m24194b();
        } else {
            try {
                f32432a.put(mraidInterstitial.f32446id, mraidInterstitial);
                int i = mraidInterstitial.f32446id;
                Intent intent = new Intent(context, MraidActivity.class);
                intent.putExtra("InterstitialId", i);
                intent.putExtra("InterstitialType", mraidType);
                intent.addFlags(268435456);
                intent.addFlags(8388608);
                context.startActivity(intent);
            } catch (Throwable th) {
                th.printStackTrace();
                mraidInterstitial.m24194b();
                m24199a(Integer.valueOf(mraidInterstitial.f32446id));
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f32435d) {
            MraidInterstitial mraidInterstitial = this.f32434c;
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
            MraidLog.m24189a("Mraid display cache id not provided");
            finish();
            return;
        }
        Integer valueOf = Integer.valueOf(getIntent().getIntExtra("InterstitialId", 0));
        this.f32433b = valueOf;
        MraidInterstitial mraidInterstitial = f32432a.get(valueOf.intValue());
        this.f32434c = mraidInterstitial;
        if (mraidInterstitial == null) {
            MraidLog.m24189a("Mraid interstitial not found in display cache, id=" + this.f32433b);
            finish();
            overridePendingTransition(0, 0);
            return;
        }
        MraidType mraidType = (MraidType) getIntent().getSerializableExtra("InterstitialType");
        if (mraidType == null) {
            MraidLog.m24189a("Mraid type not provided");
            finish();
            overridePendingTransition(0, 0);
            this.f32434c.m24194b();
            return;
        }
        Utils.m24119a((Activity) this);
        int i = C95421.f32436a[mraidType.ordinal()];
        if (i == 1) {
            this.f32435d = true;
        } else if (i == 2) {
            this.f32435d = true;
        } else if (i == 3) {
            this.f32435d = false;
        }
        this.f32434c.m24197a(this, (ViewGroup) findViewById(16908290), true, false);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.f32434c == null || isChangingConfigurations()) {
            return;
        }
        this.f32434c.m24198a();
        this.f32434c.destroy();
        m24199a(this.f32433b);
    }
}
