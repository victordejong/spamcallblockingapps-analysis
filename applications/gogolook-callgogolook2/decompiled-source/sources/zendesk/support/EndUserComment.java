package zendesk.support;

import androidx.annotation.NonNull;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/support/EndUserComment.class */
public class EndUserComment {
    @AbstractC10120c("uploads")
    public List<String> attachments;
    public String value;

    @NonNull
    public List<String> getAttachments() {
        return C10858a.m10404a((List) this.attachments);
    }

    public void setAttachments(List<String> list) {
        this.attachments = list;
    }

    public void setValue(String str) {
        this.value = str;
    }
}
