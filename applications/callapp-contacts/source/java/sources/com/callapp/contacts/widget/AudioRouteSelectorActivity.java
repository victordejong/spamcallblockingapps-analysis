package com.callapp.contacts.widget;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.inCallService.TelecomAdapter;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.widget.AudioRouteSelectorDialogFragment;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/AudioRouteSelectorActivity.class */
public class AudioRouteSelectorActivity extends BaseTransparentActivity implements AudioRouteSelectorDialogFragment.AudioRouteSelectorListener {

    /* renamed from: a */
    private AudioRouteSelectorDialogFragment f28546a;

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 0;
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void onAttachFragment(Fragment fragment) {
        if (fragment.equals(this.f28546a)) {
            this.f28546a.setAudioRouteSelectorListener(this);
        }
    }

    @Override // com.callapp.contacts.widget.AudioRouteSelectorDialogFragment.AudioRouteSelectorListener
    public void onAudioRouteSelected(int i) {
        TelecomAdapter.getInstance().setAudioRoute(i);
        finish();
    }

    @Override // com.callapp.contacts.widget.AudioRouteSelectorDialogFragment.AudioRouteSelectorListener
    public void onAudioRouteSelectorDismiss() {
        finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AudioRouteSelectorDialogFragment m26844d = AudioRouteSelectorDialogFragment.m26844d();
        this.f28546a = m26844d;
        m26844d.mo19242a(getSupportFragmentManager(), AudioRouteSelectorDialogFragment.f28547c);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        AudioRouteSelectorDialogFragment audioRouteSelectorDialogFragment = this.f28546a;
        if (audioRouteSelectorDialogFragment != null) {
            audioRouteSelectorDialogFragment.mo11082a();
        }
        if (!isChangingConfigurations()) {
            finish();
        }
    }
}
