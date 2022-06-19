package com.callapp.contacts.recorder.recordertest;

import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.CallRecorder_;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestData_.class */
public final class RecorderTestData_ implements AbstractC17957c<RecorderTestData> {

    /* renamed from: a */
    public static final Class<RecorderTestData> f27477a = RecorderTestData.class;

    /* renamed from: b */
    public static final AbstractC17949b<RecorderTestData> f27478b = new RecorderTestDataCursor.Factory();

    /* renamed from: c */
    static final RecorderTestDataIdGetter f27479c = new RecorderTestDataIdGetter();

    /* renamed from: d */
    public static final RecorderTestData_ f27480d;

    /* renamed from: e */
    public static final C17978g<RecorderTestData> f27481e;

    /* renamed from: f */
    public static final C17978g<RecorderTestData> f27482f;

    /* renamed from: g */
    public static final C17978g<RecorderTestData> f27483g;

    /* renamed from: h */
    public static final C17978g<RecorderTestData> f27484h;

    /* renamed from: i */
    public static final C17978g<RecorderTestData> f27485i;

    /* renamed from: j */
    public static final C17978g<RecorderTestData> f27486j;

    /* renamed from: k */
    public static final C17978g<RecorderTestData> f27487k;

    /* renamed from: l */
    public static final C17978g<RecorderTestData> f27488l;

    /* renamed from: m */
    public static final C17978g<RecorderTestData> f27489m;

    /* renamed from: n */
    public static final C17978g<RecorderTestData> f27490n;

    /* renamed from: o */
    public static final C17978g<RecorderTestData>[] f27491o;

    /* renamed from: p */
    public static final C17978g<RecorderTestData> f27492p;

    /* renamed from: q */
    public static final C17990b<RecorderTestData, CallRecorder> f27493q;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestData_$RecorderTestDataIdGetter.class */
    static final class RecorderTestDataIdGetter implements AbstractC17950c<RecorderTestData> {
        RecorderTestDataIdGetter() {
        }

        /* renamed from: a */
        public static long m27820a(RecorderTestData recorderTestData) {
            return recorderTestData.getId();
        }

        @Override // io.objectbox.p502b.AbstractC17950c
        public final /* bridge */ /* synthetic */ long getId(RecorderTestData recorderTestData) {
            return recorderTestData.getId();
        }
    }

    static {
        RecorderTestData_ recorderTestData_ = new RecorderTestData_();
        f27480d = recorderTestData_;
        C17978g<RecorderTestData> c17978g = new C17978g<>(recorderTestData_, 0, 1, Long.TYPE, "id", true, "id");
        f27481e = c17978g;
        C17978g<RecorderTestData> c17978g2 = new C17978g<>(recorderTestData_, 1, 2, Integer.TYPE, "audioMethod", false, "audioMethod", RecordConfiguration.MethodConverter.class, RecordConfiguration.METHOD.class);
        f27482f = c17978g2;
        C17978g<RecorderTestData> c17978g3 = new C17978g<>(recorderTestData_, 2, 3, Integer.TYPE, "audioSource", false, "audioSource", RecordConfiguration.AudioSourceConverter.class, RecordConfiguration.AUDIO_SOURCE.class);
        f27483g = c17978g3;
        C17978g<RecorderTestData> c17978g4 = new C17978g<>(recorderTestData_, 3, 4, Integer.TYPE, "outputFormat", false, "outputFormat", RecordConfiguration.FileFormatConverter.class, RecordConfiguration.FILE_FORMAT.class);
        f27484h = c17978g4;
        C17978g<RecorderTestData> c17978g5 = new C17978g<>(recorderTestData_, 4, 5, Integer.TYPE, "testStatus", false, "testStatus", RecordConfiguration.RecorderStatusConverter.class, RecordConfiguration.STATUS.class);
        f27485i = c17978g5;
        C17978g<RecorderTestData> c17978g6 = new C17978g<>(recorderTestData_, 5, 6, Integer.TYPE, "testPriority");
        f27486j = c17978g6;
        C17978g<RecorderTestData> c17978g7 = new C17978g<>(recorderTestData_, 6, 7, Long.TYPE, "recordTime");
        f27487k = c17978g7;
        C17978g<RecorderTestData> c17978g8 = new C17978g<>(recorderTestData_, 7, 8, Integer.class, "volumeLevel");
        f27488l = c17978g8;
        C17978g<RecorderTestData> c17978g9 = new C17978g<>(recorderTestData_, 8, 9, Boolean.TYPE, "forceInCommunicationMode");
        f27489m = c17978g9;
        C17978g<RecorderTestData> c17978g10 = new C17978g<>(recorderTestData_, 9, 10, Long.TYPE, "callRecorderId", true);
        f27490n = c17978g10;
        f27491o = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7, c17978g8, c17978g9, c17978g10};
        f27492p = c17978g;
        f27493q = new C17990b<>(recorderTestData_, CallRecorder_.__INSTANCE, c17978g10, new AbstractC17956h<RecorderTestData>() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestData_.1
            @Override // io.objectbox.p502b.AbstractC17956h
            public final /* bridge */ /* synthetic */ ToOne getToOne(RecorderTestData recorderTestData) {
                return recorderTestData.callRecorder;
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<RecorderTestData>[] getAllProperties() {
        return f27491o;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<RecorderTestData> getCursorFactory() {
        return f27478b;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "RecorderTestData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<RecorderTestData> getEntityClass() {
        return f27477a;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 44;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "RecorderTestData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<RecorderTestData> getIdGetter() {
        return f27479c;
    }
}
