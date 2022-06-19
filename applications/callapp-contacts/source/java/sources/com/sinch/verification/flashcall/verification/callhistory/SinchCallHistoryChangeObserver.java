package com.sinch.verification.flashcall.verification.callhistory;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.CallLog;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;", "Landroid/database/ContentObserver;", "callHistoryChangeListener", "Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;", "(Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;)V", "onChange", "", "selfChange", "", "uri", "Landroid/net/Uri;", "registerOn", "contentResolver", "Landroid/content/ContentResolver;", "unregisterFrom", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver.class */
public final class SinchCallHistoryChangeObserver extends ContentObserver {
    private final CallHistoryChangeListener callHistoryChangeListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SinchCallHistoryChangeObserver(CallHistoryChangeListener callHistoryChangeListener) {
        super(new Handler());
        C18524p.m3841c(callHistoryChangeListener, "callHistoryChangeListener");
        this.callHistoryChangeListener = callHistoryChangeListener;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z, Uri uri) {
        super.onChange(z, uri);
        this.callHistoryChangeListener.onCallHistoryChanged();
    }

    public final void registerOn(ContentResolver contentResolver) {
        C18524p.m3841c(contentResolver, "contentResolver");
        contentResolver.registerContentObserver(CallLog.Calls.CONTENT_URI, true, this);
    }

    public final void unregisterFrom(ContentResolver contentResolver) {
        C18524p.m3841c(contentResolver, "contentResolver");
        contentResolver.unregisterContentObserver(this);
    }
}
