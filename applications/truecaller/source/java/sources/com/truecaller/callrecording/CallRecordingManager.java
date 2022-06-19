package com.truecaller.callrecording;

import android.content.Context;
import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.Contact;
import kotlin.Metadata;
import p193e.p194a.p982k0.AbstractC16312e;
import p193e.p194a.p982k0.AbstractC16315h;
import p193e.p194a.p982k0.p983a.AbstractC16278e;
import p193e.p194a.p982k0.p996o.AbstractC16441a;
import q3.a.x2.i1;
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/CallRecordingManager.class */
public interface CallRecordingManager extends AbstractC16278e, AbstractC16441a {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;", "", "", "mediaRecorderAudioSource", "I", "getMediaRecorderAudioSource", "()I", "<init>", "(Ljava/lang/String;II)V", "MIC", "VOICE_RECOGNITION", "SYSTEM_DEFAULT", "VOICE_COMMUNICATION", "VOICE_CALL", "callrecorder_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/CallRecordingManager$AudioSource.class */
    public enum AudioSource {
        MIC(1),
        VOICE_RECOGNITION(6),
        SYSTEM_DEFAULT(0),
        VOICE_COMMUNICATION(7),
        VOICE_CALL(4);
        
        private final int mediaRecorderAudioSource;

        AudioSource(int i) {
            this.mediaRecorderAudioSource = i;
        }

        public final int getMediaRecorderAudioSource() {
            return this.mediaRecorderAudioSource;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/callrecording/CallRecordingManager$Configuration;", "", "<init>", "(Ljava/lang/String;I)V", "DEFAULT", "SDK_MEDIA_RECORDER", "callrecorder_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/CallRecordingManager$Configuration.class */
    public enum Configuration {
        DEFAULT,
        SDK_MEDIA_RECORDER
    }

    /* renamed from: A */
    void mo17607A(AbstractC16312e abstractC16312e);

    /* renamed from: C */
    void mo17605C(CallRecording callRecording, RecordingAnalyticsSource recordingAnalyticsSource);

    /* renamed from: D */
    void mo17604D(Contact contact);

    /* renamed from: E */
    AbstractC16312e mo17603E();

    /* renamed from: F */
    Configuration mo17602F();

    /* renamed from: G */
    void mo17601G();

    /* renamed from: a */
    void mo17596a();

    /* renamed from: b */
    boolean mo17595b();

    /* renamed from: e */
    void mo17592e(String str, RecordingAnalyticsSource recordingAnalyticsSource);

    i1<AbstractC16315h> getState();

    /* renamed from: h */
    boolean mo17590h();

    /* renamed from: j */
    void mo17588j(Context context, CallRecordingOnBoardingLaunchContext callRecordingOnBoardingLaunchContext, boolean z);

    /* renamed from: l */
    void mo17586l(boolean z);

    /* renamed from: m */
    boolean mo17585m();

    /* renamed from: p */
    boolean mo17582p(String str);

    /* renamed from: q */
    boolean mo17581q();

    /* renamed from: r */
    void mo17580r(String str, RecordingAnalyticsSource recordingAnalyticsSource);

    /* renamed from: w */
    String mo17576w();
}
