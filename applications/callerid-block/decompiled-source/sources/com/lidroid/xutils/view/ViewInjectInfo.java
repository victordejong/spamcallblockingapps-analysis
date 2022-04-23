package com.lidroid.xutils.view;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/view/ViewInjectInfo.class */
public class ViewInjectInfo {
    public int parentId;
    public Object value;

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewInjectInfo)) {
            return false;
        }
        ViewInjectInfo viewInjectInfo = (ViewInjectInfo) obj;
        if (this.parentId != viewInjectInfo.parentId) {
            return false;
        }
        Object obj2 = this.value;
        Object obj3 = viewInjectInfo.value;
        if (obj2 != null) {
            return obj2.equals(obj3);
        }
        if (obj3 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.value.hashCode() * 31) + this.parentId;
    }
}
