package com.callapp.contacts.util.http;

import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/DownloadedFile.class */
public class DownloadedFile {

    /* renamed from: a */
    private File f28268a;

    /* renamed from: b */
    private final boolean f28269b;

    public DownloadedFile(File file, boolean z) {
        this.f28268a = file;
        this.f28269b = z;
    }

    public boolean isFullyDownloaded() {
        return this.f28269b;
    }
}
