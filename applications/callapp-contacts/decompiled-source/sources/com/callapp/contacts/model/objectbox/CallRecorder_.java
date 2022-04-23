package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallRecorderCursor;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRecorder_.class */
public final class CallRecorder_ implements c<CallRecorder> {
    public static final g<CallRecorder>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CallRecorder";
    public static final int __ENTITY_ID = 10;
    public static final String __ENTITY_NAME = "CallRecorder";
    public static final g<CallRecorder> __ID_PROPERTY;
    public static final CallRecorder_ __INSTANCE;
    public static final g<CallRecorder> callType;
    public static final g<CallRecorder> date;
    public static final g<CallRecorder> duration;
    public static final g<CallRecorder> fileName;
    public static final g<CallRecorder> id;
    public static final g<CallRecorder> isUploaded;
    public static final g<CallRecorder> note;
    public static final g<CallRecorder> phoneOrIdKey;
    public static final g<CallRecorder> starred;
    public static final Class<CallRecorder> __ENTITY_CLASS = CallRecorder.class;
    public static final b<CallRecorder> __CURSOR_FACTORY = new CallRecorderCursor.Factory();
    static final CallRecorderIdGetter __ID_GETTER = new CallRecorderIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRecorder_$CallRecorderIdGetter.class */
    static final class CallRecorderIdGetter implements io.objectbox.b.c<CallRecorder> {
        CallRecorderIdGetter() {
        }

        public final long getId(CallRecorder callRecorder) {
            Long id = callRecorder.getId();
            if (id != null) {
                return id.longValue();
            }
            return 0L;
        }
    }

    static {
        CallRecorder_ callRecorder_ = new CallRecorder_();
        __INSTANCE = callRecorder_;
        g<CallRecorder> gVar = new g<>(callRecorder_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<CallRecorder> gVar2 = new g<>(callRecorder_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<CallRecorder> gVar3 = new g<>(callRecorder_, 2, 3, Long.TYPE, "date");
        date = gVar3;
        g<CallRecorder> gVar4 = new g<>(callRecorder_, 3, 4, String.class, "fileName");
        fileName = gVar4;
        g<CallRecorder> gVar5 = new g<>(callRecorder_, 4, 5, Long.TYPE, VastIconXmlManager.DURATION);
        duration = gVar5;
        g<CallRecorder> gVar6 = new g<>(callRecorder_, 5, 6, Boolean.TYPE, "starred");
        starred = gVar6;
        g<CallRecorder> gVar7 = new g<>(callRecorder_, 6, 7, String.class, "note");
        note = gVar7;
        g<CallRecorder> gVar8 = new g<>(callRecorder_, 7, 8, Integer.TYPE, "callType");
        callType = gVar8;
        g<CallRecorder> gVar9 = new g<>(callRecorder_, 8, 9, Boolean.TYPE, "isUploaded");
        isUploaded = gVar9;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<CallRecorder>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<CallRecorder> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "CallRecorder";
    }

    @Override // io.objectbox.c
    public final Class<CallRecorder> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 10;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "CallRecorder";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<CallRecorder> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<CallRecorder> getIdProperty() {
        return __ID_PROPERTY;
    }
}
