package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskUploadProvider.class */
class ZendeskUploadProvider implements UploadProvider {
    private final ZendeskUploadService uploadService;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskUploadProvider(ZendeskUploadService zendeskUploadService) {
        this.uploadService = zendeskUploadService;
    }

    @Override // zendesk.support.UploadProvider
    public void deleteAttachment(@NonNull String str, @Nullable ZendeskCallback<Void> zendeskCallback) {
        this.uploadService.deleteAttachment(str, zendeskCallback);
    }

    @Override // zendesk.support.UploadProvider
    public void uploadAttachment(@NonNull String str, @NonNull File file, @NonNull String str2, @Nullable final ZendeskCallback<UploadResponse> zendeskCallback) {
        this.uploadService.uploadAttachment(str, file, str2, new ZendeskCallbackSuccess<UploadResponseWrapper>(zendeskCallback) { // from class: zendesk.support.ZendeskUploadProvider.1
            public void onSuccess(UploadResponseWrapper uploadResponseWrapper) {
                if (zendeskCallback != null) {
                    zendeskCallback.onSuccess(uploadResponseWrapper.getUpload());
                }
            }
        });
    }
}
