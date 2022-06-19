package org.bson.types;

import org.bson.Document;
/* loaded from: classes3-dex2jar.jar:org/bson/types/CodeWithScope.class */
public class CodeWithScope extends Code {
    private static final long serialVersionUID = -6284832275113680002L;
    private final Document scope;

    public CodeWithScope(String str, Document document) {
        super(str);
        this.scope = document;
    }

    @Override // org.bson.types.Code
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Document document = this.scope;
        Document document2 = ((CodeWithScope) obj).scope;
        return document != null ? document.equals(document2) : document2 == null;
    }

    public Document getScope() {
        return this.scope;
    }

    @Override // org.bson.types.Code
    public int hashCode() {
        return getCode().hashCode() ^ this.scope.hashCode();
    }
}
