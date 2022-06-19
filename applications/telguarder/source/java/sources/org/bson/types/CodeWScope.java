package org.bson.types;

import org.bson.BSONObject;
/* loaded from: classes3-dex2jar.jar:org/bson/types/CodeWScope.class */
public class CodeWScope extends Code {
    private static final long serialVersionUID = -6284832275113680002L;
    private final BSONObject scope;

    public CodeWScope(String str, BSONObject bSONObject) {
        super(str);
        this.scope = bSONObject;
    }

    @Override // org.bson.types.Code
    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            CodeWScope codeWScope = (CodeWScope) obj;
            boolean z = false;
            if (getCode().equals(codeWScope.getCode())) {
                z = false;
                if (this.scope.equals(codeWScope.scope)) {
                    z = true;
                }
            }
            return z;
        }
        return false;
    }

    public BSONObject getScope() {
        return this.scope;
    }

    @Override // org.bson.types.Code
    public int hashCode() {
        return getCode().hashCode() ^ this.scope.hashCode();
    }
}
