package com.google.api.client.json;

import com.google.api.client.util.C8693c0;
import com.google.api.client.util.GenericData;
import java.io.IOException;
/* renamed from: com.google.api.client.json.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/b.class */
public class C8666b extends GenericData implements Cloneable {
    private AbstractC8667c jsonFactory;

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public C8666b clone() {
        return (C8666b) super.clone();
    }

    public final AbstractC8667c getFactory() {
        return this.jsonFactory;
    }

    @Override // com.google.api.client.util.GenericData
    public C8666b set(String str, Object obj) {
        return (C8666b) super.set(str, obj);
    }

    public final void setFactory(AbstractC8667c abstractC8667c) {
        this.jsonFactory = abstractC8667c;
    }

    public String toPrettyString() {
        AbstractC8667c abstractC8667c = this.jsonFactory;
        return abstractC8667c != null ? abstractC8667c.m3026i(this) : super.toString();
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public String toString() {
        AbstractC8667c abstractC8667c = this.jsonFactory;
        if (abstractC8667c != null) {
            try {
                return abstractC8667c.m3025j(this);
            } catch (IOException e) {
                throw C8693c0.m2929a(e);
            }
        }
        return super.toString();
    }
}
