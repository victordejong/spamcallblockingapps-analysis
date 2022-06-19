package com.callapp.contacts.recorder.recordertest;

import androidx.lifecycle.AbstractC1231aa;
import androidx.lifecycle.C1232ab;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.RecorderTestCard;
import com.callapp.contacts.activity.contact.cards.RecorderTestHintCard;
import com.callapp.contacts.manager.task.Task;
import com.explorestack.protobuf.openrtb.LossReason;
import io.objectbox.C17944a;
import io.objectbox.p501a.C17945a;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m4298d2 = {"com/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4", "Lcom/callapp/contacts/manager/task/Task;", "doTask", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4.class */
public final class RecorderTestFragment$onViewCreated$4 extends Task {

    /* renamed from: a */
    final /* synthetic */ RecorderTestFragment f27519a;

    public RecorderTestFragment$onViewCreated$4(RecorderTestFragment recorderTestFragment) {
        this.f27519a = recorderTestFragment;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public final void doTask() {
        List<RecorderTestData> list;
        if (this.f27519a.isAdded()) {
            this.f27519a.getPresenterManager().m30927a(this.f27519a.getPresenterContainer());
            new RecorderTestHintCard(this.f27519a.getPresenterContainer(), LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE);
            list = this.f27519a.f27495e;
            for (RecorderTestData recorderTestData : list) {
                new RecorderTestCard(this.f27519a.getPresenterContainer(), recorderTestData);
            }
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onViewCreated$4$doTask$1
                @Override // java.lang.Runnable
                public final void run() {
                    RecorderTestFragment recorderTestFragment = RecorderTestFragment$onViewCreated$4.this.f27519a;
                    AbstractC1231aa m43312a = new C1232ab(RecorderTestFragment$onViewCreated$4.this.f27519a).m43312a(RecorderTestViewModel.class);
                    C18524p.m3843b(m43312a, "ViewModelProvider(this@R…estViewModel::class.java)");
                    recorderTestFragment.f27494d = (RecorderTestViewModel) m43312a;
                    RecorderTestViewModel m27815c = RecorderTestFragment.m27815c(RecorderTestFragment$onViewCreated$4.this.f27519a);
                    C17944a<RecorderTestData> recorderTestDataBox = RecorderTestDataManager.f27475a.getRecorderTestBox();
                    C18524p.m3840d(recorderTestDataBox, "recorderTestDataBox");
                    if (m27815c.f27546a == null) {
                        m27815c.f27546a = new C17945a<>(recorderTestDataBox.m4700e().m4618a());
                    }
                    C17945a<RecorderTestData> c17945a = m27815c.f27546a;
                    Objects.requireNonNull(c17945a, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.recorder.recordertest.RecorderTestData>");
                    c17945a.m43334a(RecorderTestFragment$onViewCreated$4.this.f27519a.getViewLifecycleOwner(), RecorderTestFragment$onViewCreated$4.this.f27519a);
                }
            });
        }
    }
}
