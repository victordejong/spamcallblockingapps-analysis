package com.truecaller.dynamicfeaturesupport;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u001d\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;", "", "", "moduleName", "Ljava/lang/String;", "getModuleName", "()Ljava/lang/String;", "graphProviderClassName", "getGraphProviderClassName", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "CALLHERO_ASSISTANT", "BANUBA", "dynamic-features-support_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/dynamicfeaturesupport/DynamicFeature.class */
public enum DynamicFeature {
    CALLHERO_ASSISTANT("callhero_assistant", "com.truecaller.callhero_assistant.CallAssistantGraphProvider"),
    BANUBA("banuba", null, 2, null);
    
    private final String graphProviderClassName;
    private final String moduleName;

    DynamicFeature(String str, String str2) {
        this.moduleName = str;
        this.graphProviderClassName = str2;
    }

    /* synthetic */ DynamicFeature(String str, String str2, int i, f fVar) {
        this(str, (i & 2) != 0 ? null : str2);
    }

    public final String getGraphProviderClassName() {
        return this.graphProviderClassName;
    }

    public final String getModuleName() {
        return this.moduleName;
    }
}
