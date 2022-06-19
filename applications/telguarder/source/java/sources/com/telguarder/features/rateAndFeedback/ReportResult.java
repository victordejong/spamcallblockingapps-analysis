package com.telguarder.features.rateAndFeedback;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/ReportResult.class */
public class ReportResult {
    public ArrayList<ReportEntry> numbers;
    public int totalCount;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/ReportResult$ReportEntry.class */
    public static class ReportEntry implements Serializable {
        public String number;
        public String owner;
        public String reason;

        public boolean isPlaceholderEntry() {
            return TextUtils.isEmpty(this.number) && TextUtils.isEmpty(this.reason) && TextUtils.isEmpty(this.owner);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x006f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0064 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0087 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean numberListTheaSame(java.util.ArrayList<com.telguarder.features.rateAndFeedback.ReportResult.ReportEntry> r4, java.util.ArrayList<com.telguarder.features.rateAndFeedback.ReportResult.ReportEntry> r5) {
        /*
            r3 = this;
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L5:
            r0 = r6
            boolean r0 = r0.hasNext()
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto Laf
            r0 = r6
            java.lang.Object r0 = r0.next()
            com.telguarder.features.rateAndFeedback.ReportResult$ReportEntry r0 = (com.telguarder.features.rateAndFeedback.ReportResult.ReportEntry) r0
            r9 = r0
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L25:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto La5
            r0 = r5
            java.lang.Object r0 = r0.next()
            com.telguarder.features.rateAndFeedback.ReportResult$ReportEntry r0 = (com.telguarder.features.rateAndFeedback.ReportResult.ReportEntry) r0
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.number
            if (r0 != 0) goto L4c
            r0 = r9
            java.lang.String r0 = r0.number
            if (r0 != 0) goto L25
            goto L5c
        L4c:
            r0 = r10
            java.lang.String r0 = r0.number
            r1 = r9
            java.lang.String r1 = r1.number
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
        L5c:
            r0 = r10
            java.lang.String r0 = r0.reason
            if (r0 != 0) goto L6f
            r0 = r9
            java.lang.String r0 = r0.reason
            if (r0 != 0) goto L25
            goto L7f
        L6f:
            r0 = r10
            java.lang.String r0 = r0.reason
            r1 = r9
            java.lang.String r1 = r1.reason
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
        L7f:
            r0 = r10
            java.lang.String r0 = r0.owner
            if (r0 != 0) goto L92
            r0 = r9
            java.lang.String r0 = r0.owner
            if (r0 != 0) goto L25
            goto La8
        L92:
            r0 = r10
            java.lang.String r0 = r0.owner
            r1 = r9
            java.lang.String r1 = r1.owner
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
            goto La8
        La5:
            r0 = 0
            r8 = r0
        La8:
            r0 = r8
            if (r0 != 0) goto L5
            r0 = 0
            return r0
        Laf:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.rateAndFeedback.ReportResult.numberListTheaSame(java.util.ArrayList, java.util.ArrayList):boolean");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportResult)) {
            return false;
        }
        ReportResult reportResult = (ReportResult) obj;
        if (this.totalCount == reportResult.totalCount) {
            ArrayList<ReportEntry> arrayList = this.numbers;
            ArrayList<ReportEntry> arrayList2 = reportResult.numbers;
            if (arrayList != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        throw new UnsupportedOperationException();
    }
}
