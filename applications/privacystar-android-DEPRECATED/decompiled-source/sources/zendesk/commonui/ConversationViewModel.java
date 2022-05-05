package zendesk.commonui;

import android.arch.lifecycle.LiveData;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.text.TextWatcher;
import zendesk.commonui.InputBox;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/ConversationViewModel.class */
public interface ConversationViewModel {
    @NonNull
    InputBox.InputTextConsumer getInputTextConsumer();

    @NonNull
    LiveData<ConversationState> getLiveConversationState();

    @NonNull
    TextWatcher getTextWatcher();

    void onActivityResult(int i, int i2, Intent intent);
}
