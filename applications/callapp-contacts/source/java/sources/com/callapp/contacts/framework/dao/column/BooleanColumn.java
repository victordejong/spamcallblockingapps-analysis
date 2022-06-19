package com.callapp.contacts.framework.dao.column;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/column/BooleanColumn.class */
public class BooleanColumn extends Column<Boolean> {
    public BooleanColumn(String str) {
        super(str);
    }

    public BooleanColumn(String str, boolean z) {
        super(str, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
        if (r0.intValue() == 1) goto L10;
     */
    @Override // com.callapp.contacts.framework.dao.column.Column
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Boolean mo28987a(android.database.Cursor r4, int r5) {
        /*
            r3 = this;
            r0 = r4
            r1 = r5
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r4 = r0
            r0 = 1
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L1a
            r0 = r3
            boolean r0 = r0.f25181b
            if (r0 == 0) goto L25
            r0 = 0
            return r0
        L1a:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 1
            if (r0 != r1) goto L25
            goto L27
        L25:
            r0 = 0
            r6 = r0
        L27:
            r0 = r6
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.framework.dao.column.BooleanColumn.mo28987a(android.database.Cursor, int):java.lang.Object");
    }

    @Override // com.callapp.contacts.framework.dao.column.Column
    /* renamed from: a */
    public final /* synthetic */ String mo28988a(Boolean bool) {
        return Boolean.TRUE.equals(bool) ? "1" : "0";
    }
}
