package com.freshchat.consumer.sdk.p057j;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.ConversationOptions;
import com.freshchat.consumer.sdk.FaqOptions;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.AbstractC1734z;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.j.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/c.class */
public abstract class AbstractC1673c<T extends AbstractC1734z> {
    private Context context;

    /* renamed from: hm */
    private T f4459hm;

    /* renamed from: hn */
    private Class f4460hn;

    /* renamed from: lE */
    private String[] f4461lE;

    /* renamed from: a */
    public static AbstractC1673c m40034a(Context context, AbstractC1734z abstractC1734z) {
        if (context != null) {
            C1730v c1730v = null;
            ArrayList arrayList = new ArrayList();
            if (abstractC1734z instanceof FaqOptions) {
                c1730v = new C1730v();
                arrayList = ((FaqOptions) abstractC1734z).getTags();
            } else if (abstractC1734z instanceof ConversationOptions) {
                c1730v = new C1718m();
                arrayList = ((ConversationOptions) abstractC1734z).getTags();
            }
            c1730v.m40033a((C1718m) abstractC1734z);
            c1730v.setContext(context);
            if (C1716k.m39902a(arrayList)) {
                c1730v.m40030d((String[]) arrayList.toArray(new String[0]));
            }
            return c1730v;
        }
        throw new IllegalArgumentException("A valid Context is required for the view launcher");
    }

    /* renamed from: d */
    private void m40030d(String[] strArr) {
        this.f4461lE = strArr;
    }

    /* renamed from: a */
    public AbstractC1673c m40032a(Class cls) {
        this.f4460hn = cls;
        return this;
    }

    /* renamed from: a */
    public void m40033a(T t) {
        this.f4459hm = t;
    }

    /* renamed from: b */
    public void m40031b(Bundle bundle) {
        try {
            if (m40028ed() == null) {
                return;
            }
            Intent intent = new Intent(this.context, m40028ed());
            if (!(this.context instanceof Activity)) {
                intent.setFlags(335544320);
            }
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            intent.putExtras(mo39806eb());
            if (C1626as.m40225f(this.f4461lE)) {
                intent.putExtra("INPUT_TAGS", this.f4461lE);
            }
            this.context.startActivity(intent);
        } catch (Exception e) {
            String string = getContext().getString(C1298R.string.freshchat_error_message_failed_to_launch_support_section);
            C1613ai.m40282e("FRESHCHAT", string, e);
            C1471i.m40837e(getContext(), string);
        }
    }

    /* renamed from: ea */
    public abstract void mo39807ea();

    /* renamed from: eb */
    public abstract Bundle mo39806eb();

    /* renamed from: ec */
    public T m40029ec() {
        return this.f4459hm;
    }

    /* renamed from: ed */
    public Class m40028ed() {
        return this.f4460hn;
    }

    public Context getContext() {
        return this.context;
    }

    public void setContext(Context context) {
        this.context = context;
    }
}
