package zendesk.support.request;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.p001v4.util.Pair;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.FileUtils;
import com.zendesk.util.MimeUtils;
import com.zendesk.util.StringUtils;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import zendesk.belvedere.MediaResult;
import zendesk.support.Attachment;
import zendesk.support.CommentResponse;
import zendesk.support.IdUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateRequestAttachment.class */
public class StateRequestAttachment implements Serializable, Comparable<StateRequestAttachment> {
    private static final String DEFAULT_MIME_TYPE = "application/octet-stream";
    private final int height;

    /* renamed from: id */
    private final long f1896id;
    private final transient File localFile;
    private final String localUri;
    private final String mimeType;
    private final String name;
    private final long size;
    private final String thumbnailUrl;
    private final String token;
    private final String url;
    private final int width;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateRequestAttachment$Builder.class */
    static class Builder {
        private int height;

        /* renamed from: id */
        private long f1897id;
        private File localFile;
        private String localUri;
        private String mimeType;
        private String name;
        private long size;
        private String thumbnailUrl;
        private String token;
        private String url;
        private int width;

        private Builder(StateRequestAttachment stateRequestAttachment) {
            this.f1897id = stateRequestAttachment.getId();
            this.localFile = stateRequestAttachment.getLocalFile();
            this.localUri = stateRequestAttachment.getLocalUri();
            this.url = stateRequestAttachment.getUrl();
            this.token = stateRequestAttachment.getToken();
            this.mimeType = stateRequestAttachment.getMimeType();
            this.name = stateRequestAttachment.getName();
            this.size = stateRequestAttachment.getSize();
            this.width = stateRequestAttachment.getWidth();
            this.height = stateRequestAttachment.getHeight();
            this.thumbnailUrl = stateRequestAttachment.getThumbnailUrl();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public StateRequestAttachment build() {
            return new StateRequestAttachment(this);
        }

        Builder setHeight(int i) {
            this.height = i;
            return this;
        }

        Builder setId(long j) {
            this.f1897id = j;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setLocalFile(File file) {
            this.localFile = file;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setLocalUri(String str) {
            this.localUri = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setMimeType(String str) {
            this.mimeType = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setName(String str) {
            this.name = str;
            return this;
        }

        Builder setSize(long j) {
            this.size = j;
            return this;
        }

        void setThumbnailUrl(String str) {
            this.thumbnailUrl = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setToken(String str) {
            this.token = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setUrl(String str) {
            this.url = str;
            return this;
        }

        Builder setWidth(int i) {
            this.width = i;
            return this;
        }
    }

    StateRequestAttachment(long j, String str, File file, String str2, String str3, String str4, String str5, long j2, int i, int i2, String str6) {
        this.f1896id = j;
        this.localUri = str;
        this.localFile = file;
        this.url = str2;
        this.token = str3;
        this.mimeType = str4;
        this.name = str5;
        this.size = j2;
        this.width = i;
        this.height = i2;
        this.thumbnailUrl = str6;
    }

    private StateRequestAttachment(Builder builder) {
        this.localFile = builder.localFile;
        this.localUri = builder.localUri;
        this.mimeType = builder.mimeType;
        this.name = builder.name;
        this.f1896id = builder.f1897id;
        this.url = builder.url;
        this.token = builder.token;
        this.size = builder.size;
        this.width = builder.width;
        this.height = builder.height;
        this.thumbnailUrl = builder.thumbnailUrl;
    }

    public static Pair<Map<Long, StateRequestAttachment>, StateIdMapper> convert(List<CommentResponse> list, Map<Long, MediaResult> map, StateIdMapper stateIdMapper) {
        ArrayList arrayList = new ArrayList();
        for (CommentResponse commentResponse : list) {
            arrayList.addAll(commentResponse.getAttachments());
        }
        return convert(arrayList, stateIdMapper, map);
    }

    static Pair<Map<Long, StateRequestAttachment>, StateIdMapper> convert(List<Attachment> list, StateIdMapper stateIdMapper, Map<Long, MediaResult> map) {
        long j;
        File file;
        String str;
        HashMap hashMap = new HashMap(list.size());
        for (Attachment attachment : list) {
            if (attachment.getId() != null) {
                if (stateIdMapper.hasLocalId(attachment.getId())) {
                    j = stateIdMapper.getLocalId(attachment.getId()).longValue();
                } else {
                    j = IdUtil.newLongId();
                    stateIdMapper.addIdMapping(attachment.getId(), Long.valueOf(j));
                }
                if (map.containsKey(attachment.getId())) {
                    MediaResult mediaResult = map.get(attachment.getId());
                    file = mediaResult.getFile();
                    str = mediaResult.getUri().toString();
                } else {
                    str = null;
                    file = null;
                }
                long j2 = -1;
                long longValue = attachment.getSize() != null ? attachment.getSize().longValue() : -1L;
                long longValue2 = attachment.getWidth() != null ? attachment.getWidth().longValue() : -1L;
                if (attachment.getHeight() != null) {
                    j2 = attachment.getHeight().longValue();
                }
                String str2 = "";
                if (CollectionUtils.isNotEmpty(attachment.getThumbnails())) {
                    str2 = attachment.getThumbnails().get(0).getContentUrl();
                }
                hashMap.put(attachment.getId(), new StateRequestAttachment(j, str, file, attachment.getContentUrl(), "", attachment.getContentType(), attachment.getFileName(), longValue, (int) longValue2, (int) j2, str2));
            }
        }
        return Pair.create(hashMap, stateIdMapper);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MediaResult convert(StateRequestAttachment stateRequestAttachment) {
        return new MediaResult(stateRequestAttachment.getLocalFile(), stateRequestAttachment.getParsedLocalUri(), stateRequestAttachment.getParsedLocalUri(), stateRequestAttachment.getName(), stateRequestAttachment.getMimeType(), stateRequestAttachment.getSize(), stateRequestAttachment.getWidth(), stateRequestAttachment.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateRequestAttachment convert(File file) {
        return new StateRequestAttachment(IdUtil.newLongId(), Uri.fromFile(file).toString(), file, "", "", getMimeType(file), file.getName(), file.length(), -1, -1, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateRequestAttachment convert(MediaResult mediaResult) {
        return new StateRequestAttachment(IdUtil.newLongId(), mediaResult.getUri().toString(), mediaResult.getFile(), "", "", mediaResult.getMimeType(), mediaResult.getName(), mediaResult.getSize(), (int) mediaResult.getWidth(), (int) mediaResult.getHeight(), "");
    }

    private static String getMimeType(File file) {
        return MimeUtils.guessMimeTypeFromExtension(FileUtils.getFileExtension(file.getName()));
    }

    public int compareTo(@NonNull StateRequestAttachment stateRequestAttachment) {
        return (int) (this.f1896id - stateRequestAttachment.f1896id);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHeight() {
        return this.height;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getId() {
        return this.f1896id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File getLocalFile() {
        return this.localFile;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getLocalUri() {
        return this.localUri;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getMimeType() {
        return StringUtils.hasLength(this.mimeType) ? this.mimeType : DEFAULT_MIME_TYPE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getName() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Uri getParsedLocalUri() {
        return Uri.parse(this.localUri);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getSize() {
        return this.size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getToken() {
        return this.token;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUrl() {
        return this.url;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWidth() {
        return this.width;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAvailableLocally() {
        return (this.localUri == null || getParsedLocalUri() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Builder newBuilder() {
        return new Builder();
    }

    public String toString() {
        return "RequestAttachment{id=" + this.f1896id + ", localUri='" + this.localUri + "', localFile=" + this.localFile + ", url='" + this.url + "', token='" + this.token + "', mimeType='" + this.mimeType + "', name='" + this.name + "', size='" + this.size + "', width='" + this.width + "', height='" + this.height + "'}";
    }
}
