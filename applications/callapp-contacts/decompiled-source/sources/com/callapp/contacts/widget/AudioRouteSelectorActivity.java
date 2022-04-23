package com.callapp.contacts.widget;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.inCallService.TelecomAdapter;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.widget.AudioRouteSelectorDialogFragment;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/AudioRouteSelectorActivity.class */
public class AudioRouteSelectorActivity extends BaseTransparentActivity implements AudioRouteSelectorDialogFragment.AudioRouteSelectorListener {

    /* renamed from: a  reason: collision with root package name */
    private AudioRouteSelectorDialogFragment f16394a;

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 0;
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void onAttachFragment(Fragment fragment) {
        if (fragment.equals(this.f16394a)) {
            this.f16394a.setAudioRouteSelectorListener(this);
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
        AudioRouteSelectorDialogFragment d2 = AudioRouteSelectorDialogFragment.d();
        this.f16394a = d2;
        d2.a(getSupportFragmentManager(), AudioRouteSelectorDialogFragment.f16395c);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        AudioRouteSelectorDialogFragment audioRouteSelectorDialogFragment = this.f16394a;
        if (audioRouteSelectorDialogFragment != null) {
            audioRouteSelectorDialogFragment.a();
        }
        if (!isChangingConfigurations()) {
            finish();
        }
    }
}
