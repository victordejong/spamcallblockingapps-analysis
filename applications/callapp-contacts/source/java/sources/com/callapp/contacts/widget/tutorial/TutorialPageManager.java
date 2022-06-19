package com.callapp.contacts.widget.tutorial;

import com.callapp.contacts.workers.CompleteTutorialReminderWorker;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPageManager.class */
public class TutorialPageManager {

    /* renamed from: a */
    final TutorialPagesProvider f29484a;

    /* renamed from: b */
    private List<TutorialPageModel> f29485b = new LinkedList();

    /* renamed from: c */
    private int f29486c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider.class */
    public interface TutorialPagesProvider {
        /* renamed from: a */
        int mo26264a(String str);

        /* renamed from: a */
        void mo26263a(List<TutorialPageModel> list);

        /* renamed from: a */
        boolean mo26268a();

        /* renamed from: b */
        boolean mo26262b();

        BeginningTutorialPageModel getBeginningTutorialPageModel();

        int getCapacity();

        String getCurrentPageName();

        TutorialPageModel getEndingTutorialPageModel();

        List<TutorialPageModel> getTutorialPages();

        void setCurrentPagePosition(String str);
    }

    public TutorialPageManager(TutorialPagesProvider tutorialPagesProvider) {
        this.f29486c = tutorialPagesProvider.getCapacity();
        this.f29484a = tutorialPagesProvider;
        this.f29485b.addAll(tutorialPagesProvider.getTutorialPages());
    }

    /* renamed from: b */
    public static void m26270b() {
        CompleteTutorialReminderWorker.Companion companion = CompleteTutorialReminderWorker.f29585a;
        CompleteTutorialReminderWorker.Companion.m26163a();
    }

    /* renamed from: a */
    public final int m26271a(String str) {
        return this.f29484a.mo26264a(str);
    }

    /* renamed from: a */
    public final boolean m26272a() {
        return this.f29484a.mo26262b();
    }

    public TutorialPageModel getCurrentPage() {
        return this.f29484a.getTutorialPages().get(m26271a(this.f29484a.getCurrentPageName()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<TutorialPageModel> getTutorialPages() {
        List list;
        if (this.f29484a.mo26268a()) {
            list = this.f29485b;
            this.f29484a.getBeginningTutorialPageModel().setCallAppInstructionalDrawableResources(list.subList(1, list.size() - 1));
        } else {
            list = new ArrayList(this.f29486c + 2);
            for (TutorialPageModel tutorialPageModel : this.f29485b) {
                if (tutorialPageModel.m26269a()) {
                    list.add(tutorialPageModel);
                    if (list.size() >= this.f29486c) {
                        break;
                    }
                }
            }
            BeginningTutorialPageModel beginningTutorialPageModel = this.f29484a.getBeginningTutorialPageModel();
            beginningTutorialPageModel.setCallAppInstructionalDrawableResources(list);
            list.add(0, beginningTutorialPageModel);
            list.add(this.f29484a.getEndingTutorialPageModel());
        }
        return list;
    }

    public void setCurrentPage(String str) {
        this.f29484a.setCurrentPagePosition(str);
    }
}
