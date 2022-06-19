package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallRecorderCursor;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRecorder_.class */
public final class CallRecorder_ implements AbstractC17957c<CallRecorder> {
    public static final C17978g<CallRecorder>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CallRecorder";
    public static final int __ENTITY_ID = 10;
    public static final String __ENTITY_NAME = "CallRecorder";
    public static final C17978g<CallRecorder> __ID_PROPERTY;
    public static final CallRecorder_ __INSTANCE;
    public static final C17978g<CallRecorder> callType;
    public static final C17978g<CallRecorder> date;
    public static final C17978g<CallRecorder> duration;
    public static final C17978g<CallRecorder> fileName;

    /* renamed from: id */
    public static final C17978g<CallRecorder> f26760id;
    public static final C17978g<CallRecorder> isUploaded;
    public static final C17978g<CallRecorder> note;
    public static final C17978g<CallRecorder> phoneOrIdKey;
    public static final C17978g<CallRecorder> starred;
    public static final Class<CallRecorder> __ENTITY_CLASS = CallRecorder.class;
    public static final AbstractC17949b<CallRecorder> __CURSOR_FACTORY = new CallRecorderCursor.Factory();
    static final CallRecorderIdGetter __ID_GETTER = new CallRecorderIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRecorder_$CallRecorderIdGetter.class */
    public static final class CallRecorderIdGetter implements AbstractC17950c<CallRecorder> {
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
        C17978g<CallRecorder> c17978g = new C17978g<>(callRecorder_, 0, 1, Long.class, "id", true, "id");
        f26760id = c17978g;
        C17978g<CallRecorder> c17978g2 = new C17978g<>(callRecorder_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<CallRecorder> c17978g3 = new C17978g<>(callRecorder_, 2, 3, Long.TYPE, "date");
        date = c17978g3;
        C17978g<CallRecorder> c17978g4 = new C17978g<>(callRecorder_, 3, 4, String.class, "fileName");
        fileName = c17978g4;
        C17978g<CallRecorder> c17978g5 = new C17978g<>(callRecorder_, 4, 5, Long.TYPE, VastIconXmlManager.DURATION);
        duration = c17978g5;
        C17978g<CallRecorder> c17978g6 = new C17978g<>(callRecorder_, 5, 6, Boolean.TYPE, "starred");
        starred = c17978g6;
        C17978g<CallRecorder> c17978g7 = new C17978g<>(callRecorder_, 6, 7, String.class, "note");
        note = c17978g7;
        C17978g<CallRecorder> c17978g8 = new C17978g<>(callRecorder_, 7, 8, Integer.TYPE, "callType");
        callType = c17978g8;
        C17978g<CallRecorder> c17978g9 = new C17978g<>(callRecorder_, 8, 9, Boolean.TYPE, "isUploaded");
        isUploaded = c17978g9;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7, c17978g8, c17978g9};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<CallRecorder>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<CallRecorder> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "CallRecorder";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<CallRecorder> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 10;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "CallRecorder";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<CallRecorder> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<CallRecorder> getIdProperty() {
        return __ID_PROPERTY;
    }
}
