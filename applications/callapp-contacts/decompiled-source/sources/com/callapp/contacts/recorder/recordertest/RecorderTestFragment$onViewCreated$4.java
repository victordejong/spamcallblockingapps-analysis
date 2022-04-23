package com.callapp.contacts.recorder.recordertest;

import androidx.lifecycle.aa;
import androidx.lifecycle.ab;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.RecorderTestCard;
import com.callapp.contacts.activity.contact.cards.RecorderTestHintCard;
import com.callapp.contacts.manager.task.Task;
import com.explorestack.protobuf.openrtb.LossReason;
import io.objectbox.a;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4", "Lcom/callapp/contacts/manager/task/Task;", "doTask", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4.class */
public final class RecorderTestFragment$onViewCreated$4 extends Task {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ RecorderTestFragment f15720a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecorderTestFragment$onViewCreated$4(RecorderTestFragment recorderTestFragment) {
        this.f15720a = recorderTestFragment;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public final void doTask() {
        List<RecorderTestData> list;
        if (this.f15720a.isAdded()) {
            this.f15720a.getPresenterManager().a(this.f15720a.getPresenterContainer());
            new RecorderTestHintCard(this.f15720a.getPresenterContainer(), LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE);
            list = this.f15720a.e;
            for (RecorderTestData recorderTestData : list) {
                new RecorderTestCard(this.f15720a.getPresenterContainer(), recorderTestData);
            }
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestFragment$onViewCreated$4$doTask$1
                @Override // java.lang.Runnable
                public final void run() {
                    RecorderTestFragment recorderTestFragment = RecorderTestFragment$onViewCreated$4.this.f15720a;
                    aa a2 = new ab(RecorderTestFragment$onViewCreated$4.this.f15720a).a(RecorderTestViewModel.class);
                    p.b(a2, "ViewModelProvider(this@R…estViewModel::class.java)");
                    recorderTestFragment.f15705d = (RecorderTestViewModel) a2;
                    RecorderTestViewModel c2 = RecorderTestFragment.c(RecorderTestFragment$onViewCreated$4.this.f15720a);
                    a<RecorderTestData> recorderTestDataBox = RecorderTestDataManager.f15699a.getRecorderTestBox();
                    p.d(recorderTestDataBox, "recorderTestDataBox");
                    if (c2.f15739a == null) {
                        c2.f15739a = new io.objectbox.a.a<>(recorderTestDataBox.e().a());
                    }
                    io.objectbox.a.a<RecorderTestData> aVar = c2.f15739a;
                    Objects.requireNonNull(aVar, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.recorder.recordertest.RecorderTestData>");
                    aVar.a(RecorderTestFragment$onViewCreated$4.this.f15720a.getViewLifecycleOwner(), RecorderTestFragment$onViewCreated$4.this.f15720a);
                }
            });
        }
    }
}
