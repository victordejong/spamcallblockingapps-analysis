package com.callapp.contacts.widget.floatingwidget.p240ui;

import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import java.io.Serializable;
import java.util.List;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager.class */
public interface ChatHeadManager<T extends Serializable> {

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager$OnItemSelectedListener */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener.class */
    public interface OnItemSelectedListener<T> {
        /* renamed from: a */
        boolean mo26437a(ChatHead chatHead);
    }

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager$_CC */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$_CC.class */
    public final /* synthetic */ class _CC {
        public static boolean $default$i(ChatHeadManager chatHeadManager) {
            return false;
        }
    }

    /* renamed from: a */
    double mo26426a(float f, float f2);

    /* renamed from: a */
    void mo26427a(double d, double d2);

    /* renamed from: a */
    void mo26425a(int i, int i2);

    /* renamed from: a */
    void mo26422a(ChatHeadCloseButton chatHeadCloseButton);

    /* renamed from: a */
    void mo26416a(Class<? extends ChatHeadArrangement> cls, Bundle bundle);

    /* renamed from: a */
    boolean mo26419a(T t);

    /* renamed from: b */
    double mo26415b(float f, float f2);

    /* renamed from: b */
    int mo26414b(int i);

    /* renamed from: b */
    boolean mo26413b(ChatHead<T> chatHead);

    /* renamed from: c */
    int[] mo26410c(ChatHead chatHead);

    /* renamed from: d */
    int[] mo26408d(ChatHead chatHead);

    /* renamed from: e */
    void mo26407e();

    /* renamed from: f */
    void mo26406f();

    /* renamed from: g */
    void mo26405g();

    ChatHeadArrangement getActiveArrangement();

    ChatHeadContainer getChatHeadContainer();

    List<ChatHead<T>> getChatHeads();

    ChatHeadConfig getConfig();

    Context getContext();

    DisplayMetrics getDisplayMetrics();

    ChatHeadCloseButton getLeftCloseButton();

    int getMaxHeight();

    int getMaxWidth();

    ChatHeadCloseButton getRightCloseButton();

    /* renamed from: h */
    void mo26404h();

    /* renamed from: i */
    boolean mo26403i();

    /* renamed from: j */
    boolean mo26435j();

    void setViewAdapter(ChatHeadViewAdapter chatHeadViewAdapter);
}
