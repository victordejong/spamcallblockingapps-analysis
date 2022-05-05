package com.android.contacts.b;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.android.contacts.vcard.ImportRequest;
import com.android.contacts.vcard.ProcessorBase;
import com.android.vcard.VCardEntry;
import com.android.vcard.VCardEntryConstructor;
import com.android.vcard.VCardEntryHandler;
import com.android.vcard.VCardInterpreter;
import com.android.vcard.VCardParser;
import com.android.vcard.VCardParser_V21;
import com.android.vcard.VCardParser_V30;
import com.android.vcard.exception.VCardException;
import com.android.vcard.exception.VCardNestedException;
import com.android.vcard.exception.VCardNotSupportedException;
import com.android.vcard.exception.VCardVersionException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/b/a.class */
public final class a extends ProcessorBase implements VCardEntryHandler {

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f609a;

    /* renamed from: b  reason: collision with root package name */
    private final ImportRequest f610b;
    private final List<Uri> c = new ArrayList();
    private VCardParser d;
    private volatile boolean e;
    private volatile boolean f;
    private AbstractC0025a g;

    /* renamed from: com.android.contacts.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/b/a$a.class */
    public interface AbstractC0025a {
        void a();
    }

    public a(Context context, ImportRequest importRequest) {
        this.f609a = context.getContentResolver();
        this.f610b = importRequest;
        this.g = (AbstractC0025a) context;
    }

    private boolean a(InputStream inputStream, int i, VCardInterpreter vCardInterpreter, int[] iArr) {
        boolean z;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i2 > 0) {
                try {
                    try {
                        try {
                            ((VCardEntryConstructor) vCardInterpreter).clear();
                        } catch (VCardNotSupportedException e) {
                            Log.e("RestoreImportProcessor", e.toString());
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                }
                            }
                        }
                    } catch (VCardNestedException e3) {
                        Log.e("RestoreImportProcessor", "Nested Exception is found.");
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                            }
                        }
                    } catch (VCardException e5) {
                        Log.e("RestoreImportProcessor", e5.toString());
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e6) {
                            }
                        }
                    }
                } catch (VCardVersionException e7) {
                    if (i2 == length - 1) {
                        Log.e("RestoreImportProcessor", "Appropriate version for this vCard is not found.");
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e8) {
                        }
                    }
                } catch (IOException e9) {
                    try {
                        Log.e("RestoreImportProcessor", "IOException was emitted: " + e9.getMessage());
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e10) {
                            }
                        }
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e11) {
                            }
                        }
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.d = i3 == 2 ? new VCardParser_V30(i) : new VCardParser_V21(i);
            }
            this.d.parse(inputStream, vCardInterpreter);
            z = true;
            if (inputStream != null) {
                try {
                    inputStream.close();
                    z = true;
                } catch (IOException e12) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2 = true;
        synchronized (this) {
            if (this.f || this.e) {
                z2 = false;
            } else {
                this.e = true;
                synchronized (this) {
                    if (this.d != null) {
                        this.d.cancel();
                    }
                }
            }
        }
        return z2;
    }

    @Override // com.android.contacts.vcard.ProcessorBase
    public final int getType() {
        return 1;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public final boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.e;
        }
        return z;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        synchronized (this) {
            z = this.f;
        }
        return z;
    }

    @Override // com.android.vcard.VCardEntryHandler
    public final void onEnd() {
        this.g.a();
    }

    @Override // com.android.vcard.VCardEntryHandler
    public final void onEntryCreated(VCardEntry vCardEntry) {
    }

    @Override // com.android.vcard.VCardEntryHandler
    public final void onStart() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ec A[Catch: OutOfMemoryError -> 0x0188, all -> 0x0197, RuntimeException -> 0x01d0, TRY_ENTER, TryCatch #2 {OutOfMemoryError -> 0x0188, blocks: (B:3:0x0004, B:5:0x0018, B:7:0x0026, B:25:0x00e3, B:28:0x00ec, B:34:0x0112, B:48:0x0168, B:55:0x0180, B:57:0x0187, B:68:0x01a5), top: B:88:0x0004, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a5 A[Catch: OutOfMemoryError -> 0x0188, all -> 0x0197, RuntimeException -> 0x01d0, TRY_ENTER, TRY_LEAVE, TryCatch #2 {OutOfMemoryError -> 0x0188, blocks: (B:3:0x0004, B:5:0x0018, B:7:0x0026, B:25:0x00e3, B:28:0x00ec, B:34:0x0112, B:48:0x0168, B:55:0x0180, B:57:0x0187, B:68:0x01a5), top: B:88:0x0004, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x010a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.vcard.VCardEntryHandler, com.android.contacts.b.a] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.RunnableFuture, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.b.a.run():void");
    }
}
