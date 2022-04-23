package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestDataList.class */
final class RequestDataList {
    @NonNull
    final List<RequestData> requestDataList = new ArrayList(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestDataList(@Nullable List<RequestData> list) {
        if (CollectionUtils.isNotEmpty(list)) {
            this.requestDataList.addAll(list);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.requestDataList.equals(((RequestDataList) obj).requestDataList);
    }

    public int hashCode() {
        return this.requestDataList.hashCode();
    }
}
