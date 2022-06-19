package com.callapp.contacts.widget.referandearn;

import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.manager.task.Task;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m4298d2 = {"com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4", "Lcom/callapp/contacts/manager/task/Task;", "doTask", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4.class */
public final class SearchAndSelectFragment$initView$4 extends Task {

    /* renamed from: a */
    final /* synthetic */ SearchAndSelectFragment f29428a;

    public SearchAndSelectFragment$initView$4(SearchAndSelectFragment searchAndSelectFragment) {
        this.f29428a = searchAndSelectFragment;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public final void doTask() {
        synchronized (this.f29428a.f29421i) {
            Pair<List<BadgeMemoryContactItem>, List<BadgeMemoryContactItem>> suggestionsAndContacts = this.f29428a.getSuggestionsAndContacts();
            if (suggestionsAndContacts != null) {
                List list = (List) suggestionsAndContacts.first;
                if (list != null) {
                    this.f29428a.f29420h = list;
                }
                SearchAndSelectFragment searchAndSelectFragment = this.f29428a;
                Object second = suggestionsAndContacts.second;
                C18524p.m3843b(second, "second");
                searchAndSelectFragment.setFilterableVerticalItems((List) second);
            }
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.referandearn.SearchAndSelectFragment$initView$4$doTask$2
            @Override // java.lang.Runnable
            public final void run() {
                SearchAndSelectFragment$initView$4.this.f29428a.getFilter().filter("");
                SearchAndSelectFragment$initView$4.this.f29428a.getProgressBar().setVisibility(8);
            }
        });
    }
}
