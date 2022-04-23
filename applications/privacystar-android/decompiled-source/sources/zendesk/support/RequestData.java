package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestData.class */
final class RequestData {
    private final int commentCount;

    /* renamed from: id */
    private final String f1850id;
    private int readCommentCount;

    private RequestData(String str, int i, int i2) {
        this.commentCount = i;
        this.f1850id = str;
        this.readCommentCount = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RequestData create(String str, int i, int i2) {
        return new RequestData(str, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RequestData create(Request request) {
        return new RequestData(request.getId(), request.getCommentCount().intValue(), 0);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RequestData requestData = (RequestData) obj;
        if (this.f1850id != null) {
            z = this.f1850id.equals(requestData.f1850id);
        } else if (requestData.f1850id != null) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCommentCount() {
        return this.commentCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getId() {
        return this.f1850id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getReadCommentCount() {
        return this.readCommentCount;
    }

    public int hashCode() {
        return this.f1850id != null ? this.f1850id.hashCode() : 0;
    }

    public String toString() {
        return "RequestData{commentCount=" + this.commentCount + "readCommentCount=" + this.readCommentCount + ", id='" + this.f1850id + "'}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int unreadComments() {
        return this.commentCount - this.readCommentCount;
    }
}
