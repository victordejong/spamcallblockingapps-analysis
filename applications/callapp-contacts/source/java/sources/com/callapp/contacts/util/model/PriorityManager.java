package com.callapp.contacts.util.model;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/PriorityManager.class */
public class PriorityManager {
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r0 == (-1)) goto L6;
     */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long getPriority(com.callapp.contacts.model.contact.DataSource r5, java.lang.Object r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof com.callapp.common.model.PriorityInterface
            if (r0 == 0) goto L1c
            r0 = r6
            com.callapp.common.model.PriorityInterface r0 = (com.callapp.common.model.PriorityInterface) r0
            long r0 = r0.getPriority()
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L22
        L1c:
            r0 = r5
            long r0 = r0.priority
            r9 = r0
        L22:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.model.PriorityManager.getPriority(com.callapp.contacts.model.contact.DataSource, java.lang.Object):long");
    }
}
