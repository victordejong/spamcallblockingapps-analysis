package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestDataList.class */
public final class RequestDataList {
    @NonNull
    public final List<RequestData> requestDataList = new ArrayList(0);

    public RequestDataList(@Nullable List<RequestData> list) {
        if (C10858a.m10400b((Collection) list)) {
            this.requestDataList.addAll(list);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RequestDataList.class != obj.getClass()) {
            return false;
        }
        return this.requestDataList.equals(((RequestDataList) obj).requestDataList);
    }

    public int hashCode() {
        return this.requestDataList.hashCode();
    }
}
