package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.annotation.TargetApi;
import android.view.MenuItem;
import android.widget.PopupMenu;
@TargetApi(11)
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.MessagesFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$f.class */
public class MessagesFragment$f implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ MessagesFragment f3059a;

    public MessagesFragment$f(MessagesFragment messagesFragment) {
        this.f3059a = messagesFragment;
    }

    public /* synthetic */ MessagesFragment$f(MessagesFragment messagesFragment, MessagesFragment$a messagesFragment$a) {
        this(messagesFragment);
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f3059a.onContextItemSelected(menuItem);
    }
}
