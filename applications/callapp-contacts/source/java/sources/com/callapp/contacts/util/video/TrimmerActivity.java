package com.callapp.contacts.util.video;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.video.CallAppTransformation;
import com.callapp.contacts.util.video.VideoTrimmerView;
import com.callapp.framework.util.StringUtils;
import com.linkedin.android.litr.AbstractC16637e;
import com.p456lb.video_trimmer_library.p457a.AbstractC16595c;
import java.io.File;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/TrimmerActivity.class */
public class TrimmerActivity extends BaseActivity implements AbstractC16595c, AbstractC16637e {

    /* renamed from: a */
    private SimpleProgressDialog f28442a;

    /* renamed from: b */
    private int f28443b;

    /* renamed from: c */
    private String f28444c;

    /* renamed from: d */
    private CallAppTransformation.TransformationBuilder f28445d;

    /* renamed from: e */
    private File f28446e;

    /* renamed from: f */
    private File f28447f;

    /* renamed from: g */
    private File f28448g;

    /* renamed from: d */
    public /* synthetic */ void m26893d(String str) {
        FeedbackManager.get().m28669a(Activities.getString(2131887919), (Integer) null);
        setResult(-100);
        finish();
    }

    @Override // com.p456lb.video_trimmer_library.p457a.AbstractC16595c
    /* renamed from: a */
    public final void mo6936a() {
        FeedbackManager.get().m28669a("error while previewing video", (Integer) null);
    }

    @Override // com.p456lb.video_trimmer_library.p457a.AbstractC16595c
    /* renamed from: a */
    public final void mo6935a(Uri uri) {
        IoUtils.m27504b(this.f28446e);
        if (uri == null) {
            SimpleProgressDialog.m27939a(this.f28442a);
            IoUtils.m27504b(this.f28448g);
            FeedbackManager.get().m28669a(Activities.getString(2131887919), (Integer) null);
            return;
        }
        this.f28447f = new File(this.f28448g.getPath() + "_encoded");
        CallAppTransformation.TransformationBuilder transformationBuilder = new CallAppTransformation.TransformationBuilder(CallAppApplication.get(), uri, this.f28447f, UUID.randomUUID().toString(), this);
        this.f28445d = transformationBuilder;
        transformationBuilder.m26896a();
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: a */
    public final void mo6844a(String str) {
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: a */
    public final void mo6843a(String str, float f) {
        SimpleProgressDialog simpleProgressDialog = this.f28442a;
        simpleProgressDialog.setMessage(Activities.getString(2131887364) + " (" + ((int) (f * 100.0f)) + "%)");
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: a */
    public final void mo6842a(String str, Throwable th) {
        CLog.m27599a(th);
        Intent intent = new Intent();
        IoUtils.m27504b(this.f28447f);
        SimpleProgressDialog.m27939a(this.f28442a);
        FeedbackManager.get().m28669a(Activities.getString(2131887363), (Integer) null);
        intent.putExtra("EXTRA_ASSIGN_FLOW", this.f28443b);
        intent.putExtra("EXTRA_CONTACT_ID", this.f28444c);
        intent.setData(Uri.parse(this.f28448g.getPath()));
        setResult(-1, intent);
        finish();
    }

    @Override // com.p456lb.video_trimmer_library.p457a.AbstractC16595c
    /* renamed from: b */
    public final void mo6934b() {
        PopupManager.get().m28209a(this, this.f28442a);
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: b */
    public final void mo6841b(String str) {
        SimpleProgressDialog.m27939a(this.f28442a);
        Intent intent = new Intent();
        FeedbackManager.get().m28669a(Activities.getString(2131888146), (Integer) null);
        intent.putExtra("EXTRA_ASSIGN_FLOW", this.f28443b);
        intent.putExtra("EXTRA_CONTACT_ID", this.f28444c);
        if (this.f28443b == 3 && this.f28447f.renameTo(this.f28448g)) {
            intent.setData(Uri.parse(this.f28448g.getPath()));
        } else {
            intent.setData(Uri.parse(this.f28447f.getPath()));
            IoUtils.m27504b(this.f28448g);
        }
        setResult(-1, intent);
        finish();
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: c */
    public final void mo6840c(String str) {
        SimpleProgressDialog.m27939a(this.f28442a);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558474;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        setResult(-100);
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        showActionBar(false);
        String stringExtra = getIntent().getStringExtra("EXTRA_VIDEO_PATH");
        if (StringUtils.m26059a((CharSequence) stringExtra)) {
            finish();
            return;
        }
        String stringExtra2 = getIntent().getStringExtra("EXTRA_VIDEO_FILE_NAME");
        String str = stringExtra2;
        if (StringUtils.m26059a((CharSequence) stringExtra2)) {
            str = "CallScreenTheme";
        }
        this.f28443b = getIntent().getIntExtra("EXTRA_ASSIGN_FLOW", 0);
        this.f28444c = getIntent().getStringExtra("EXTRA_CONTACT_ID");
        File file = new File(stringExtra);
        this.f28446e = file;
        if (!file.exists()) {
            finish();
            return;
        }
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f28442a = simpleProgressDialog;
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        this.f28442a.setCancelable(false);
        VideoTrimmerView videoTrimmerView = (VideoTrimmerView) findViewById(2131364513);
        videoTrimmerView.setTrimmerEvents(new VideoTrimmerView.TrimmerEvents() { // from class: com.callapp.contacts.util.video._$$Lambda$TrimmerActivity$WEwOq7IDvp1uxw0L5aOpvyVBACo
            @Override // com.callapp.contacts.util.video.VideoTrimmerView.TrimmerEvents
            public final void onError(String str2) {
                TrimmerActivity.this.m26893d(str2);
            }
        });
        ((TextView) findViewById(2131362247)).setText(Activities.getString(2131886505));
        findViewById(2131362248).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.util.video.TrimmerActivity.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                TrimmerActivity.this.setResult(-100);
                TrimmerActivity.this.finish();
            }
        });
        videoTrimmerView.setMaxDurationInMs(15000);
        videoTrimmerView.setOnK4LVideoListener(this);
        File file2 = new File(IoUtils.m27501c("CallAppMedia"), str);
        this.f28448g = file2;
        videoTrimmerView.setDestinationFile(file2);
        videoTrimmerView.setVideoURI(Uri.fromFile(this.f28446e));
        videoTrimmerView.setVideoInformationVisibility(true);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        SimpleProgressDialog.m27939a(this.f28442a);
        super.onDestroy();
    }
}
