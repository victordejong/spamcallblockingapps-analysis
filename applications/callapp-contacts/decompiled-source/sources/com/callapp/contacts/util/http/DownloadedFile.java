package com.callapp.contacts.util.http;

import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/DownloadedFile.class */
public class DownloadedFile {

    /* renamed from: a  reason: collision with root package name */
    private File f16214a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f16215b;

    public DownloadedFile(File file, boolean z) {
        this.f16214a = file;
        this.f16215b = z;
    }

    public boolean isFullyDownloaded() {
        return this.f16215b;
    }
}
