package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/SchemaConnector.class */
public class SchemaConnector implements FieldDescriptor.SchemaProxy {

    /* renamed from: a */
    private final RealmSchema f19975a;

    public SchemaConnector(RealmSchema realmSchema) {
        this.f19975a = realmSchema;
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    /* renamed from: a */
    public ColumnInfo mo2568a(String str) {
        return this.f19975a.m2853h(str);
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    /* renamed from: b */
    public boolean mo2567b() {
        return this.f19975a.m2848m();
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    /* renamed from: c */
    public long mo2566c(String str) {
        return this.f19975a.m2849l(str).getNativePtr();
    }
}
