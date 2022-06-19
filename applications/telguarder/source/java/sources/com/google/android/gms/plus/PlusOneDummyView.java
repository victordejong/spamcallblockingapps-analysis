package com.google.android.gms.plus;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.Button;
import android.widget.FrameLayout;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/PlusOneDummyView.class */
public class PlusOneDummyView extends FrameLayout {
    @Deprecated
    public static final String TAG = "PlusOneDummyView";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/PlusOneDummyView$zza.class */
    public static final class zza implements zzd {
        private Context mContext;

        private zza(Context context) {
            this.mContext = context;
        }

        @Override // com.google.android.gms.plus.PlusOneDummyView.zzd
        public final Drawable getDrawable(int i) {
            return this.mContext.getResources().getDrawable(17301508);
        }

        @Override // com.google.android.gms.plus.PlusOneDummyView.zzd
        public final boolean isValid() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/PlusOneDummyView$zzb.class */
    public static final class zzb implements zzd {
        private Context mContext;

        private zzb(Context context) {
            this.mContext = context;
        }

        @Override // com.google.android.gms.plus.PlusOneDummyView.zzd
        public final Drawable getDrawable(int i) {
            try {
                Resources resources = this.mContext.createPackageContext("com.google.android.gms", 4).getResources();
                return resources.getDrawable(resources.getIdentifier(i != 0 ? i != 1 ? i != 2 ? "ic_plusone_standard" : "ic_plusone_tall" : "ic_plusone_medium" : "ic_plusone_small", "drawable", "com.google.android.gms"));
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        @Override // com.google.android.gms.plus.PlusOneDummyView.zzd
        public final boolean isValid() {
            try {
                this.mContext.createPackageContext("com.google.android.gms", 4).getResources();
                return true;
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/PlusOneDummyView$zzc.class */
    public static final class zzc implements zzd {
        private Context mContext;

        private zzc(Context context) {
            this.mContext = context;
        }

        @Override // com.google.android.gms.plus.PlusOneDummyView.zzd
        public final Drawable getDrawable(int i) {
            return this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier(i != 0 ? i != 1 ? i != 2 ? "ic_plusone_standard_off_client" : "ic_plusone_tall_off_client" : "ic_plusone_medium_off_client" : "ic_plusone_small_off_client", "drawable", this.mContext.getPackageName()));
        }

        @Override // com.google.android.gms.plus.PlusOneDummyView.zzd
        public final boolean isValid() {
            return (this.mContext.getResources().getIdentifier("ic_plusone_small_off_client", "drawable", this.mContext.getPackageName()) == 0 || this.mContext.getResources().getIdentifier("ic_plusone_medium_off_client", "drawable", this.mContext.getPackageName()) == 0 || this.mContext.getResources().getIdentifier("ic_plusone_tall_off_client", "drawable", this.mContext.getPackageName()) == 0 || this.mContext.getResources().getIdentifier("ic_plusone_standard_off_client", "drawable", this.mContext.getPackageName()) == 0) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/PlusOneDummyView$zzd.class */
    public interface zzd {
        Drawable getDrawable(int i);

        boolean isValid();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.google.android.gms.plus.PlusOneDummyView$zzc] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.gms.plus.PlusOneDummyView] */
    @Deprecated
    public PlusOneDummyView(Context context, int i) {
        super(context);
        int i2;
        Button button = new Button(context);
        button.setEnabled(false);
        zzd zzbVar = new zzb(getContext());
        zzd zzcVar = !zzbVar.isValid() ? new zzc(getContext()) : zzbVar;
        button.setBackgroundDrawable((!zzcVar.isValid() ? new zza(getContext()) : zzcVar).getDrawable(i));
        Point point = new Point();
        int i3 = 20;
        if (i == 0) {
            i3 = 14;
            i2 = 24;
        } else if (i == 1) {
            i2 = 32;
        } else if (i != 2) {
            i3 = 24;
            i2 = 38;
        } else {
            i2 = 50;
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float applyDimension = TypedValue.applyDimension(1, i2, displayMetrics);
        float applyDimension2 = TypedValue.applyDimension(1, i3, displayMetrics);
        point.x = (int) (applyDimension + 0.5d);
        point.y = (int) (applyDimension2 + 0.5d);
        addView(button, new FrameLayout.LayoutParams(point.x, point.y, 17));
    }
}
