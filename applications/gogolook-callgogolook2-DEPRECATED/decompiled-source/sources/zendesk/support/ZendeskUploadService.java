package zendesk.support;

import java.io.File;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import p081h.p451q.p454c.AbstractC10857e;
import p081h.p451q.p454c.C10854d;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskUploadService.class */
public class ZendeskUploadService {
    public final UploadService uploadService;

    public ZendeskUploadService(UploadService uploadService) {
        this.uploadService = uploadService;
    }

    public void uploadAttachment(String str, File file, String str2, AbstractC10857e<UploadResponseWrapper> eVar) {
        this.uploadService.uploadAttachment(str, RequestBody.create(MediaType.parse(str2), file)).mo140a(new C10854d(eVar));
    }
}
