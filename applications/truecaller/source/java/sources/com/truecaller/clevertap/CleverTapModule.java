package com.truecaller.clevertap;

import javax.inject.Singleton;
import kotlin.Metadata;
import p193e.p194a.p793g3.AbstractC14413b;
import p193e.p194a.p793g3.C14415c;
import p193e.p194a.p793g3.C14416d;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\ba\u0018�� \u000b2\u00020\u0001:\u0001\fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0007H'¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/truecaller/clevertap/CleverTapModule;", "", "Le/a/g3/d;", "impl", "Lcom/truecaller/clevertap/CleverTapManager;", "bindCleverTapManager", "(Le/a/g3/d;)Lcom/truecaller/clevertap/CleverTapManager;", "Le/a/g3/c;", "Le/a/g3/b;", "bindCleverTapAPIWrapper", "(Le/a/g3/c;)Le/a/g3/b;", "Companion", "a", "clevertap_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/clevertap/CleverTapModule.class */
public interface CleverTapModule {
    public static final C3645a Companion = C3645a.f10829a;

    /* renamed from: com.truecaller.clevertap.CleverTapModule$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/clevertap/CleverTapModule$a.class */
    public static final class C3645a {

        /* renamed from: a */
        public static final /* synthetic */ C3645a f10829a = new C3645a();
    }

    @Singleton
    AbstractC14413b bindCleverTapAPIWrapper(C14415c c14415c);

    @Singleton
    CleverTapManager bindCleverTapManager(C14416d c14416d);
}
