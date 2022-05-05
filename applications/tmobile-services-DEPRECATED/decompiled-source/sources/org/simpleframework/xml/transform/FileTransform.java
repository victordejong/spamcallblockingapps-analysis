package org.simpleframework.xml.transform;

import java.io.File;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/FileTransform.class */
class FileTransform implements Transform<File> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public File read(String str) {
        return new File(str);
    }

    public String write(File file) {
        return file.getPath();
    }
}
