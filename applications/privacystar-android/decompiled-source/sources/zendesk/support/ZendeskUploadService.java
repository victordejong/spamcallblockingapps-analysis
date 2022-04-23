package zendesk.support;

import com.zendesk.service.RetrofitZendeskCallbackAdapter;
import com.zendesk.service.ZendeskCallback;
import java.io.File;
import okhttp3.MediaType;
import okhttp3.RequestBody;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskUploadService.class */
class ZendeskUploadService {
    private static final String LOG_TAG = "ZendeskUploadService";
    private final UploadService uploadService;

    public ZendeskUploadService(UploadService uploadService) {
        this.uploadService = uploadService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deleteAttachment(String str, ZendeskCallback<Void> zendeskCallback) {
        this.uploadService.deleteAttachment(str).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void uploadAttachment(String str, File file, String str2, ZendeskCallback<UploadResponseWrapper> zendeskCallback) {
        this.uploadService.uploadAttachment(str, RequestBody.create(MediaType.parse(str2), file)).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }
}
