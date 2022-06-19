package com.telguarder.features.rateAndFeedback;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.C2083R;
import com.telguarder.features.rateAndFeedback.ReportManager;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.errorhandling.ErrorHelper;
import com.telguarder.helpers.errorhandling.ErrorModel;
import com.telguarder.helpers.p022ui.FontManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/FeedbackActivity.class */
public class FeedbackActivity extends AppCompatActivity {
    private View mCancel;
    private TextView mCancelTextView;
    private View mDone;
    private TextView mDoneTextView;
    private EditText mEmailEditText;
    private View mMainContainer;
    private EditText mMessageEditText;
    private EditText mNameEditText;
    private ProgressBar mProgress;
    private TextView mTitleTextView;
    private EditText mTopicEditText;

    private void applyTypeFaceOnViews() {
        this.mTitleTextView.setTypeface(FontManager.getInstance().getBoldTypeFace(this));
        this.mDoneTextView.setTypeface(FontManager.getInstance().getBoldTypeFace(this));
        this.mCancelTextView.setTypeface(FontManager.getInstance().getBoldTypeFace(this));
        this.mNameEditText.setTypeface(FontManager.getInstance().getLightTypeFace(this));
        this.mEmailEditText.setTypeface(FontManager.getInstance().getLightTypeFace(this));
        this.mTopicEditText.setTypeface(FontManager.getInstance().getLightTypeFace(this));
        this.mMessageEditText.setTypeface(FontManager.getInstance().getLightTypeFace(this));
    }

    public Boolean areRequiredFieldFilledIn() {
        return Boolean.valueOf(!TextUtils.isEmpty(this.mNameEditText.getText()) && !TextUtils.isEmpty(this.mEmailEditText.getText()) && !TextUtils.isEmpty(this.mMessageEditText.getText()));
    }

    private String createComment() {
        return "\n" + AppUtil.getStringResource(this, C2083R.string.report_message_name) + this.mNameEditText.getText().toString() + "\n" + AppUtil.getStringResource(this, C2083R.string.common_email) + ": " + this.mEmailEditText.getText().toString() + "\n" + AppUtil.getStringResource(this, C2083R.string.report_message_topic) + ": " + this.mTopicEditText.getText().toString() + "\n" + AppUtil.getStringResource(this, C2083R.string.report_feedback_title) + ": " + this.mMessageEditText.getText().toString();
    }

    private void initViews() {
        this.mTitleTextView = (TextView) findViewById(C2083R.C2086id.report_feedback_title);
        this.mNameEditText = (EditText) findViewById(C2083R.C2086id.report_feedback_name);
        this.mEmailEditText = (EditText) findViewById(C2083R.C2086id.report_feedback_email);
        this.mTopicEditText = (EditText) findViewById(C2083R.C2086id.report_feedback_topic);
        this.mMessageEditText = (EditText) findViewById(C2083R.C2086id.report_feedback_message);
        this.mCancel = findViewById(C2083R.C2086id.report_cancel);
        this.mCancelTextView = (TextView) findViewById(C2083R.C2086id.report_cancel_text);
        this.mDone = findViewById(C2083R.C2086id.report_done);
        this.mDoneTextView = (TextView) findViewById(C2083R.C2086id.report_done_text);
        this.mProgress = (ProgressBar) findViewById(C2083R.C2086id.report_new_progress);
        this.mMainContainer = findViewById(C2083R.C2086id.report_new_container);
    }

    public void postNewReport() {
        ReportManager.getInstance().postReport(this, ReportManager.ReportType.FEEDBACK, createComment(), new BackendCallbackListener<String>(this) { // from class: com.telguarder.features.rateAndFeedback.FeedbackActivity.3
            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onError(Exception exc) {
                ErrorHelper.handleError(FeedbackActivity.this, exc);
                FeedbackActivity.this.showContent();
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onStart() {
                FeedbackActivity.this.showProgress();
            }

            public void onSuccess(String str) {
                FeedbackActivity feedbackActivity = FeedbackActivity.this;
                Toast.makeText(feedbackActivity, AppUtil.getStringResource(feedbackActivity, C2083R.string.report_send_success), 0).show();
                FeedbackActivity.this.onBackPressed();
            }
        });
    }

    private void setCancelListener() {
        this.mCancel.setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.rateAndFeedback.FeedbackActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FeedbackActivity.this.onBackPressed();
            }
        });
    }

    private void setDoneListener() {
        this.mDone.setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.rateAndFeedback.FeedbackActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FeedbackActivity.this.areRequiredFieldFilledIn().booleanValue()) {
                    FeedbackActivity.this.postNewReport();
                    return;
                }
                FeedbackActivity feedbackActivity = FeedbackActivity.this;
                ErrorHelper.showErrorDialog(ErrorModel.errorModelOfTitleAndMessage(feedbackActivity, AppUtil.getStringResource(feedbackActivity, C2083R.string.error_title_application_error), AppUtil.getStringResource(FeedbackActivity.this, C2083R.string.error_message_fill_in_required_fields)));
            }
        });
    }

    private void setLayout() {
        setContentView(C2083R.layout.activity_feedback_report);
    }

    private void setViewListeners() {
        setCancelListener();
        setDoneListener();
    }

    private void setViewValues() {
        TextView textView = this.mDoneTextView;
        textView.setText(textView.getText().toString().toUpperCase());
        TextView textView2 = this.mCancelTextView;
        textView2.setText(textView2.getText().toString().toUpperCase());
        TextView textView3 = this.mTitleTextView;
        textView3.setText(textView3.getText().toString().toUpperCase());
    }

    public void showContent() {
        this.mProgress.setVisibility(8);
        this.mMainContainer.setVisibility(0);
    }

    public void showProgress() {
        this.mProgress.setVisibility(0);
        this.mMainContainer.setVisibility(4);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout();
        initViews();
        applyTypeFaceOnViews();
        setViewValues();
        setViewListeners();
    }
}
