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
import com.lb.video_trimmer_library.a.c;
import com.linkedin.android.litr.e;
import java.io.File;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/TrimmerActivity.class */
public class TrimmerActivity extends BaseActivity implements c, e {

    /* renamed from: a  reason: collision with root package name */
    private SimpleProgressDialog f16330a;

    /* renamed from: b  reason: collision with root package name */
    private int f16331b;

    /* renamed from: c  reason: collision with root package name */
    private String f16332c;

    /* renamed from: d  reason: collision with root package name */
    private CallAppTransformation.TransformationBuilder f16333d;
    private File e;
    private File f;
    private File g;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str) {
        FeedbackManager.get().a(Activities.getString(2131887919), (Integer) null);
        setResult(-100);
        finish();
    }

    @Override // com.lb.video_trimmer_library.a.c
    public final void a() {
        FeedbackManager.get().a("error while previewing video", (Integer) null);
    }

    @Override // com.lb.video_trimmer_library.a.c
    public final void a(Uri uri) {
        IoUtils.b(this.e);
        if (uri == null) {
            SimpleProgressDialog.a(this.f16330a);
            IoUtils.b(this.g);
            FeedbackManager.get().a(Activities.getString(2131887919), (Integer) null);
            return;
        }
        this.f = new File(this.g.getPath() + "_encoded");
        CallAppTransformation.TransformationBuilder transformationBuilder = new CallAppTransformation.TransformationBuilder(CallAppApplication.get(), uri, this.f, UUID.randomUUID().toString(), this);
        this.f16333d = transformationBuilder;
        transformationBuilder.a();
    }

    @Override // com.linkedin.android.litr.e
    public final void a(String str) {
    }

    @Override // com.linkedin.android.litr.e
    public final void a(String str, float f) {
        SimpleProgressDialog simpleProgressDialog = this.f16330a;
        simpleProgressDialog.setMessage(Activities.getString(2131887364) + " (" + ((int) (f * 100.0f)) + "%)");
    }

    @Override // com.linkedin.android.litr.e
    public final void a(String str, Throwable th) {
        CLog.a(th);
        Intent intent = new Intent();
        IoUtils.b(this.f);
        SimpleProgressDialog.a(this.f16330a);
        FeedbackManager.get().a(Activities.getString(2131887363), (Integer) null);
        intent.putExtra("EXTRA_ASSIGN_FLOW", this.f16331b);
        intent.putExtra("EXTRA_CONTACT_ID", this.f16332c);
        intent.setData(Uri.parse(this.g.getPath()));
        setResult(-1, intent);
        finish();
    }

    @Override // com.lb.video_trimmer_library.a.c
    public final void b() {
        PopupManager.get().a(this, this.f16330a);
    }

    @Override // com.linkedin.android.litr.e
    public final void b(String str) {
        SimpleProgressDialog.a(this.f16330a);
        Intent intent = new Intent();
        FeedbackManager.get().a(Activities.getString(2131888146), (Integer) null);
        intent.putExtra("EXTRA_ASSIGN_FLOW", this.f16331b);
        intent.putExtra("EXTRA_CONTACT_ID", this.f16332c);
        if (this.f16331b == 3 && this.f.renameTo(this.g)) {
            intent.setData(Uri.parse(this.g.getPath()));
        } else {
            intent.setData(Uri.parse(this.f.getPath()));
            IoUtils.b(this.g);
        }
        setResult(-1, intent);
        finish();
    }

    @Override // com.linkedin.android.litr.e
    public final void c(String str) {
        SimpleProgressDialog.a(this.f16330a);
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
        if (StringUtils.a((CharSequence) stringExtra)) {
            finish();
            return;
        }
        String stringExtra2 = getIntent().getStringExtra("EXTRA_VIDEO_FILE_NAME");
        String str = stringExtra2;
        if (StringUtils.a((CharSequence) stringExtra2)) {
            str = "CallScreenTheme";
        }
        this.f16331b = getIntent().getIntExtra("EXTRA_ASSIGN_FLOW", 0);
        this.f16332c = getIntent().getStringExtra("EXTRA_CONTACT_ID");
        File file = new File(stringExtra);
        this.e = file;
        if (!file.exists()) {
            finish();
            return;
        }
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f16330a = simpleProgressDialog;
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        this.f16330a.setCancelable(false);
        VideoTrimmerView videoTrimmerView = (VideoTrimmerView) findViewById(2131364513);
        videoTrimmerView.setTrimmerEvents(new VideoTrimmerView.TrimmerEvents() { // from class: com.callapp.contacts.util.video._$$Lambda$TrimmerActivity$WEwOq7IDvp1uxw0L5aOpvyVBACo
            @Override // com.callapp.contacts.util.video.VideoTrimmerView.TrimmerEvents
            public final void onError(String str2) {
                TrimmerActivity.this.d(str2);
            }
        });
        ((TextView) findViewById(2131362247)).setText(Activities.getString(2131886505));
        findViewById(2131362248).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.util.video.TrimmerActivity.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                TrimmerActivity.this.setResult(-100);
                TrimmerActivity.this.finish();
            }
        });
        videoTrimmerView.setMaxDurationInMs(15000);
        videoTrimmerView.setOnK4LVideoListener(this);
        File file2 = new File(IoUtils.c("CallAppMedia"), str);
        this.g = file2;
        videoTrimmerView.setDestinationFile(file2);
        videoTrimmerView.setVideoURI(Uri.fromFile(this.e));
        videoTrimmerView.setVideoInformationVisibility(true);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        SimpleProgressDialog.a(this.f16330a);
        super.onDestroy();
    }
}
