package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.zab;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.LinkedList;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/DeferredLifecycleHelper.class */
public abstract class DeferredLifecycleHelper<T extends LifecycleDelegate> {
    private T zaa;
    private Bundle zab;
    private LinkedList<zaa> zac;
    private final OnDelegateCreatedListener<T> zad = new zab(this);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/DeferredLifecycleHelper$zaa.class */
    public interface zaa {
        int zaa();

        void zaa(LifecycleDelegate lifecycleDelegate);
    }

    @KeepForSdk
    public static void showGooglePlayUnavailableMessage(FrameLayout frameLayout) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        Context context = frameLayout.getContext();
        int isGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(context);
        String zac = zab.zac(context, isGooglePlayServicesAvailable);
        String zae = zab.zae(context, isGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(zac);
        linearLayout.addView(textView);
        Intent errorResolutionIntent = googleApiAvailability.getErrorResolutionIntent(context, isGooglePlayServicesAvailable, (String) null);
        if (errorResolutionIntent != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(zae);
            linearLayout.addView(button);
            button.setOnClickListener(new zaf(context, errorResolutionIntent));
        }
    }

    private final void zaa(int i) {
        while (!this.zac.isEmpty() && this.zac.getLast().zaa() >= i) {
            this.zac.removeLast();
        }
    }

    private final void zaa(Bundle bundle, zaa zaaVar) {
        T t = this.zaa;
        if (t != null) {
            zaaVar.zaa(t);
            return;
        }
        if (this.zac == null) {
            this.zac = new LinkedList<>();
        }
        this.zac.add(zaaVar);
        if (bundle != null) {
            Bundle bundle2 = this.zab;
            if (bundle2 == null) {
                this.zab = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        createDelegate(this.zad);
    }

    @KeepForSdk
    public abstract void createDelegate(OnDelegateCreatedListener<T> onDelegateCreatedListener);

    @KeepForSdk
    public T getDelegate() {
        return this.zaa;
    }

    @KeepForSdk
    public void handleGooglePlayUnavailable(FrameLayout frameLayout) {
        showGooglePlayUnavailableMessage(frameLayout);
    }

    @KeepForSdk
    public void onCreate(Bundle bundle) {
        zaa(bundle, (zaa) new zad(this, bundle));
    }

    @KeepForSdk
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        zaa(bundle, (zaa) new zac(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.zaa == null) {
            handleGooglePlayUnavailable(frameLayout);
        }
        return frameLayout;
    }

    @KeepForSdk
    public void onDestroy() {
        T t = this.zaa;
        if (t != null) {
            t.onDestroy();
        } else {
            zaa(1);
        }
    }

    @KeepForSdk
    public void onDestroyView() {
        T t = this.zaa;
        if (t != null) {
            t.onDestroyView();
        } else {
            zaa(2);
        }
    }

    @KeepForSdk
    public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
        zaa(bundle2, (zaa) new com.google.android.gms.dynamic.zaa(this, activity, bundle, bundle2));
    }

    @KeepForSdk
    public void onLowMemory() {
        T t = this.zaa;
        if (t != null) {
            t.onLowMemory();
        }
    }

    @KeepForSdk
    public void onPause() {
        T t = this.zaa;
        if (t != null) {
            t.onPause();
        } else {
            zaa(5);
        }
    }

    @KeepForSdk
    public void onResume() {
        zaa((Bundle) null, (zaa) new zag(this));
    }

    @KeepForSdk
    public void onSaveInstanceState(Bundle bundle) {
        T t = this.zaa;
        if (t != null) {
            t.onSaveInstanceState(bundle);
            return;
        }
        Bundle bundle2 = this.zab;
        if (bundle2 == null) {
            return;
        }
        bundle.putAll(bundle2);
    }

    @KeepForSdk
    public void onStart() {
        zaa((Bundle) null, (zaa) new zae(this));
    }

    @KeepForSdk
    public void onStop() {
        T t = this.zaa;
        if (t != null) {
            t.onStop();
        } else {
            zaa(4);
        }
    }
}
