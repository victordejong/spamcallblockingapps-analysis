package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.OnFileDelete;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/PartCreationEvent.class */
public class PartCreationEvent {

    /* renamed from: a  reason: collision with root package name */
    public final File f6811a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6812b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f6813c;

    /* renamed from: d  reason: collision with root package name */
    public final OnFileDelete f6814d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PartCreationEvent(File file, int i, boolean z, OnFileDelete onFileDelete) {
        if (file != null) {
            this.f6811a = file;
            this.f6812b = i;
            this.f6813c = z;
            this.f6814d = onFileDelete;
            return;
        }
        throw new IllegalArgumentException("part must not be specified");
    }
}
