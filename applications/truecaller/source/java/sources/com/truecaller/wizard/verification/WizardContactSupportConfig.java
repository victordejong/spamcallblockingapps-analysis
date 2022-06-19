package com.truecaller.wizard.verification;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t\b\u0003\u0018��2\u00020\u0001B+\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bR#\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R#\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/truecaller/wizard/verification/WizardContactSupportConfig;", "", "", "", "countries", "Ljava/util/List;", "getCountries", "()Ljava/util/List;", "messages", "getMessages", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/verification/WizardContactSupportConfig.class */
public final class WizardContactSupportConfig {
    private final List<String> countries;
    private final List<String> messages;

    public WizardContactSupportConfig(List<String> list, List<String> list2) {
        this.countries = list;
        this.messages = list2;
    }

    public final List<String> getCountries() {
        return this.countries;
    }

    public final List<String> getMessages() {
        return this.messages;
    }
}
