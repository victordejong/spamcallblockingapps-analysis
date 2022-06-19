package com.telguarder.features.phoneNumberBlocker;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.PhoneEvent;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.p022ui.BOAdapter;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberBlocker/BlockNumberActivity.class */
public class BlockNumberActivity extends AppCompatActivity {
    public static final String EXTRA_KEY_PHONE_EVENT = "extraKeyPhoneEvent";
    public static final String EXTRA_KEY_PHONE_NUMBER = "extraKeyPhoneNumber";
    public static final String EXTRA_KEY_PHONE_OWNER = "extraKeyPhoneOwner";
    private Button mBlockButton;
    private EditText mCommentEditText;
    private EditText mDescriptionEditText;
    private PhoneEvent mPhoneEvent;
    private String mPhoneNumber;
    private EditText mPhoneNumberEditText;
    private String mPhoneOwner;
    private Spinner mReasonSpinner;
    private Toolbar mToolbar;
    private boolean wasReportReasonSelectedBefore = false;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter.class */
    public class ReasonSpinnerAdapter extends BOAdapter<BlockReason> {
        private LayoutInflater mInflater;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReasonSpinnerAdapter(Context context, List<BlockReason> list) {
            super(context, null, list, C2083R.layout.spinner_item_spam_warning_with_title);
            BlockNumberActivity.this = r7;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = this.mInflater.inflate(C2083R.layout.spinner_item_spam_warning_dropdown, viewGroup, false);
            }
            CheckedTextView checkedTextView = (CheckedTextView) view2.findViewById(C2083R.C2086id.custom_spinner_dropdown_title);
            checkedTextView.setBackgroundColor(UiHelper.getColorWrapper(BlockNumberActivity.this, C2083R.C2084color.spam_call_background));
            checkedTextView.setText(getItem(i).displayableNameId());
            BlockNumberActivity.this.wasReportReasonSelectedBefore = true;
            return view2;
        }

        public void getItemDisplayed(View view, BlockReason blockReason, int i) {
            TextView textView = (TextView) view.findViewById(C2083R.C2086id.report_spinner_adapter_selected_item);
            if (!BlockNumberActivity.this.wasReportReasonSelectedBefore) {
                textView.setText(C2083R.string.spam_warning_reason_spinning_title);
                return;
            }
            textView.setText(blockReason.displayableNameId());
            notifyDataSetChanged();
            BlockNumberActivity.this.validatePage();
        }
    }

    public void dismissKeyboard() {
        if (getCurrentFocus() != null) {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getApplicationWindowToken(), 0);
        }
    }

    public void enableSendButton(boolean z) {
        this.mBlockButton.setEnabled(z);
        this.mBlockButton.setTextColor(UiHelper.getColorWrapper(this, z ? 2131034274 : 2131034411));
    }

    public void finish(boolean z) {
        setResult(z ? -1 : 0, new Intent());
        finish();
    }

    private String getPhoneNumber() {
        PhoneEvent phoneEvent = this.mPhoneEvent;
        return (phoneEvent == null || TextUtils.isEmpty(phoneEvent.calledPhoneNumber)) ? this.mPhoneNumber : this.mPhoneEvent.calledPhoneNumber;
    }

    private String getPhoneOwner() {
        PhoneEvent phoneEvent = this.mPhoneEvent;
        return (phoneEvent == null || TextUtils.isEmpty(phoneEvent.getReportableName())) ? this.mPhoneOwner : this.mPhoneEvent.getReportableName();
    }

    private void setupReasonSpinner() {
        this.mReasonSpinner.setAdapter((SpinnerAdapter) new ReasonSpinnerAdapter(this, BlockReason.getAllReasons()));
        this.mReasonSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.telguarder.features.phoneNumberBlocker.BlockNumberActivity.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                BlockNumberActivity.this.validatePage();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                BlockNumberActivity.this.validatePage();
            }
        });
    }

    public void showToastWithMessage(String str) {
        Toast.makeText(this, str, 1).show();
    }

    public void validatePage() {
        boolean z = !TextUtils.isEmpty(this.mPhoneNumberEditText.getText()) && this.wasReportReasonSelectedBefore;
        this.mBlockButton.setEnabled(z);
        this.mBlockButton.setTextColor(UiHelper.getColorWrapper(this, z ? 2131034274 : 2131034411));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2083R.layout.activity_block_number);
        findViewById(C2083R.C2086id.blocknumber_root_layout);
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, null, findViewById(C2083R.C2086id.bottom_view_to_blur), false);
        Toolbar toolbar = (Toolbar) findViewById(C2083R.C2086id.blocknumber_toolbar);
        this.mToolbar = toolbar;
        UiHelper.initToolbar(this, toolbar, C2083R.string.title_activity_block_number);
        if (Build.VERSION.SDK_INT >= 23) {
            findViewById(C2083R.C2086id.blocknumber_scrollview).setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.telguarder.features.phoneNumberBlocker.BlockNumberActivity.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    BlockNumberActivity.this.mToolbar.setElevation(view.canScrollVertically(-1) ? 15.0f : 0.0f);
                }
            });
        }
        this.mPhoneEvent = (PhoneEvent) getIntent().getSerializableExtra(EXTRA_KEY_PHONE_EVENT);
        this.mPhoneNumber = getIntent().getStringExtra(EXTRA_KEY_PHONE_NUMBER);
        this.mPhoneOwner = getIntent().getStringExtra(EXTRA_KEY_PHONE_OWNER);
        this.mReasonSpinner = (Spinner) findViewById(C2083R.C2086id.sp_reason);
        EditText editText = (EditText) findViewById(C2083R.C2086id.tv_report_description);
        this.mDescriptionEditText = editText;
        editText.setText(getPhoneOwner());
        EditText editText2 = (EditText) findViewById(C2083R.C2086id.tv_report_phonenumber);
        this.mPhoneNumberEditText = editText2;
        editText2.setText(getPhoneNumber());
        this.mPhoneNumberEditText.addTextChangedListener(new TextWatcher() { // from class: com.telguarder.features.phoneNumberBlocker.BlockNumberActivity.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                BlockNumberActivity.this.validatePage();
            }
        });
        this.mCommentEditText = (EditText) findViewById(C2083R.C2086id.tv_report_comment);
        Button button = (Button) findViewById(C2083R.C2086id.block_button);
        this.mBlockButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.phoneNumberBlocker.BlockNumberActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BlockNumberActivity.this.enableSendButton(false);
                BlockNumberActivity.this.reportSpamCall();
                BlockNumberActivity.this.dismissKeyboard();
            }
        });
        setupReasonSpinner();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish(false);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void reportSpamCall() {
        String obj = this.mPhoneNumberEditText.getText().toString();
        if (TextUtils.isEmpty(obj) || !ContactUtils.isPhoneNumber(obj)) {
            showToastWithMessage(getString(C2083R.string.call_report_error));
            return;
        }
        BlockedNumberManager.getInstance().addBlockedNumber(this, ContactUtils.getE164NUmberIfPossible(this, obj, null), this.mDescriptionEditText.getText().toString(), (this.wasReportReasonSelectedBefore ? (BlockReason) this.mReasonSpinner.getSelectedItem() : BlockReason.REASON_OTHER).backendKeyword(), this.mCommentEditText.getText().toString(), true, new BackendCallbackListener<Object>() { // from class: com.telguarder.features.phoneNumberBlocker.BlockNumberActivity.4
            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onError(Exception exc) {
                BlockNumberActivity.this.enableSendButton(true);
                BlockNumberActivity blockNumberActivity = BlockNumberActivity.this;
                blockNumberActivity.showToastWithMessage(blockNumberActivity.getString(C2083R.string.call_report_error));
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onStart() {
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onSuccess(Object obj2) {
                BlockNumberActivity.this.enableSendButton(true);
                BlockNumberActivity blockNumberActivity = BlockNumberActivity.this;
                blockNumberActivity.showToastWithMessage(blockNumberActivity.getString(C2083R.string.call_report_success));
                BlockNumberActivity.this.finish(true);
            }
        });
    }
}
