package com.callapp.contacts.widget.floatingwidget.ui;

import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager.class */
public interface ChatHeadManager<T extends Serializable> {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener.class */
    public interface OnItemSelectedListener<T> {
        boolean a(ChatHead chatHead);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$_CC.class */
    public final /* synthetic */ class _CC {
        public static boolean $default$i(ChatHeadManager chatHeadManager) {
            return false;
        }
    }

    double a(float f, float f2);

    void a(double d2, double d3);

    void a(int i, int i2);

    void a(ChatHeadCloseButton chatHeadCloseButton);

    void a(Class<? extends ChatHeadArrangement> cls, Bundle bundle);

    boolean a(T t);

    double b(float f, float f2);

    int b(int i);

    boolean b(ChatHead<T> chatHead);

    int[] c(ChatHead chatHead);

    int[] d(ChatHead chatHead);

    void e();

    void f();

    void g();

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

    void h();

    boolean i();

    boolean j();

    void setViewAdapter(ChatHeadViewAdapter chatHeadViewAdapter);
}
