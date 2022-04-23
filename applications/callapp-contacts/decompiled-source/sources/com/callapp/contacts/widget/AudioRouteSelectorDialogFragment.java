package com.callapp.contacts.widget;

import android.app.Dialog;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.telecom.CallAudioState;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.inCallService.TelecomAdapter;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.facebook.ads.AdError;
import com.google.android.material.bottomsheet.b;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/AudioRouteSelectorDialogFragment.class */
public class AudioRouteSelectorDialogFragment extends b {

    /* renamed from: c  reason: collision with root package name */
    public static final String f16395c = "AudioRouteSelectorDialogFragment";

    /* renamed from: d  reason: collision with root package name */
    private AudioRouteSelectorListener f16396d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener.class */
    public interface AudioRouteSelectorListener {
        void onAudioRouteSelected(int i);

        void onAudioRouteSelectorDismiss();
    }

    private static String a(BluetoothDevice bluetoothDevice) {
        try {
            Method declaredMethod = bluetoothDevice.getClass().getDeclaredMethod("getAliasName", new Class[0]);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(bluetoothDevice, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            CLog.a(AudioRouteSelectorDialogFragment.class, e);
            return bluetoothDevice.getName();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, View view) {
        this.f16396d.onAudioRouteSelected(i);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BluetoothDevice bluetoothDevice, View view) {
        this.f16396d.onAudioRouteSelected(2);
        TelecomAdapter.getInstance().a(bluetoothDevice);
        a();
    }

    private void a(TextView textView, final int i, CallAudioState callAudioState) {
        int color = ThemeUtils.getColor(2131099784);
        if ((callAudioState.getSupportedRouteMask() & i) == 0) {
            textView.setVisibility(8);
        } else if (callAudioState.getRoute() == i) {
            textView.setSelected(true);
            textView.setTextColor(color);
            textView.setCompoundDrawableTintList(ColorStateList.valueOf(color));
            textView.setCompoundDrawableTintMode(PorterDuff.Mode.SRC_ATOP);
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget._$$Lambda$AudioRouteSelectorDialogFragment$_bk3hbxqiN4ZyFo0rvUreZkZZZM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioRouteSelectorDialogFragment.this.a(i, view);
            }
        });
    }

    public static AudioRouteSelectorDialogFragment d() {
        return new AudioRouteSelectorDialogFragment();
    }

    @Override // com.google.android.material.bottomsheet.b, androidx.appcompat.app.g, androidx.fragment.app.c
    public final Dialog a(Bundle bundle) {
        Dialog a2 = super.a(bundle);
        a2.getWindow().addFlags(524288);
        if (Activities.e()) {
            a2.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : AdError.CACHE_ERROR_CODE);
        }
        return a2;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        this.f16396d.onAudioRouteSelectorDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131558493, viewGroup, false);
        if (AudioModeProvider.get().getCallAudioState() != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                Collection<BluetoothDevice> supportedBluetoothDevices = AudioModeProvider.get().getCallAudioState().getSupportedBluetoothDevices();
                for (final BluetoothDevice bluetoothDevice : supportedBluetoothDevices) {
                    boolean z = AudioModeProvider.get().getAudioMode() == 2 && (supportedBluetoothDevices.size() == 1 || bluetoothDevice.equals(AudioModeProvider.get().getCallAudioState().getActiveBluetoothDevice()));
                    int color = ThemeUtils.getColor(2131099784);
                    TextView textView = (TextView) getLayoutInflater().inflate(2131558492, (ViewGroup) null, false);
                    textView.setText(a(bluetoothDevice));
                    if (z) {
                        textView.setSelected(true);
                        textView.setTextColor(color);
                        textView.setCompoundDrawableTintList(ColorStateList.valueOf(color));
                        textView.setCompoundDrawableTintMode(PorterDuff.Mode.SRC_ATOP);
                    }
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget._$$Lambda$AudioRouteSelectorDialogFragment$D1kymbFizoWEVJCE_I6i619wyjs
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            AudioRouteSelectorDialogFragment.this.a(bluetoothDevice, view);
                        }
                    });
                    ((LinearLayout) inflate).addView(textView, 0);
                }
            } else {
                TextView textView2 = (TextView) getLayoutInflater().inflate(2131558492, (ViewGroup) null, false);
                textView2.setText(getString(2131886280));
                a(textView2, 2, AudioModeProvider.get().getCallAudioState());
                ((LinearLayout) inflate).addView(textView2, 0);
            }
            a((TextView) inflate.findViewById(2131362037), 8, AudioModeProvider.get().getCallAudioState());
            a((TextView) inflate.findViewById(2131362036), 4, AudioModeProvider.get().getCallAudioState());
            a((TextView) inflate.findViewById(2131362035), 1, AudioModeProvider.get().getCallAudioState());
        }
        return inflate;
    }

    public void setAudioRouteSelectorListener(AudioRouteSelectorListener audioRouteSelectorListener) {
        this.f16396d = audioRouteSelectorListener;
    }
}
