package com.privacystar.core.p011ui.debug.network;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p004v7.app.AlertDialog;
import android.support.p004v7.app.AppCompatActivity;
import android.widget.EditText;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.jobs.WebRequestJob;
import java.util.HashMap;
import java.util.Map;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.network.CustNetworkRequest */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/network/CustNetworkRequest.class */
public class CustNetworkRequest extends AppCompatActivity {
    @BindView(C1566R.C1569id.debug_network_request_body_et)
    EditText mBodyField;
    private Map<String, String> mHeaders;
    @BindView(C1566R.C1569id.debug_network_request_media_type_et)
    EditText mMediaTypeField;
    private Unbinder mUnbinder;
    @BindView(C1566R.C1569id.debug_network_request_url_et)
    EditText mUrlField;

    @OnClick({C1566R.C1569id.debug_network_request_add_header_btn})
    public void addHeader() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        final EditText editText = new EditText(this);
        editText.setHint("key");
        editText.setTextColor(getResources().getColor(C1566R.color.ps3_black));
        linearLayout.addView(editText);
        final EditText editText2 = new EditText(this);
        editText2.setHint(FirebaseAnalytics.Param.VALUE);
        editText2.setTextColor(getResources().getColor(C1566R.color.ps3_black));
        linearLayout.addView(editText2);
        builder.setView(linearLayout);
        builder.setPositiveButton("OK", new DialogInterface.OnClickListener(this, editText, editText2) { // from class: com.privacystar.core.ui.debug.network.CustNetworkRequest$$Lambda$0
            private final CustNetworkRequest arg$1;
            private final EditText arg$2;
            private final EditText arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = editText;
                this.arg$3 = editText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                this.arg$1.lambda$addHeader$0$CustNetworkRequest(this.arg$2, this.arg$3, dialogInterface, i);
            }
        });
        builder.setNegativeButton("Cancel", CustNetworkRequest$$Lambda$1.$instance);
        builder.show();
    }

    @OnClick({C1566R.C1569id.debug_network_request_clear_btn})
    public void clear() {
        this.mUrlField.setText("");
        this.mMediaTypeField.setText("");
        this.mBodyField.setText("");
    }

    @OnClick({C1566R.C1569id.debug_network_request_default_btn})
    public void defaults() {
        this.mUrlField.setText(getResources().getString(C1566R.string.raw_request_default_url));
        this.mMediaTypeField.setText(getResources().getString(C1566R.string.raw_request_default_media_type));
        this.mBodyField.setText(getResources().getString(C1566R.string.raw_request_default_body));
        this.mHeaders.clear();
        this.mHeaders.put(getResources().getString(C1566R.string.raw_request_default_header_1_key), getResources().getString(C1566R.string.raw_request_default_header_1_value));
        this.mHeaders.put(getResources().getString(C1566R.string.raw_request_default_header_2_key), getResources().getString(C1566R.string.raw_request_default_header_2_value));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$addHeader$0$CustNetworkRequest(EditText editText, EditText editText2, DialogInterface dialogInterface, int i) {
        this.mHeaders.put(editText.getText().toString(), editText2.getText().toString());
        Timber.m37d("Added header name: %s, value: %s.", editText.getText().toString(), editText2.getText().toString());
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1566R.C1571layout.debug_network_request);
        this.mUnbinder = ButterKnife.bind(this);
        this.mHeaders = new HashMap();
    }

    @OnClick({C1566R.C1569id.debug_network_request_queue_btn})
    public void queueRequest() {
        PSApplication.getInstance().getJobManager().addJobInBackground(new WebRequestJob(this.mUrlField.getText().toString(), this.mMediaTypeField.getText().toString(), this.mBodyField.getText().toString(), this.mHeaders));
    }
}
