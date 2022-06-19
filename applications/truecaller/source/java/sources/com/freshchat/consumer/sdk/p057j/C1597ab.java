package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.beans.fragment.AudioFragment;
import com.freshchat.consumer.sdk.beans.fragment.ButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.CalendarEventFragment;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.CollectionFragment;
import com.freshchat.consumer.sdk.beans.fragment.FragmentType;
import com.freshchat.consumer.sdk.beans.fragment.ImageFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.StaticTemplateFragment;
import com.freshchat.consumer.sdk.beans.fragment.TemplateType;
import com.freshchat.consumer.sdk.beans.fragment.TextFragment;
import com.freshchat.consumer.sdk.beans.fragment.UnknownFragment;
import com.freshchat.consumer.sdk.p051d.C1524b;
import e.m.d.y.n;
import e.m.e.b;
import e.m.e.c;
import e.m.e.k;
import e.m.e.l;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Type;
/* renamed from: com.freshchat.consumer.sdk.j.ab */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ab.class */
public class C1597ab {

    /* renamed from: qu */
    private static C1597ab f4331qu;

    /* renamed from: qv */
    private static C1597ab f4332qv;

    /* renamed from: hK */
    private final k f4333hK;

    /* renamed from: com.freshchat.consumer.sdk.j.ab$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ab$a.class */
    public static class C1598a implements b {
        public boolean shouldSkipClass(Class<?> cls) {
            return cls.getAnnotation(AbstractC1599b.class) != null;
        }

        public boolean shouldSkipField(c cVar) {
            return cVar.a.getAnnotation(AbstractC1599b.class) != null;
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.freshchat.consumer.sdk.j.ab$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ab$b.class */
    public @interface AbstractC1599b {
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.freshchat.consumer.sdk.j.ab$c */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ab$c.class */
    public @interface AbstractC1600c {
    }

    /* renamed from: com.freshchat.consumer.sdk.j.ab$d */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ab$d.class */
    public static class C1601d implements b {
        public boolean shouldSkipClass(Class<?> cls) {
            return cls.getAnnotation(AbstractC1600c.class) != null;
        }

        public boolean shouldSkipField(c cVar) {
            return cVar.a.getAnnotation(AbstractC1600c.class) != null;
        }
    }

    @Deprecated
    public C1597ab() {
        this(new b[0]);
    }

    @Deprecated
    public C1597ab(b... bVarArr) {
        C1524b m40655a = C1524b.m40655a(MessageFragment.class, "fragmentType");
        m40655a.m40658b(TextFragment.class, String.valueOf(FragmentType.TEXT.asInt()));
        m40655a.m40658b(AudioFragment.class, String.valueOf(FragmentType.AUDIO.asInt()));
        m40655a.m40658b(ImageFragment.class, String.valueOf(FragmentType.IMAGE.asInt()));
        m40655a.m40658b(ButtonFragment.class, String.valueOf(FragmentType.BUTTON.asInt()));
        m40655a.m40658b(CollectionFragment.class, String.valueOf(FragmentType.COLLECTION.asInt()));
        m40655a.m40658b(QuickReplyButtonFragment.class, String.valueOf(FragmentType.QUICK_REPLY_BUTTON.asInt()));
        m40655a.m40658b(CallbackButtonFragment.class, String.valueOf(FragmentType.CALLBACK_BUTTON.asInt()));
        m40655a.m40658b(CalendarEventFragment.class, String.valueOf(FragmentType.CALENDAR_EVENT.asInt()));
        m40655a.m40658b(StaticTemplateFragment.class, String.valueOf(FragmentType.STATIC_TEMPLATE.asInt()));
        m40655a.m40649b(UnknownFragment.class);
        C1524b.C1526b m40647w = m40655a.m40647w(String.valueOf(FragmentType.TEMPLATE.asInt()), "templateType");
        TemplateType[] values = TemplateType.values();
        for (int i = 0; i < 3; i++) {
            TemplateType templateType = values[i];
            m40647w.m40640a(templateType.asString(), templateType.getClz());
        }
        m40647w.m40639gY();
        l lVar = new l();
        lVar.g = "yyyy-MM-dd'T'HH:mm:ss'Z'";
        lVar.e.add(m40655a);
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                lVar.a = lVar.a.c(bVar, true, true);
            }
        }
        this.f4333hK = lVar.a();
    }

    /* renamed from: in */
    public static C1597ab m40337in() {
        if (f4331qu == null) {
            synchronized (C1597ab.class) {
                try {
                    if (f4331qu == null) {
                        f4331qu = new C1597ab();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4331qu;
    }

    /* renamed from: io */
    public static C1597ab m40336io() {
        if (f4332qv == null) {
            synchronized (C1597ab.class) {
                try {
                    if (f4332qv == null) {
                        f4332qv = new C1597ab(new C1601d());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4332qv;
    }

    public <T> T fromJson(String str, Class<T> cls) {
        return (T) n.B1(cls).cast(this.f4333hK.g(str, cls));
    }

    public <T> T fromJson(String str, Type type) {
        return (T) this.f4333hK.g(str, type);
    }

    public String toJson(Object obj) {
        return this.f4333hK.m(obj);
    }

    public String toJson(Object obj, Type type) {
        return this.f4333hK.n(obj, type);
    }
}
