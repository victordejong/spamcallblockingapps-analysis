package org.apache.commons.p018io.monitor;

import java.io.File;
/* renamed from: org.apache.commons.io.monitor.FileAlterationListener */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/monitor/FileAlterationListener.class */
public interface FileAlterationListener {
    void onDirectoryChange(File file);

    void onDirectoryCreate(File file);

    void onDirectoryDelete(File file);

    void onFileChange(File file);

    void onFileCreate(File file);

    void onFileDelete(File file);

    void onStart(FileAlterationObserver fileAlterationObserver);

    void onStop(FileAlterationObserver fileAlterationObserver);
}
