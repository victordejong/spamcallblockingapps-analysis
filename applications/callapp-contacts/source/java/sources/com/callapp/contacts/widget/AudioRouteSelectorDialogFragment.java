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
import com.google.android.material.bottomsheet.C14460b;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/AudioRouteSelectorDialogFragment.class */
public class AudioRouteSelectorDialogFragment extends C14460b {

    /* renamed from: c */
    public static final String f28547c = "AudioRouteSelectorDialogFragment";

    /* renamed from: d */
    private AudioRouteSelectorListener f28548d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener.class */
    public interface AudioRouteSelectorListener {
        void onAudioRouteSelected(int i);

        void onAudioRouteSelectorDismiss();
    }

    /* renamed from: a */
    private static String m26847a(BluetoothDevice bluetoothDevice) {
        try {
            Method declaredMethod = bluetoothDevice.getClass().getDeclaredMethod("getAliasName", new Class[0]);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(bluetoothDevice, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            CLog.m27609a(AudioRouteSelectorDialogFragment.class, e);
            return bluetoothDevice.getName();
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m26848a(int i, View view) {
        this.f28548d.onAudioRouteSelected(i);
        mo11082a();
    }

    /* renamed from: a */
    public /* synthetic */ void m26846a(BluetoothDevice bluetoothDevice, View view) {
        this.f28548d.onAudioRouteSelected(2);
        TelecomAdapter.getInstance().m28966a(bluetoothDevice);
        mo11082a();
    }

    /* renamed from: a */
    private void m26845a(TextView textView, final int i, CallAudioState callAudioState) {
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
                AudioRouteSelectorDialogFragment.this.m26848a(i, view);
            }
        });
    }

    /* renamed from: d */
    public static AudioRouteSelectorDialogFragment m26844d() {
        return new AudioRouteSelectorDialogFragment();
    }

    @Override // com.google.android.material.bottomsheet.C14460b, androidx.appcompat.app.C0202g, androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        Dialog mo9884a = super.mo9884a(bundle);
        mo9884a.getWindow().addFlags(524288);
        if (Activities.m27641e()) {
            mo9884a.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);
        }
        return mo9884a;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        this.f28548d.onAudioRouteSelectorDismiss();
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
                    textView.setText(m26847a(bluetoothDevice));
                    if (z) {
                        textView.setSelected(true);
                        textView.setTextColor(color);
                        textView.setCompoundDrawableTintList(ColorStateList.valueOf(color));
                        textView.setCompoundDrawableTintMode(PorterDuff.Mode.SRC_ATOP);
                    }
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget._$$Lambda$AudioRouteSelectorDialogFragment$D1kymbFizoWEVJCE_I6i619wyjs
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            AudioRouteSelectorDialogFragment.this.m26846a(bluetoothDevice, view);
                        }
                    });
                    ((LinearLayout) inflate).addView(textView, 0);
                }
            } else {
                TextView textView2 = (TextView) getLayoutInflater().inflate(2131558492, (ViewGroup) null, false);
                textView2.setText(getString(2131886280));
                m26845a(textView2, 2, AudioModeProvider.get().getCallAudioState());
                ((LinearLayout) inflate).addView(textView2, 0);
            }
            m26845a((TextView) inflate.findViewById(2131362037), 8, AudioModeProvider.get().getCallAudioState());
            m26845a((TextView) inflate.findViewById(2131362036), 4, AudioModeProvider.get().getCallAudioState());
            m26845a((TextView) inflate.findViewById(2131362035), 1, AudioModeProvider.get().getCallAudioState());
        }
        return inflate;
    }

    public void setAudioRouteSelectorListener(AudioRouteSelectorListener audioRouteSelectorListener) {
        this.f28548d = audioRouteSelectorListener;
    }
}
