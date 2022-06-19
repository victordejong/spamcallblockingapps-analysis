package com.callapp.contacts.recorder.recordertest;

import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestDataCursor.class */
public final class RecorderTestDataCursor extends Cursor<RecorderTestData> {

    /* renamed from: a */
    private static final RecorderTestData_.RecorderTestDataIdGetter f27461a = RecorderTestData_.f27479c;

    /* renamed from: f */
    private static final int f27462f = RecorderTestData_.f27482f.f62808c;

    /* renamed from: g */
    private static final int f27463g = RecorderTestData_.f27483g.f62808c;

    /* renamed from: h */
    private static final int f27464h = RecorderTestData_.f27484h.f62808c;

    /* renamed from: i */
    private static final int f27465i = RecorderTestData_.f27485i.f62808c;

    /* renamed from: j */
    private static final int f27466j = RecorderTestData_.f27486j.f62808c;

    /* renamed from: k */
    private static final int f27467k = RecorderTestData_.f27487k.f62808c;

    /* renamed from: l */
    private static final int f27468l = RecorderTestData_.f27488l.f62808c;

    /* renamed from: m */
    private static final int f27469m = RecorderTestData_.f27489m.f62808c;

    /* renamed from: n */
    private static final int f27470n = RecorderTestData_.f27490n.f62808c;

    /* renamed from: b */
    private final RecordConfiguration.MethodConverter f27471b = new RecordConfiguration.MethodConverter();

    /* renamed from: c */
    private final RecordConfiguration.AudioSourceConverter f27472c = new RecordConfiguration.AudioSourceConverter();

    /* renamed from: d */
    private final RecordConfiguration.FileFormatConverter f27473d = new RecordConfiguration.FileFormatConverter();

    /* renamed from: e */
    private final RecordConfiguration.RecorderStatusConverter f27474e = new RecordConfiguration.RecorderStatusConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<RecorderTestData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<RecorderTestData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new RecorderTestDataCursor(transaction, j, boxStore);
        }
    }

    public RecorderTestDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, RecorderTestData_.f27480d, boxStore);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r52v0 */
    /* JADX WARN: Type inference failed for: r52v1 */
    /* JADX WARN: Type inference failed for: r52v2 */
    /* JADX WARN: Type inference failed for: r54v0 */
    /* JADX WARN: Type inference failed for: r54v1 */
    /* JADX WARN: Type inference failed for: r54v3 */
    /* JADX WARN: Type inference failed for: r54v4 */
    /* JADX WARN: Type inference failed for: r54v5 */
    /* JADX WARN: Type inference failed for: r54v6 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* renamed from: a */
    public long put(RecorderTestData recorderTestData) {
        RecordConfiguration.METHOD audioMethod;
        Integer volumeLevel;
        ToOne toOne = recorderTestData.callRecorder;
        if (toOne != null && toOne.m4567c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(CallRecorder.class);
            try {
                toOne.m4571a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        int i = recorderTestData.getAudioMethod() != null ? f27462f : 0;
        RecordConfiguration.AUDIO_SOURCE audioSource = recorderTestData.getAudioSource();
        int i2 = audioSource != null ? f27463g : 0;
        RecordConfiguration.FILE_FORMAT outputFormat = recorderTestData.getOutputFormat();
        int i3 = outputFormat != null ? f27464h : 0;
        RecordConfiguration.STATUS testStatus = recorderTestData.getTestStatus();
        int i4 = testStatus != null ? f27465i : 0;
        ?? r52 = false;
        collect313311(this.cursor, 0L, 1, 0, null, 0, null, 0, null, 0, null, f27467k, recorderTestData.getRecordTime(), f27470n, recorderTestData.callRecorder.m4568b(), i, (i != 0 ? this.f27471b.convertToDatabaseValue(audioMethod).intValue() : false) == true ? 1L : 0L, i2, i2 != 0 ? this.f27472c.convertToDatabaseValue(audioSource).intValue() : 0, i3, i3 != 0 ? this.f27473d.convertToDatabaseValue(outputFormat).intValue() : 0, i4, i4 != 0 ? this.f27474e.convertToDatabaseValue(testStatus).intValue() : 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        int i5 = recorderTestData.getVolumeLevel() != null ? f27468l : 0;
        long j = this.cursor;
        long id = recorderTestData.getId();
        int i6 = f27466j;
        long testPriority = recorderTestData.getTestPriority();
        ?? intValue = i5 != 0 ? volumeLevel.intValue() : false;
        int i7 = f27469m;
        if (recorderTestData.getForceInCommunicationMode()) {
            r52 = true;
        }
        long collect004000 = collect004000(j, id, 2, i6, testPriority, i5, intValue == true ? 1L : 0L, i7, r52 == true ? 1L : 0L, 0, 0L);
        recorderTestData.setId(collect004000);
        recorderTestData.__boxStore = this.boxStoreForEntities;
        return collect004000;
    }

    @Override // io.objectbox.Cursor
    public final /* synthetic */ long getId(RecorderTestData recorderTestData) {
        return RecorderTestData_.RecorderTestDataIdGetter.m27820a(recorderTestData);
    }
}
