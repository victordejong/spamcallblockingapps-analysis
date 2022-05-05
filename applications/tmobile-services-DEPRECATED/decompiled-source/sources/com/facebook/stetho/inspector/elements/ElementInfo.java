package com.facebook.stetho.inspector.elements;

import com.facebook.stetho.common.ListUtil;
import com.facebook.stetho.common.Util;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;
@Immutable
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/ElementInfo.class */
public final class ElementInfo {
    public final List<Object> children;
    public final Object element;
    @Nullable
    public final Object parentElement;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ElementInfo(Object obj, @Nullable Object obj2, List<Object> list) {
        this.element = Util.throwIfNull(obj);
        this.parentElement = obj2;
        this.children = ListUtil.copyToImmutableList(list);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ElementInfo)) {
            return false;
        }
        ElementInfo elementInfo = (ElementInfo) obj;
        if (!(this.element == elementInfo.element && this.parentElement == elementInfo.parentElement && ListUtil.identityEquals(this.children, elementInfo.children))) {
            z = false;
        }
        return z;
    }
}
