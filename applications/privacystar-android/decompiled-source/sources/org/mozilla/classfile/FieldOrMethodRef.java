package org.mozilla.classfile;
/* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/FieldOrMethodRef.class */
final class FieldOrMethodRef {
    private String className;
    private int hashCode = -1;
    private String name;
    private String type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldOrMethodRef(String str, String str2, String str3) {
        this.className = str;
        this.name = str2;
        this.type = str3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FieldOrMethodRef)) {
            return false;
        }
        FieldOrMethodRef fieldOrMethodRef = (FieldOrMethodRef) obj;
        boolean z = false;
        if (this.className.equals(fieldOrMethodRef.className)) {
            z = false;
            if (this.name.equals(fieldOrMethodRef.name)) {
                z = false;
                if (this.type.equals(fieldOrMethodRef.type)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public String getClassName() {
        return this.className;
    }

    public String getName() {
        return this.name;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = (this.className.hashCode() ^ this.name.hashCode()) ^ this.type.hashCode();
        }
        return this.hashCode;
    }
}
