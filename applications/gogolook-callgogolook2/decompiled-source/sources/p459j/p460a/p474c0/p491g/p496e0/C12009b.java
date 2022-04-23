package p459j.p460a.p474c0.p491g.p496e0;

import android.view.View;
import android.view.ViewGroup;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.AudioRecordView;
import p459j.p460a.p582w0.C13878a3;
/* renamed from: j.a.c0.g.e0.b */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/b.class */
public class C12009b extends AbstractC12046k implements AudioRecordView.AbstractC4824e {

    /* renamed from: i */
    public View f26901i;

    /* renamed from: j */
    public View f26902j;

    public C12009b(FragmentC12048l lVar) {
        super(lVar);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: B */
    public int mo7425B() {
        return R$string.mediapicker_audio_title;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: D */
    public int mo7423D() {
        return R$string.mediapicker_audioChooserDescription;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: G */
    public int mo7420G() {
        return 4;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: H */
    public boolean mo7419H() {
        return false;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: I */
    public boolean mo7418I() {
        return ((AudioRecordView) this.f26897a).m27010g();
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: K */
    public void mo7416K() {
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: L */
    public void mo7415L() {
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: M */
    public void mo7414M() {
        super.mo7414M();
        View view = this.f26897a;
        if (view != null) {
            ((AudioRecordView) view).m27016c();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: O */
    public void mo7412O() {
        ((AudioRecordView) this.f26897a).m27008i();
    }

    /* renamed from: P */
    public final void m7552P() {
        m7404a(new String[]{"android.permission.RECORD_AUDIO"}, 4);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public int mo7411a(int i) {
        return R$drawable.ic_media_picker_tab_audio;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public void mo7410a(int i, String[] strArr, int[] iArr) {
        super.mo7410a(i, strArr, iArr);
        if (i == 4) {
            int i2 = 0;
            boolean z = iArr[0] == 0;
            this.f26901i.setVisibility(z ? 0 : 8);
            View view = this.f26902j;
            if (z) {
                i2 = 8;
            }
            view.setVisibility(i2);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.AudioRecordView.AbstractC4824e
    /* renamed from: a */
    public void mo7551a(MessagePartData messagePartData) {
        this.f26990c.m7380a(messagePartData, true);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public void mo7405a(boolean z, int i) {
        super.mo7405a(z, i);
        if (z && !C13878a3.m3199s()) {
            m7552P();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12006e
    /* renamed from: b */
    public View mo7182b(ViewGroup viewGroup) {
        AudioRecordView audioRecordView = (AudioRecordView) m7421F().inflate(R$layout.mediapicker_audio_chooser, viewGroup, false);
        audioRecordView.m27023a(this);
        audioRecordView.m27018b(this.f26990c.m7358y());
        this.f26901i = audioRecordView.findViewById(R$id.mediapicker_enabled);
        this.f26902j = audioRecordView.findViewById(R$id.missing_permission_view);
        return audioRecordView;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: c */
    public void mo7402c(int i) {
        View view = this.f26897a;
        if (view != null) {
            ((AudioRecordView) view).m27018b(i);
        }
    }
}
