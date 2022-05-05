package com.apptentive.android.sdk.module.messagecenter;

import android.view.View;
import android.widget.EditText;
import com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder;
import com.apptentive.android.sdk.util.image.ApptentiveImageGridView;
import com.apptentive.android.sdk.util.image.ImageItem;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/OnListviewItemActionListener.class */
public interface OnListviewItemActionListener {
    void afterComposingTextChanged(String str);

    void beforeComposingTextChanged(CharSequence charSequence);

    void onAttachImage();

    void onCancelComposing();

    void onClickAttachment(int i, ImageItem imageItem);

    void onCloseWhoCard(String str);

    void onComposingTextChanged(CharSequence charSequence);

    void onComposingViewCreated(MessageComposerHolder messageComposerHolder, EditText editText, ApptentiveImageGridView apptentiveImageGridView);

    void onFinishComposing();

    void onSubmitWhoCard(String str);

    void onWhoCardViewCreated(EditText editText, EditText editText2, View view);
}
