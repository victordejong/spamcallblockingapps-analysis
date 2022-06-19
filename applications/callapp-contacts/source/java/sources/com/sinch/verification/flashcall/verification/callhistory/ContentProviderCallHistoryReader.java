package com.sinch.verification.flashcall.verification.callhistory;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n��\n\u0002\u0010\t\n\u0002\b\u0003\u0018�� \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;", "Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;", "contentResolver", "Landroid/content/ContentResolver;", "(Landroid/content/ContentResolver;)V", "columns", "", "", "[Ljava/lang/String;", "readIncomingCalls", "", "sinceEpoch", "", "whereClause", "Companion", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader.class */
public final class ContentProviderCallHistoryReader implements CallHistoryReader {
    public static final Companion Companion = new Companion(null);
    private static final Uri callUri;
    private final String[] columns = {"date", "number", "type"};
    private final ContentResolver contentResolver;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader$Companion;", "", "()V", "callUri", "Landroid/net/Uri;", "getCallUri", "()Landroid/net/Uri;", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Uri getCallUri() {
            return ContentProviderCallHistoryReader.callUri;
        }
    }

    static {
        Uri uri = CallLog.Calls.CONTENT_URI;
        C18524p.m3849a((Object) uri, "CallLog.Calls.CONTENT_URI");
        callUri = uri;
    }

    public ContentProviderCallHistoryReader(ContentResolver contentResolver) {
        C18524p.m3841c(contentResolver, "contentResolver");
        this.contentResolver = contentResolver;
    }

    private final String whereClause(long j) {
        return "date > ".concat(String.valueOf(j));
    }

    @Override // com.sinch.verification.flashcall.verification.callhistory.CallHistoryReader
    public final List<String> readIncomingCalls(long j) {
        ArrayList arrayList = new ArrayList();
        Cursor query = this.contentResolver.query(callUri, this.columns, whereClause(j), null, "date");
        if (query != null) {
            int columnIndex = query.getColumnIndex("number");
            int columnIndex2 = query.getColumnIndex("type");
            while (query.moveToNext()) {
                int i = query.getInt(columnIndex2);
                if (i == 1 || i == 3) {
                    String string = query.getString(columnIndex);
                    C18524p.m3849a((Object) string, "cursor.getString(numberIndex)");
                    arrayList.add(string);
                }
            }
            query.close();
        }
        return arrayList;
    }
}
