package com.android.contacts.util;

import android.content.Context;
import android.os.AsyncTask;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.widget.TextView;
import com.android.contacts.q;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/PhoneNumberFormatter.class */
public final class PhoneNumberFormatter {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask.class */
    private static class TextWatcherLoadAsyncTask extends AsyncTask<Void, Void, PhoneNumberFormattingTextWatcher> {
        private final String mCountryCode;
        private final TextView mTextView;

        public TextWatcherLoadAsyncTask(String str, TextView textView) {
            this.mCountryCode = str;
            this.mTextView = textView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public PhoneNumberFormattingTextWatcher doInBackground(Void... voidArr) {
            return new PhoneNumberFormattingTextWatcher(this.mCountryCode);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(PhoneNumberFormattingTextWatcher phoneNumberFormattingTextWatcher) {
            if (phoneNumberFormattingTextWatcher != null && !isCancelled()) {
                this.mTextView.addTextChangedListener(phoneNumberFormattingTextWatcher);
            }
        }
    }

    private PhoneNumberFormatter() {
    }

    public static final void setPhoneNumberFormattingTextWatcher(Context context, TextView textView) {
        new TextWatcherLoadAsyncTask(q.a(context), textView).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
