package com.telguarder.features.postCallSpamInfo;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.C2083R;
import com.telguarder.features.phoneNumberBlocker.BlockReason;
import com.telguarder.features.phoneNumberBlocker.BlockedNumberManager;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.p022ui.BOAdapter;
import com.telguarder.helpers.p022ui.UiHelper;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder.class */
public class SpamCommentSubmitRowViewHolder extends RecyclerView.ViewHolder {
    private CheckBox mBlockCheckbox;
    private SpamCommentSubmitData mData;
    private View mItemView;
    private Spinner mReportReasonSpinner;
    private Button mSendButton;
    private TextView mSpamReportCommentTextView;
    private boolean wasReportReasonSelectedBefore = false;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$ReasonSpinnerAdapter.class */
    public class ReasonSpinnerAdapter extends BOAdapter<BlockReason> {
        private LayoutInflater mInflater;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReasonSpinnerAdapter(Context context, List<BlockReason> list) {
            super(context, null, list, C2083R.layout.spinner_item_spam_warning_with_title);
            SpamCommentSubmitRowViewHolder.this = r7;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = this.mInflater.inflate(C2083R.layout.spinner_item_spam_warning_dropdown, viewGroup, false);
            }
            CheckedTextView checkedTextView = (CheckedTextView) view2.findViewById(C2083R.C2086id.custom_spinner_dropdown_title);
            checkedTextView.setBackgroundColor(UiHelper.getColorWrapper(view2.getContext(), SpamCommentSubmitRowViewHolder.this.mData.mPhoneEvent.isSpamCommunityOrange() ? 2131034393 : 2131034392));
            checkedTextView.setText(getItem(i).displayableNameId());
            SpamCommentSubmitRowViewHolder.this.wasReportReasonSelectedBefore = true;
            return view2;
        }

        public void getItemDisplayed(View view, BlockReason blockReason, int i) {
            TextView textView = (TextView) view.findViewById(C2083R.C2086id.report_spinner_adapter_selected_item);
            if (!SpamCommentSubmitRowViewHolder.this.wasReportReasonSelectedBefore) {
                textView.setText(C2083R.string.spam_warning_reason_spinning_title);
                return;
            }
            textView.setText(blockReason.displayableNameId());
            notifyDataSetChanged();
            SpamCommentSubmitRowViewHolder.this.validatePage();
        }
    }

    public SpamCommentSubmitRowViewHolder(View view) {
        super(view);
        this.mItemView = view;
    }

    public void dismissKeyboard() {
        if (!LastPhoneCallSpamActivity.isInstantiated() || LastPhoneCallSpamActivity.getInstance().getCurrentFocus() == null) {
            return;
        }
        ((InputMethodManager) LastPhoneCallSpamActivity.getInstance().getSystemService("input_method")).hideSoftInputFromWindow(LastPhoneCallSpamActivity.getInstance().getCurrentFocus().getApplicationWindowToken(), 0);
    }

    public void enableSendButton(boolean z) {
        getSendButton().setEnabled(z);
        Button button = this.mSendButton;
        button.setTextColor(UiHelper.getColorWrapper(button.getContext(), z ? 2131034274 : 2131034411));
    }

    private CheckBox getBlockCheckbox() {
        if (this.mBlockCheckbox == null) {
            this.mBlockCheckbox = (CheckBox) this.mItemView.findViewById(C2083R.C2086id.checkbox_block_number);
        }
        return this.mBlockCheckbox;
    }

    private Button getSendButton() {
        if (this.mSendButton == null) {
            this.mSendButton = (Button) this.mItemView.findViewById(C2083R.C2086id.spam_warning_block_button);
        }
        return this.mSendButton;
    }

    private TextView getSpamReportCommentTextView() {
        if (this.mSpamReportCommentTextView == null) {
            this.mSpamReportCommentTextView = (TextView) this.mItemView.findViewById(C2083R.C2086id.spam_warning_report_comment);
        }
        return this.mSpamReportCommentTextView;
    }

    private Spinner getSpamReportReasonSpinner() {
        if (this.mReportReasonSpinner == null) {
            this.mReportReasonSpinner = (Spinner) this.mItemView.findViewById(C2083R.C2086id.type_spinner);
        }
        return this.mReportReasonSpinner;
    }

    private void setupReasonSpinner() {
        getSpamReportReasonSpinner().setBackground(this.mItemView.getContext().getDrawable(this.mData.mPhoneEvent.isSpamCommunityOrange() ? 2131165481 : 2131165480));
        if (LastPhoneCallSpamActivity.isInstantiated()) {
            getSpamReportReasonSpinner().setAdapter((SpinnerAdapter) new ReasonSpinnerAdapter(LastPhoneCallSpamActivity.getInstance(), BlockReason.getAllReasons()));
        }
        getSpamReportReasonSpinner().setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.telguarder.features.postCallSpamInfo.SpamCommentSubmitRowViewHolder.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                SpamCommentSubmitRowViewHolder.this.validatePage();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                SpamCommentSubmitRowViewHolder.this.validatePage();
            }
        });
    }

    private void setupReportingFeature() {
        getSendButton().setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.postCallSpamInfo.SpamCommentSubmitRowViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SpamCommentSubmitRowViewHolder.this.enableSendButton(false);
                SpamCommentSubmitRowViewHolder.this.reportSpamCall();
                SpamCommentSubmitRowViewHolder.this.dismissKeyboard();
            }
        });
        int colorWrapper = UiHelper.getColorWrapper(this.mItemView.getContext(), this.mData.mPhoneEvent.isSpamCommunityOrange() ? 2131034393 : 2131034392);
        getSendButton().setBackgroundColor(colorWrapper);
        ((TextView) this.mItemView.findViewById(C2083R.C2086id.comment_title)).setTextColor(colorWrapper);
        getSpamReportCommentTextView().addTextChangedListener(new TextWatcher() { // from class: com.telguarder.features.postCallSpamInfo.SpamCommentSubmitRowViewHolder.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SpamCommentSubmitRowViewHolder.this.validatePage();
            }
        });
    }

    public void showToastWithMessage(String str) {
        Toast.makeText(this.mItemView.getContext(), str, 1).show();
    }

    public void validatePage() {
        enableSendButton(!TextUtils.isEmpty(getSpamReportCommentTextView().getText()) && this.wasReportReasonSelectedBefore);
    }

    public void bindData(SpamCommentSubmitData spamCommentSubmitData) {
        if (this.mData != null) {
            return;
        }
        this.mData = spamCommentSubmitData;
        setupReportingFeature();
        setupReasonSpinner();
    }

    public void reportSpamCall() {
        SpamCommentSubmitData spamCommentSubmitData = this.mData;
        if (spamCommentSubmitData == null || spamCommentSubmitData.mPhoneEvent == null) {
            showToastWithMessage(this.mItemView.getContext().getString(C2083R.string.call_report_error));
            return;
        }
        String backendKeyword = (this.wasReportReasonSelectedBefore ? (BlockReason) getSpamReportReasonSpinner().getSelectedItem() : BlockReason.REASON_OTHER).backendKeyword();
        String str = this.mData.mPhoneEvent.name;
        final String charSequence = getSpamReportCommentTextView().getText().toString();
        BlockedNumberManager.getInstance().addBlockedNumber(this.mItemView.getContext(), ContactUtils.getE164NUmberIfPossible(this.mItemView.getContext(), this.mData.mPhoneEvent.calledPhoneNumber, null), str, backendKeyword, charSequence, getBlockCheckbox().isChecked(), new BackendCallbackListener<Object>() { // from class: com.telguarder.features.postCallSpamInfo.SpamCommentSubmitRowViewHolder.3
            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onError(Exception exc) {
                SpamCommentSubmitRowViewHolder spamCommentSubmitRowViewHolder = SpamCommentSubmitRowViewHolder.this;
                spamCommentSubmitRowViewHolder.showToastWithMessage(spamCommentSubmitRowViewHolder.mItemView.getContext().getString(C2083R.string.call_report_error));
                SpamCommentSubmitRowViewHolder.this.enableSendButton(true);
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onStart() {
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onSuccess(Object obj) {
                SpamCommentSubmitRowViewHolder spamCommentSubmitRowViewHolder = SpamCommentSubmitRowViewHolder.this;
                spamCommentSubmitRowViewHolder.showToastWithMessage(spamCommentSubmitRowViewHolder.mItemView.getContext().getString(C2083R.string.call_report_success));
                SpamCommentSubmitRowViewHolder.this.enableSendButton(true);
                if (SpamCommentsViewAdapter.isInstantiated()) {
                    SpamCommentsViewAdapter.getInstance().addOwnCommentToTheList(charSequence, new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()));
                }
            }
        });
    }
}
