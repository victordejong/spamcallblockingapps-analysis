package com.callapp.contacts.util.model;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.ReflectionUtils;
import com.google.common.base.C15386j;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/PrioritizedValueBuilder.class */
public class PrioritizedValueBuilder<T> {
    protected final ContactData contact;
    protected DataSource dataSource;
    private T oldValue;
    protected long priority;
    protected boolean sure;
    protected final Validator<T> validator;
    protected T value;
    protected boolean valueIsForced;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/PrioritizedValueBuilder$Validator.class */
    public interface Validator<T> {
        boolean isValid(T t);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback.class */
    public interface ValueChangedCallback<T> {
        void valueChanged(T t, DataSource dataSource);
    }

    public PrioritizedValueBuilder(ContactData contactData, Validator<T> validator, T t, T t2) {
        this.priority = Long.MIN_VALUE;
        this.valueIsForced = false;
        this.contact = contactData;
        this.validator = validator;
        this.oldValue = t;
        this.value = t2;
    }

    public PrioritizedValueBuilder(ContactData contactData, T t, T t2) {
        this(contactData, new Validator<T>() { // from class: com.callapp.contacts.util.model.PrioritizedValueBuilder.1
            @Override // com.callapp.contacts.util.model.PrioritizedValueBuilder.Validator
            public boolean isValid(T t3) {
                return t3 != null;
            }
        }, t, t2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private PrioritizedValueBuilder<T> useField(String str, DataSource dataSource, Object obj, boolean z) {
        return obj == null ? this : useValue(ReflectionUtils.m27423a(obj, str), dataSource, obj, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006e, code lost:
        if (com.callapp.contacts.util.model.PriorityManager.getPriority(r7, r8) > r5.priority) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.callapp.contacts.util.model.PrioritizedValueBuilder<T> useValue(T r6, com.callapp.contacts.model.contact.DataSource r7, java.lang.Object r8, boolean r9) {
        /*
            r5 = this;
            r0 = r5
            com.callapp.contacts.model.contact.ContactData r0 = r0.contact
            boolean r0 = r0.isOnlySure()
            if (r0 == 0) goto L17
            r0 = r5
            com.callapp.contacts.model.contact.ContactData r0 = r0.contact
            r1 = r7
            boolean r0 = r0.isSure(r1)
            if (r0 != 0) goto L17
            r0 = r5
            return r0
        L17:
            r0 = r5
            boolean r0 = r0.valueIsForced
            if (r0 != 0) goto La6
            r0 = r5
            com.callapp.contacts.util.model.PrioritizedValueBuilder$Validator<T> r0 = r0.validator
            r10 = r0
            r0 = r10
            if (r0 == 0) goto La6
            r0 = r10
            r1 = r6
            boolean r0 = r0.isValid(r1)
            if (r0 == 0) goto La6
            r0 = r5
            com.callapp.contacts.model.contact.ContactData r0 = r0.contact
            r1 = r7
            boolean r0 = r0.isSure(r1)
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            if (r0 == 0) goto L53
            r0 = r5
            boolean r0 = r0.sure
            if (r0 != 0) goto L53
        L4d:
            r0 = 1
            r13 = r0
            goto L74
        L53:
            r0 = r12
            r13 = r0
            r0 = r11
            r1 = r5
            boolean r1 = r1.sure
            if (r0 != r1) goto L74
            r0 = r12
            r13 = r0
            r0 = r7
            r1 = r8
            long r0 = com.callapp.contacts.util.model.PriorityManager.getPriority(r0, r1)
            r1 = r5
            long r1 = r1.priority
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L74
            goto L4d
        L74:
            r0 = r13
            if (r0 == 0) goto La6
            r0 = r6
            if (r0 == 0) goto La6
            r0 = r5
            r1 = r6
            r0.value = r1
            r0 = r5
            r1 = r7
            r0.dataSource = r1
            r0 = r5
            r1 = r5
            com.callapp.contacts.model.contact.ContactData r1 = r1.contact
            r2 = r7
            boolean r1 = r1.isSure(r2)
            r0.sure = r1
            r0 = r5
            r1 = r7
            r2 = r8
            long r1 = com.callapp.contacts.util.model.PriorityManager.getPriority(r1, r2)
            r0.priority = r1
            r0 = r9
            if (r0 == 0) goto La6
            r0 = r5
            r1 = 1
            r0.valueIsForced = r1
        La6:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.model.PrioritizedValueBuilder.useValue(java.lang.Object, com.callapp.contacts.model.contact.DataSource, java.lang.Object, boolean):com.callapp.contacts.util.model.PrioritizedValueBuilder");
    }

    public void execute(ValueChangedCallback<T> valueChangedCallback) {
        if (!C15386j.m8951a(this.oldValue, this.value)) {
            valueChangedCallback.valueChanged(this.value, this.dataSource);
        }
    }

    public PrioritizedValueBuilder<T> useField(String str, DataSource dataSource, Object obj) {
        return useField(str, dataSource, obj, false);
    }

    public PrioritizedValueBuilder<T> useFieldForced(String str, DataSource dataSource, Object obj) {
        return useField(str, dataSource, obj, true);
    }

    public PrioritizedValueBuilder<T> useValue(T t, DataSource dataSource) {
        return useValue(t, dataSource, null);
    }

    public PrioritizedValueBuilder<T> useValue(T t, DataSource dataSource, Object obj) {
        return useValue(t, dataSource, obj, false);
    }
}
