package com.callapp.contacts.widget.tutorial;

import com.callapp.contacts.workers.CompleteTutorialReminderWorker;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPageManager.class */
public class TutorialPageManager {

    /* renamed from: a  reason: collision with root package name */
    final TutorialPagesProvider f16966a;

    /* renamed from: b  reason: collision with root package name */
    private List<TutorialPageModel> f16967b = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    private int f16968c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider.class */
    public interface TutorialPagesProvider {
        int a(String str);

        void a(List<TutorialPageModel> list);

        boolean a();

        boolean b();

        BeginningTutorialPageModel getBeginningTutorialPageModel();

        int getCapacity();

        String getCurrentPageName();

        TutorialPageModel getEndingTutorialPageModel();

        List<TutorialPageModel> getTutorialPages();

        void setCurrentPagePosition(String str);
    }

    public TutorialPageManager(TutorialPagesProvider tutorialPagesProvider) {
        this.f16968c = tutorialPagesProvider.getCapacity();
        this.f16966a = tutorialPagesProvider;
        this.f16967b.addAll(tutorialPagesProvider.getTutorialPages());
    }

    public static void b() {
        CompleteTutorialReminderWorker.Companion companion = CompleteTutorialReminderWorker.f17037a;
        CompleteTutorialReminderWorker.Companion.a();
    }

    public final int a(String str) {
        return this.f16966a.a(str);
    }

    public final boolean a() {
        return this.f16966a.b();
    }

    public TutorialPageModel getCurrentPage() {
        return this.f16966a.getTutorialPages().get(a(this.f16966a.getCurrentPageName()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<TutorialPageModel> getTutorialPages() {
        List<TutorialPageModel> list;
        if (this.f16966a.a()) {
            list = this.f16967b;
            this.f16966a.getBeginningTutorialPageModel().setCallAppInstructionalDrawableResources(list.subList(1, list.size() - 1));
        } else {
            list = new ArrayList<>(this.f16968c + 2);
            for (TutorialPageModel tutorialPageModel : this.f16967b) {
                if (tutorialPageModel.a()) {
                    list.add(tutorialPageModel);
                    if (list.size() >= this.f16968c) {
                        break;
                    }
                }
            }
            BeginningTutorialPageModel beginningTutorialPageModel = this.f16966a.getBeginningTutorialPageModel();
            beginningTutorialPageModel.setCallAppInstructionalDrawableResources(list);
            list.add(0, beginningTutorialPageModel);
            list.add(this.f16966a.getEndingTutorialPageModel());
        }
        return list;
    }

    public void setCurrentPage(String str) {
        this.f16966a.setCurrentPagePosition(str);
    }
}
