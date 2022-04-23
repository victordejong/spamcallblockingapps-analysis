package io.realm;

import io.realm.RealmObjectSchema;
import io.realm.internal.OsObjectStore;
import io.realm.internal.Table;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmObjectSchema.class */
public class MutableRealmObjectSchema extends RealmObjectSchema {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableRealmObjectSchema(BaseRealm baseRealm, RealmSchema realmSchema, Table table) {
        super(baseRealm, realmSchema, table, new RealmObjectSchema.DynamicColumnIndices(table));
    }

    /* renamed from: r */
    private void m3106r(String str, FieldAttribute[] fieldAttributeArr) {
        if (fieldAttributeArr != null) {
            boolean z = false;
            z = false;
            try {
                if (fieldAttributeArr.length > 0) {
                    if (m3101w(fieldAttributeArr, FieldAttribute.INDEXED)) {
                        m3107q(str);
                        z = true;
                    }
                    if (m3101w(fieldAttributeArr, FieldAttribute.PRIMARY_KEY)) {
                        m3105s(str);
                    }
                }
            } catch (Exception e) {
                long f = m2933f(str);
                if (z) {
                    this.f19948c.m2663G(f);
                }
                throw ((RuntimeException) e);
            }
        }
    }

    /* renamed from: t */
    private void m3104t() {
        if (this.f19947b.f19807h.m2977v()) {
            throw new UnsupportedOperationException("'addPrimaryKey' is not supported by synced Realms.");
        }
    }

    /* renamed from: u */
    private void m3103u(String str) {
        if (this.f19948c.m2638o(str) != -1) {
            throw new IllegalArgumentException("Field already exists in '" + m2934e() + "': " + str);
        }
    }

    /* renamed from: v */
    private void m3102v(String str) {
        RealmObjectSchema.m2936c(str);
        m3103u(str);
    }

    /* renamed from: w */
    static boolean m3101w(FieldAttribute[] fieldAttributeArr, FieldAttribute fieldAttribute) {
        if (fieldAttributeArr == null || fieldAttributeArr.length == 0) {
            return false;
        }
        for (FieldAttribute fieldAttribute2 : fieldAttributeArr) {
            if (fieldAttribute2 == fieldAttribute) {
                return true;
            }
        }
        return false;
    }

    @Override // io.realm.RealmObjectSchema
    /* renamed from: a */
    public RealmObjectSchema mo2938a(String str, Class<?> cls, FieldAttribute... fieldAttributeArr) {
        RealmObjectSchema.FieldMetaData fieldMetaData = RealmObjectSchema.f19944e.get(cls);
        boolean z = false;
        if (fieldMetaData != null) {
            if (m3101w(fieldAttributeArr, FieldAttribute.PRIMARY_KEY)) {
                m3104t();
            }
            m3102v(str);
            z = fieldMetaData.f19952b;
            if (m3101w(fieldAttributeArr, FieldAttribute.REQUIRED)) {
            }
            long a = this.f19948c.m2652a(fieldMetaData.f19951a, str, z);
            try {
                m3106r(str, fieldAttributeArr);
                return this;
            } catch (Exception e) {
                this.f19948c.m2664F(a);
                throw e;
            }
        } else if (RealmObjectSchema.f19945f.containsKey(cls)) {
            throw new IllegalArgumentException("Use addRealmObjectField() instead to add fields that link to other RealmObjects: " + str);
        } else if (RealmModel.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException(String.format(Locale.US, "Use 'addRealmObjectField()' instead to add fields that link to other RealmObjects: %s(%s)", str, cls));
        } else {
            throw new IllegalArgumentException(String.format(Locale.US, "Realm doesn't support this field type: %s(%s)", str, cls));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.realm.RealmObjectSchema
    /* renamed from: g */
    public FieldDescriptor mo2932g(String str, RealmFieldType... realmFieldTypeArr) {
        return FieldDescriptor.m2578d(m2929j(), m2928k(), str, realmFieldTypeArr);
    }

    @Override // io.realm.RealmObjectSchema
    /* renamed from: o */
    public RealmObjectSchema mo2924o(String str) {
        this.f19947b.m3149k();
        RealmObjectSchema.m2936c(str);
        if (m2927l(str)) {
            long f = m2933f(str);
            String e = m2934e();
            if (str.equals(OsObjectStore.m2744b(this.f19947b.f19809j, e))) {
                OsObjectStore.m2742d(this.f19947b.f19809j, e, str);
            }
            this.f19948c.m2664F(f);
            return this;
        }
        throw new IllegalStateException(str + " does not exist.");
    }

    @Override // io.realm.RealmObjectSchema
    /* renamed from: p */
    public RealmObjectSchema mo2923p(String str, boolean z) {
        long o = this.f19948c.m2638o(str);
        boolean n = m2925n(str);
        RealmFieldType r = this.f19948c.m2635r(o);
        if (r == RealmFieldType.OBJECT) {
            throw new IllegalArgumentException("Cannot modify the required state for RealmObject references: " + str);
        } else if (r == RealmFieldType.LIST) {
            throw new IllegalArgumentException("Cannot modify the required state for RealmList references: " + str);
        } else if (z && n) {
            throw new IllegalStateException("Field is already required: " + str);
        } else if (z || n) {
            if (z) {
                try {
                    this.f19948c.m2648e(o);
                } catch (IllegalArgumentException e) {
                    if (e.getMessage().contains("Attempted to insert null into non-nullable column")) {
                        throw new IllegalStateException(String.format("The primary key field '%s' has 'null' values stored.", str));
                    }
                    throw e;
                }
            } else {
                this.f19948c.m2647f(o);
            }
            return this;
        } else {
            throw new IllegalStateException("Field is already nullable: " + str);
        }
    }

    /* renamed from: q */
    public RealmObjectSchema m3107q(String str) {
        RealmObjectSchema.m2936c(str);
        m2937b(str);
        long f = m2933f(str);
        if (!this.f19948c.m2627z(f)) {
            this.f19948c.m2651b(f);
            return this;
        }
        throw new IllegalStateException(str + " already has an index.");
    }

    /* renamed from: s */
    public RealmObjectSchema m3105s(String str) {
        m3104t();
        RealmObjectSchema.m2936c(str);
        m2937b(str);
        String b = OsObjectStore.m2744b(this.f19947b.f19809j, m2934e());
        if (b == null) {
            long f = m2933f(str);
            if (m2931h(str) != RealmFieldType.STRING && !this.f19948c.m2627z(f)) {
                this.f19948c.m2651b(f);
            }
            OsObjectStore.m2742d(this.f19947b.f19809j, m2934e(), str);
            return this;
        }
        throw new IllegalStateException(String.format(Locale.ENGLISH, "Field '%s' has been already defined as primary key.", b));
    }
}
