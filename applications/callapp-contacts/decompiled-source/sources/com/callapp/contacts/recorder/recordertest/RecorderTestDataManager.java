package com.callapp.contacts.recorder.recordertest;

import android.os.Build;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.explorestack.protobuf.openrtb.LossReason;
import io.objectbox.a;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;", "", "()V", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestDataManager.class */
public final class RecorderTestDataManager {

    /* renamed from: a */
    public static final Companion f15699a = new Companion(null);

    /* renamed from: b */
    private static final a<RecorderTestData> f15700b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\tJ\b\u0010\r\u001a\u00020\u000bH\u0007J\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u000bJ\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\tJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\"\u0010\u001c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00122\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0018R:\u0010\u0003\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u00048\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0007\u0010\u0002¨\u0006\u001f"}, d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;", "", "()V", "boxRecordingTextData", "Lio/objectbox/Box;", "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "kotlin.jvm.PlatformType", "getBoxRecordingTextData$annotations", "deleteRecorderTest", "", "testId", "", "fillRecordConfiguration", "getAllDoneRecorderTests", "getAllRecordTest", "", "getFirstRecorderTestByStatus", "recorderTestStatus", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;", "getNextRecordingTest", "getRecorderTest", "id", "getRecorderTestBox", "getRecorderTestFile", "Lcom/callapp/contacts/model/objectbox/CallRecorder;", "resetProgressedTestsWhenStopped", "resetTest", "setAsApplied", "setRecordTestStatus", "status", "callRecorder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static RecorderTestData a(long j) {
            return (RecorderTestData) RecorderTestDataManager.f15700b.e().a(RecorderTestData_.e, j).a().a();
        }

        public static void a() {
            List<RecorderTestData> c2 = RecorderTestDataManager.f15700b.e().a(RecorderTestData_.i, RecordConfiguration.STATUS.STOPPED.getValue()).c().a(RecorderTestData_.i, RecordConfiguration.STATUS.STARTED.getValue()).a().c();
            p.b(c2, "boxRecordingTextData.que….toLong()).build().find()");
            for (RecorderTestData recorderTestData : c2) {
                if (recorderTestData != null) {
                    recorderTestData.setTestStatus(RecordConfiguration.STATUS.IDLE);
                    RecorderTestDataManager.f15700b.a((a) recorderTestData);
                }
            }
        }

        public static void a(long j, RecordConfiguration.STATUS status, CallRecorder callRecorder) {
            p.d(status, "status");
            RecorderTestData recorderTestData = (RecorderTestData) RecorderTestDataManager.f15700b.e().a(RecorderTestData_.e, j).a().a();
            if (recorderTestData != null) {
                recorderTestData.setTestStatus(status);
                if (callRecorder != null) {
                    recorderTestData.getCallRecorder().a((ToOne<CallRecorder>) callRecorder);
                }
                RecorderTestDataManager.f15700b.a((a) recorderTestData);
            }
        }

        public static CallRecorder b(long j) {
            ToOne<CallRecorder> callRecorder;
            RecorderTestData recorderTestData = (RecorderTestData) RecorderTestDataManager.f15700b.e().a(RecorderTestData_.e, j).a().a();
            if (recorderTestData == null || (callRecorder = recorderTestData.getCallRecorder()) == null) {
                return null;
            }
            return callRecorder.a();
        }

        public static void b() {
            List<RecorderTestData> c2 = RecorderTestDataManager.f15700b.e().a().c();
            p.b(c2, "boxRecordingTextData.query().build().find()");
            for (RecorderTestData recorderTestData : c2) {
                recorderTestData.setTestStatus(RecordConfiguration.STATUS.IDLE);
                recorderTestData.getCallRecorder().a((ToOne<CallRecorder>) null);
                RecorderTestDataManager.f15700b.a((a) recorderTestData);
            }
            Prefs.gM.set(null);
            CallRecorderManager.get();
            CallRecorderManager.e();
        }

        public static void c() {
            int i;
            int i2;
            int i3;
            RecorderTestDataManager.f15700b.d();
            ArrayList arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT >= 28) {
                arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION, RecordConfiguration.FILE_FORMAT.AMR, null, 1, 0L, null, true, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
                i = 2;
            } else {
                i = 1;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_CALL, RecordConfiguration.FILE_FORMAT.AMR, null, i, 0L, null, true, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
                i++;
            }
            int i4 = i + 1;
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION, RecordConfiguration.FILE_FORMAT.AMR, null, i, 0L, null, false, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
            int i5 = i4 + 1;
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_CALL, RecordConfiguration.FILE_FORMAT.AMR, null, i4, 0L, null, false, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
            if (Build.VERSION.SDK_INT >= 28) {
                arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.MIC, RecordConfiguration.FILE_FORMAT.AMR, null, i5, 0L, null, true, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
                i5++;
            }
            int i6 = i5 + 1;
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.MIC, RecordConfiguration.FILE_FORMAT.AMR, null, i5, 0L, null, false, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
            if (Build.VERSION.SDK_INT >= 28) {
                arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_COMMUNICATION, RecordConfiguration.FILE_FORMAT.AMR, null, i6, 0L, null, true, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
                i2 = i6 + 1;
            } else {
                i2 = i6;
            }
            int i7 = i2 + 1;
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_COMMUNICATION, RecordConfiguration.FILE_FORMAT.AMR, null, i2, 0L, null, false, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
            if (Build.VERSION.SDK_INT >= 28) {
                arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.DEFAULT, RecordConfiguration.FILE_FORMAT.AMR, null, i7, 0L, null, true, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
                i3 = i7 + 1;
            } else {
                i3 = i7;
            }
            int i8 = i3 + 1;
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.DEFAULT, RecordConfiguration.FILE_FORMAT.AMR, null, i3, 0L, null, false, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, null));
            int i9 = i8 + 1;
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NON_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION, RecordConfiguration.FILE_FORMAT.AMR, null, i8, 0L, null, false, 465, null));
            int i10 = i9 + 1;
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NON_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_COMMUNICATION, RecordConfiguration.FILE_FORMAT.AMR, null, i9, 0L, null, false, 465, null));
            int i11 = i10 + 1;
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NON_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_CALL, RecordConfiguration.FILE_FORMAT.AMR, null, i10, 0L, null, false, 465, null));
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NON_NATIVE, RecordConfiguration.AUDIO_SOURCE.MIC, RecordConfiguration.FILE_FORMAT.AMR, null, i11, 0L, null, false, 465, null));
            arrayList.add(new RecorderTestData(0L, RecordConfiguration.METHOD.METHOD_NON_NATIVE, RecordConfiguration.AUDIO_SOURCE.DEFAULT, RecordConfiguration.FILE_FORMAT.AMR, null, i11 + 1, 0L, null, false, 465, null));
            RecorderTestDataManager.f15700b.a((Collection) arrayList);
        }

        public final long getAllDoneRecorderTests() {
            return RecorderTestDataManager.f15700b.e().a(RecorderTestData_.i, RecordConfiguration.STATUS.DONE.getValue()).a().e();
        }

        public final List<RecorderTestData> getAllRecordTest() {
            List<RecorderTestData> c2 = RecorderTestDataManager.f15700b.e().b(RecorderTestData_.i, RecordConfiguration.STATUS.DELETED.getValue()).a((g) RecorderTestData_.j, 0).a().c();
            p.b(c2, "boxRecordingTextData.que…tPriority).build().find()");
            return c2;
        }

        public final RecorderTestData getNextRecordingTest() {
            return (RecorderTestData) RecorderTestDataManager.f15700b.e().a(RecorderTestData_.i, RecordConfiguration.STATUS.IDLE.getValue()).c().a(RecorderTestData_.i, RecordConfiguration.STATUS.STOPPED.getValue()).a((g) RecorderTestData_.j, 0).a().a();
        }

        public final a<RecorderTestData> getRecorderTestBox() {
            a<RecorderTestData> boxRecordingTextData = RecorderTestDataManager.f15700b;
            p.b(boxRecordingTextData, "boxRecordingTextData");
            return boxRecordingTextData;
        }

        public final void setAsApplied(long j) {
            RecorderTestData recorderTestData = (RecorderTestData) RecorderTestDataManager.f15700b.e().a(RecorderTestData_.i, RecordConfiguration.STATUS.APPLIED.getValue()).a().a();
            if (recorderTestData != null) {
                recorderTestData.setTestStatus(RecordConfiguration.STATUS.DONE);
                RecorderTestDataManager.f15700b.a((a) recorderTestData);
            }
            a(j, RecordConfiguration.STATUS.APPLIED, null);
        }
    }

    static {
        CallAppApplication callAppApplication = CallAppApplication.get();
        p.b(callAppApplication, "CallAppApplication.get()");
        f15700b = callAppApplication.getObjectBoxStore().d(RecorderTestData.class);
    }

    public static final long getAllDoneRecorderTests() {
        return f15699a.getAllDoneRecorderTests();
    }
}
