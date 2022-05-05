package com.android.contacts.vcard;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
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
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ImportProcessor.class */
public class ImportProcessor extends ProcessorBase implements VCardEntryHandler {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "VCardImport";
    private volatile boolean mCanceled;
    private volatile boolean mDone;
    private final ImportRequest mImportRequest;
    private final int mJobId;
    private final VCardImportExportListener mListener;
    private final ContentResolver mResolver;
    private final VCardService mService;
    private VCardParser mVCardParser;
    private final List<Uri> mFailedUris = new ArrayList();
    private int mCurrentCount = 0;
    private int mTotalCount = 0;

    public ImportProcessor(VCardService vCardService, VCardImportExportListener vCardImportExportListener, ImportRequest importRequest, int i) {
        this.mService = vCardService;
        this.mResolver = this.mService.getContentResolver();
        this.mListener = vCardImportExportListener;
        this.mImportRequest = importRequest;
        this.mJobId = i;
    }

    private boolean readOneVCard(InputStream inputStream, int i, String str, VCardInterpreter vCardInterpreter, int[] iArr) {
        boolean z;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i2 > 0) {
                try {
                    try {
                        try {
                            if (vCardInterpreter instanceof VCardEntryConstructor) {
                                ((VCardEntryConstructor) vCardInterpreter).clear();
                            }
                        } catch (VCardNestedException e) {
                            Log.e(LOG_TAG, "Nested Exception is found.");
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                }
                            }
                        } catch (VCardException e3) {
                            Log.e(LOG_TAG, e3.toString());
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e4) {
                                }
                            }
                        }
                    } catch (VCardNotSupportedException e5) {
                        Log.e(LOG_TAG, e5.toString());
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e6) {
                            }
                        }
                    } catch (Exception e7) {
                        Log.e(LOG_TAG, e7.toString());
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e8) {
                            }
                        }
                    }
                } catch (VCardVersionException e9) {
                    if (i2 == length - 1) {
                        Log.e(LOG_TAG, "Appropriate version for this vCard is not found.");
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e10) {
                        }
                    }
                } catch (IOException e11) {
                    try {
                        Log.e(LOG_TAG, "IOException was emitted: " + e11.getMessage());
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e12) {
                            }
                        }
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e13) {
                            }
                        }
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.mVCardParser = i3 == 2 ? new VCardParser_V30(i) : new VCardParser_V21(i);
                if (isCancelled()) {
                    Log.i(LOG_TAG, "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too.");
                    this.mVCardParser.cancel();
                }
            }
            this.mVCardParser.parse(inputStream, vCardInterpreter);
            z = true;
            if (inputStream != null) {
                try {
                    inputStream.close();
                    z = true;
                } catch (IOException e14) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void runInternal() {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.ImportProcessor.runInternal():void");
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2 = true;
        synchronized (this) {
            if (this.mDone || this.mCanceled) {
                z2 = false;
            } else {
                this.mCanceled = true;
                synchronized (this) {
                    if (this.mVCardParser != null) {
                        this.mVCardParser.cancel();
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
    public boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.mCanceled;
        }
        return z;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            z = this.mDone;
        }
        return z;
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onEnd() {
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onEntryCreated(VCardEntry vCardEntry) {
        this.mCurrentCount++;
        if (this.mListener != null) {
            this.mListener.onImportParsed(this.mImportRequest, this.mJobId, vCardEntry, this.mCurrentCount, this.mTotalCount);
        }
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onStart() {
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            try {
                runInternal();
                if (isCancelled() && this.mListener != null) {
                    this.mListener.onImportCanceled(this.mImportRequest, this.mJobId);
                }
                synchronized (this) {
                    this.mDone = true;
                }
            } catch (OutOfMemoryError e) {
                Log.e(LOG_TAG, "OutOfMemoryError thrown during import", e);
                throw e;
            } catch (RuntimeException e2) {
                Log.e(LOG_TAG, "RuntimeException thrown during import", e2);
                throw e2;
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.mDone = true;
                throw th;
            }
        }
    }
}
