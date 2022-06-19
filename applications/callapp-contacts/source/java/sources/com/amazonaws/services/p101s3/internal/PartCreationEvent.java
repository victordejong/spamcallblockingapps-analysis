package com.amazonaws.services.p101s3.internal;

import com.amazonaws.services.p101s3.OnFileDelete;
import java.io.File;
/* renamed from: com.amazonaws.services.s3.internal.PartCreationEvent */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/PartCreationEvent.class */
public class PartCreationEvent {

    /* renamed from: a */
    public final File f12352a;

    /* renamed from: b */
    public final int f12353b;

    /* renamed from: c */
    public final boolean f12354c;

    /* renamed from: d */
    public final OnFileDelete f12355d;

    public PartCreationEvent(File file, int i, boolean z, OnFileDelete onFileDelete) {
        if (file != null) {
            this.f12352a = file;
            this.f12353b = i;
            this.f12354c = z;
            this.f12355d = onFileDelete;
            return;
        }
        throw new IllegalArgumentException("part must not be specified");
    }
}
