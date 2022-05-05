package zendesk.support;

import android.support.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/EndUserComment.class */
public class EndUserComment {
    @SerializedName("uploads")
    private List<String> attachments;
    private String value;

    @NonNull
    public List<String> getAttachments() {
        return CollectionUtils.copyOf(this.attachments);
    }

    public void setAttachments(List<String> list) {
        this.attachments = list;
    }

    public void setValue(String str) {
        this.value = str;
    }
}
