package org.simpleframework.xml.transform;

import java.util.Currency;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/CurrencyTransform.class */
class CurrencyTransform implements Transform<Currency> {
    @Override // org.simpleframework.xml.transform.Transform
    public Currency read(String str) {
        return Currency.getInstance(str);
    }

    public String write(Currency currency) {
        return currency.toString();
    }
}
