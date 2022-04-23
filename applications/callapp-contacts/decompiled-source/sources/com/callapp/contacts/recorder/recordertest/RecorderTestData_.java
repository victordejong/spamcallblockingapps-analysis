package com.callapp.contacts.recorder.recordertest;

import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.CallRecorder_;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestDataCursor;
import io.objectbox.b.b;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestData_.class */
public final class RecorderTestData_ implements c<RecorderTestData> {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<RecorderTestData> f15701a = RecorderTestData.class;

    /* renamed from: b  reason: collision with root package name */
    public static final b<RecorderTestData> f15702b = new RecorderTestDataCursor.Factory();

    /* renamed from: c  reason: collision with root package name */
    static final RecorderTestDataIdGetter f15703c = new RecorderTestDataIdGetter();

    /* renamed from: d  reason: collision with root package name */
    public static final RecorderTestData_ f15704d;
    public static final g<RecorderTestData> e;
    public static final g<RecorderTestData> f;
    public static final g<RecorderTestData> g;
    public static final g<RecorderTestData> h;
    public static final g<RecorderTestData> i;
    public static final g<RecorderTestData> j;
    public static final g<RecorderTestData> k;
    public static final g<RecorderTestData> l;
    public static final g<RecorderTestData> m;
    public static final g<RecorderTestData> n;
    public static final g<RecorderTestData>[] o;
    public static final g<RecorderTestData> p;
    public static final io.objectbox.relation.b<RecorderTestData, CallRecorder> q;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestData_$RecorderTestDataIdGetter.class */
    static final class RecorderTestDataIdGetter implements io.objectbox.b.c<RecorderTestData> {
        RecorderTestDataIdGetter() {
        }

        public static long a(RecorderTestData recorderTestData) {
            return recorderTestData.getId();
        }

        @Override // io.objectbox.b.c
        public final /* bridge */ /* synthetic */ long getId(RecorderTestData recorderTestData) {
            return recorderTestData.getId();
        }
    }

    static {
        RecorderTestData_ recorderTestData_ = new RecorderTestData_();
        f15704d = recorderTestData_;
        g<RecorderTestData> gVar = new g<>(recorderTestData_, 0, 1, Long.TYPE, "id", true, "id");
        e = gVar;
        g<RecorderTestData> gVar2 = new g<>(recorderTestData_, 1, 2, Integer.TYPE, "audioMethod", false, "audioMethod", RecordConfiguration.MethodConverter.class, RecordConfiguration.METHOD.class);
        f = gVar2;
        g<RecorderTestData> gVar3 = new g<>(recorderTestData_, 2, 3, Integer.TYPE, "audioSource", false, "audioSource", RecordConfiguration.AudioSourceConverter.class, RecordConfiguration.AUDIO_SOURCE.class);
        g = gVar3;
        g<RecorderTestData> gVar4 = new g<>(recorderTestData_, 3, 4, Integer.TYPE, "outputFormat", false, "outputFormat", RecordConfiguration.FileFormatConverter.class, RecordConfiguration.FILE_FORMAT.class);
        h = gVar4;
        g<RecorderTestData> gVar5 = new g<>(recorderTestData_, 4, 5, Integer.TYPE, "testStatus", false, "testStatus", RecordConfiguration.RecorderStatusConverter.class, RecordConfiguration.STATUS.class);
        i = gVar5;
        g<RecorderTestData> gVar6 = new g<>(recorderTestData_, 5, 6, Integer.TYPE, "testPriority");
        j = gVar6;
        g<RecorderTestData> gVar7 = new g<>(recorderTestData_, 6, 7, Long.TYPE, "recordTime");
        k = gVar7;
        g<RecorderTestData> gVar8 = new g<>(recorderTestData_, 7, 8, Integer.class, "volumeLevel");
        l = gVar8;
        g<RecorderTestData> gVar9 = new g<>(recorderTestData_, 8, 9, Boolean.TYPE, "forceInCommunicationMode");
        m = gVar9;
        g<RecorderTestData> gVar10 = new g<>(recorderTestData_, 9, 10, Long.TYPE, "callRecorderId", true);
        n = gVar10;
        o = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10};
        p = gVar;
        q = new io.objectbox.relation.b<>(recorderTestData_, CallRecorder_.__INSTANCE, gVar10, new h<RecorderTestData>() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestData_.1
            @Override // io.objectbox.b.h
            public final /* bridge */ /* synthetic */ ToOne getToOne(RecorderTestData recorderTestData) {
                return recorderTestData.callRecorder;
            }
        });
    }

    @Override // io.objectbox.c
    public final g<RecorderTestData>[] getAllProperties() {
        return o;
    }

    @Override // io.objectbox.c
    public final b<RecorderTestData> getCursorFactory() {
        return f15702b;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "RecorderTestData";
    }

    @Override // io.objectbox.c
    public final Class<RecorderTestData> getEntityClass() {
        return f15701a;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 44;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "RecorderTestData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<RecorderTestData> getIdGetter() {
        return f15703c;
    }
}
