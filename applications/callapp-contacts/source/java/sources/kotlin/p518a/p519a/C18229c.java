package kotlin.p518a.p519a;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.mopub.common.AdType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p534a.AbstractC18484d;
import kotlin.jvm.internal.p534a.AbstractC18486f;
import kotlin.jvm.internal.p534a.AbstractC18487g;
import kotlin.p518a.C18273i;
import kotlin.p530f.C18363d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010&\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\b\b��\u0018�� v*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0006vwxyz{B\u0007\b\u0016¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007BE\b\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010\u0010J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00028��H��¢\u0006\u0004\b0\u00101J\u0013\u00102\u001a\b\u0012\u0004\u0012\u00028\u00010\tH\u0002¢\u0006\u0002\u00103J\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u000105J\r\u00106\u001a\u000207H��¢\u0006\u0002\b8J\b\u00109\u001a\u000207H\u0016J\b\u0010:\u001a\u000207H\u0002J\u0019\u0010;\u001a\u00020\u001f2\n\u0010<\u001a\u0006\u0012\u0002\b\u00030=H��¢\u0006\u0002\b>J!\u0010?\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010AH��¢\u0006\u0002\bBJ\u0015\u0010C\u001a\u00020\u001f2\u0006\u0010/\u001a\u00028��H\u0016¢\u0006\u0002\u0010DJ\u0015\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010DJ\u0018\u0010G\u001a\u00020\u001f2\u000e\u0010H\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u000305H\u0002J\u0010\u0010I\u001a\u0002072\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0010\u0010J\u001a\u0002072\u0006\u0010K\u001a\u00020\u0006H\u0002J\u0019\u0010L\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010MH��¢\u0006\u0002\bNJ\u0013\u0010O\u001a\u00020\u001f2\b\u0010H\u001a\u0004\u0018\u00010PH\u0096\u0002J\u0015\u0010Q\u001a\u00020\u00062\u0006\u0010/\u001a\u00028��H\u0002¢\u0006\u0002\u00101J\u0015\u0010R\u001a\u00020\u00062\u0006\u0010F\u001a\u00028\u0001H\u0002¢\u0006\u0002\u00101J\u0018\u0010S\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010TJ\u0015\u0010U\u001a\u00020\u00062\u0006\u0010/\u001a\u00028��H\u0002¢\u0006\u0002\u00101J\b\u0010V\u001a\u00020\u0006H\u0016J\b\u0010W\u001a\u00020\u001fH\u0016J\u0019\u0010X\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010YH��¢\u0006\u0002\bZJ\u001f\u0010[\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028��2\u0006\u0010F\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\\J\u001e\u0010]\u001a\u0002072\u0014\u0010^\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028��\u0012\u0004\u0012\u00028\u000105H\u0016J\"\u0010_\u001a\u00020\u001f2\u0018\u0010^\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010A0=H\u0002J\u001c\u0010`\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010AH\u0002J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020\u0006H\u0002J\u0010\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020\u0006H\u0002J\u0017\u0010e\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028��H\u0016¢\u0006\u0002\u0010TJ!\u0010f\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010AH��¢\u0006\u0002\bgJ\u0010\u0010h\u001a\u0002072\u0006\u0010i\u001a\u00020\u0006H\u0002J\u0017\u0010j\u001a\u00020\u00062\u0006\u0010/\u001a\u00028��H��¢\u0006\u0004\bk\u00101J\u0010\u0010l\u001a\u0002072\u0006\u0010m\u001a\u00020\u0006H\u0002J\u0017\u0010n\u001a\u00020\u001f2\u0006\u0010o\u001a\u00028\u0001H��¢\u0006\u0004\bp\u0010DJ\b\u0010q\u001a\u00020rH\u0016J\u0019\u0010s\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010tH��¢\u0006\u0002\buR\u0014\u0010\u0011\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R&\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00160\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u001c\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0013R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0018R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n��\u001a\u0004\b'\u0010\u0013R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"R\u0016\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n��¨\u0006|"}, m4298d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", "V", "", "()V", "initialCapacity", "", "(I)V", "keysArray", "", "valuesArray", "presenceArray", "", "hashArray", "maxProbeDistance", "length", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "capacity", "getCapacity", "()I", "entries", "", "", "getEntries", "()Ljava/util/Set;", "entriesView", "Lkotlin/collections/builders/MapBuilderEntries;", "hashShift", "hashSize", "getHashSize", "isReadOnly", "", "keys", "getKeys", "[Ljava/lang/Object;", "keysView", "Lkotlin/collections/builders/MapBuilderKeys;", "<set-?>", "size", "getSize", "values", "", "getValues", "()Ljava/util/Collection;", "valuesView", "Lkotlin/collections/builders/MapBuilderValues;", "addKey", "key", "addKey$kotlin_stdlib", "(Ljava/lang/Object;)I", "allocateValuesArray", "()[Ljava/lang/Object;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "", "checkIsMutable", "", "checkIsMutable$kotlin_stdlib", AdType.CLEAR, "compact", "containsAllEntries", "m", "", "containsAllEntries$kotlin_stdlib", "containsEntry", "entry", "", "containsEntry$kotlin_stdlib", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "value", "contentEquals", "other", "ensureCapacity", "ensureExtraCapacity", "n", "entriesIterator", "Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator$kotlin_stdlib", "equals", "", "findKey", "findValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "hash", "hashCode", "isEmpty", "keysIterator", "Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator$kotlin_stdlib", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "from", "putAllEntries", "putEntry", "putRehash", "i", "rehash", "newHashSize", "remove", "removeEntry", "removeEntry$kotlin_stdlib", "removeHashAt", "removedHash", "removeKey", "removeKey$kotlin_stdlib", "removeKeyAt", "index", "removeValue", "element", "removeValue$kotlin_stdlib", "toString", "", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator$kotlin_stdlib", "Companion", "EntriesItr", "EntryRef", "Itr", "KeysItr", "ValuesItr", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.a.a.c */
/* loaded from: classes5-dex2jar.jar:kotlin/a/a/c.class */
public final class C18229c<K, V> implements Map<K, V>, AbstractC18486f {

    /* renamed from: m */
    private static final C18230a f63329m = new C18230a(null);

    /* renamed from: a */
    public boolean f63330a;

    /* renamed from: b */
    V[] f63331b;

    /* renamed from: c */
    private int f63332c;

    /* renamed from: d */
    private int f63333d;

    /* renamed from: e */
    private C18237e<K> f63334e;

    /* renamed from: f */
    private C18238f<V> f63335f;

    /* renamed from: g */
    private C18236d<K, V> f63336g;

    /* renamed from: h */
    private K[] f63337h;

    /* renamed from: i */
    private int[] f63338i;

    /* renamed from: j */
    private int[] f63339j;

    /* renamed from: k */
    private int f63340k;

    /* renamed from: l */
    private int f63341l;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0082\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "()V", "INITIAL_CAPACITY", "", "INITIAL_MAX_PROBE_DISTANCE", "MAGIC", "TOMBSTONE", "computeHashSize", "capacity", "computeShift", "hashSize", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.a.a.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$a.class */
    public static final class C18230a {
        private C18230a() {
        }

        public /* synthetic */ C18230a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        static int m4265a(int i) {
            return Integer.highestOneBit(C18363d.m4051c(i, 1) * 3);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u0019\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nH\u0096\u0002J\u0012\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fJ\r\u0010\u0010\u001a\u00020\u0011H��¢\u0006\u0002\b\u0012¨\u0006\u0013"}, m4298d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "nextAppendString", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "nextHashCode", "", "nextHashCode$kotlin_stdlib", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.a.a.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$b.class */
    public static final class C18231b<K, V> extends C18233d<K, V> implements Iterator<Map.Entry<K, V>>, AbstractC18484d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18231b(C18229c<K, V> map) {
            super(map);
            C18524p.m3840d(map, "map");
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (this.f63344a < ((C18229c) this.f63346c).f63341l) {
                int i = this.f63344a;
                this.f63344a = i + 1;
                this.f63345b = i;
                C18232c c18232c = new C18232c(this.f63346c, this.f63345b);
                m4264a();
                return c18232c;
            }
            throw new NoSuchElementException();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B!\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\u0015\u0010\u0013\u001a\u00028\u00032\u0006\u0010\u0014\u001a\u00028\u0003H\u0016¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\u00028\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00028\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b¨\u0006\u0018"}, m4298d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", "V", "", "map", "Lkotlin/collections/builders/MapBuilder;", "index", "", "(Lkotlin/collections/builders/MapBuilder;I)V", "key", "getKey", "()Ljava/lang/Object;", "value", "getValue", "equals", "", "other", "", "hashCode", "setValue", "newValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "toString", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.a.a.c$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$c.class */
    public static final class C18232c<K, V> implements Map.Entry<K, V>, AbstractC18487g {

        /* renamed from: a */
        private final C18229c<K, V> f63342a;

        /* renamed from: b */
        private final int f63343b;

        public C18232c(C18229c<K, V> map, int i) {
            C18524p.m3840d(map, "map");
            this.f63342a = map;
            this.f63343b = i;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return C18524p.m3850a(entry.getKey(), getKey()) && C18524p.m3850a(entry.getValue(), getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return (K) ((C18229c) this.f63342a).f63337h[this.f63343b];
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            Object[] objArr = this.f63342a.f63331b;
            C18524p.m3851a(objArr);
            return (V) objArr[this.f63343b];
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K key = getKey();
            int i = 0;
            int hashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            if (value != null) {
                i = value.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            this.f63342a.m4288a();
            Object[] m4277c = this.f63342a.m4277c();
            int i = this.f63343b;
            V v2 = (V) m4277c[i];
            m4277c[i] = v;
            return v2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0010\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010\u0014\u001a\u00020\u0015H��¢\u0006\u0002\b\u0016J\u0006\u0010\u0017\u001a\u00020\u0015R\u001a\u0010\u0007\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, m4298d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", "V", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "index", "", "getIndex$kotlin_stdlib", "()I", "setIndex$kotlin_stdlib", "(I)V", "lastIndex", "getLastIndex$kotlin_stdlib", "setLastIndex$kotlin_stdlib", "getMap$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder;", "hasNext", "", "initNext", "", "initNext$kotlin_stdlib", "remove", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.a.a.c$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$d.class */
    public static class C18233d<K, V> {

        /* renamed from: a */
        int f63344a;

        /* renamed from: b */
        int f63345b = -1;

        /* renamed from: c */
        final C18229c<K, V> f63346c;

        public C18233d(C18229c<K, V> map) {
            C18524p.m3840d(map, "map");
            this.f63346c = map;
            m4264a();
        }

        /* renamed from: a */
        public final void m4264a() {
            while (this.f63344a < ((C18229c) this.f63346c).f63341l) {
                int[] iArr = ((C18229c) this.f63346c).f63338i;
                int i = this.f63344a;
                if (iArr[i] >= 0) {
                    return;
                }
                this.f63344a = i + 1;
            }
        }

        public final boolean hasNext() {
            return this.f63344a < ((C18229c) this.f63346c).f63341l;
        }

        public final void remove() {
            this.f63346c.m4288a();
            this.f63346c.m4287a(this.f63345b);
            this.f63345b = -1;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.a.a.c$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$e.class */
    public static final class C18234e<K, V> extends C18233d<K, V> implements Iterator<K>, AbstractC18484d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18234e(C18229c<K, V> map) {
            super(map);
            C18524p.m3840d(map, "map");
        }

        @Override // java.util.Iterator
        public final K next() {
            if (this.f63344a < ((C18229c) this.f63346c).f63341l) {
                int i = this.f63344a;
                this.f63344a = i + 1;
                this.f63345b = i;
                K k = (K) ((C18229c) this.f63346c).f63337h[this.f63345b];
                m4264a();
                return k;
            }
            throw new NoSuchElementException();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.a.a.c$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$f.class */
    public static final class C18235f<K, V> extends C18233d<K, V> implements Iterator<V>, AbstractC18484d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18235f(C18229c<K, V> map) {
            super(map);
            C18524p.m3840d(map, "map");
        }

        @Override // java.util.Iterator
        public final V next() {
            if (this.f63344a < ((C18229c) this.f63346c).f63341l) {
                int i = this.f63344a;
                this.f63344a = i + 1;
                this.f63345b = i;
                Object[] objArr = this.f63346c.f63331b;
                C18524p.m3851a(objArr);
                V v = (V) objArr[this.f63345b];
                m4264a();
                return v;
            }
            throw new NoSuchElementException();
        }
    }

    public C18229c() {
        this(8);
    }

    public C18229c(int i) {
        this(C18228b.m4292a(i), null, new int[i], new int[C18230a.m4265a(i)], 2, 0);
    }

    private C18229c(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i, int i2) {
        this.f63337h = kArr;
        this.f63331b = vArr;
        this.f63338i = iArr;
        this.f63339j = iArr2;
        this.f63340k = i;
        this.f63341l = i2;
        this.f63332c = Integer.numberOfLeadingZeros(iArr2.length) + 1;
    }

    /* renamed from: b */
    private final void m4280b(int i) {
        m4276c(this.f63341l + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.lang.Object[]] */
    /* renamed from: c */
    private final void m4276c(int i) {
        K[] kArr = this.f63337h;
        if (i <= kArr.length) {
            if ((this.f63341l + i) - size() <= this.f63337h.length) {
                return;
            }
            m4272d(this.f63339j.length);
            return;
        }
        int length = (kArr.length * 3) / 2;
        if (i <= length) {
            i = length;
        }
        this.f63337h = (K[]) C18228b.m4291a(kArr, i);
        V[] vArr = this.f63331b;
        this.f63331b = vArr != null ? C18228b.m4291a(vArr, i) : null;
        int[] copyOf = Arrays.copyOf(this.f63338i, i);
        C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        this.f63338i = copyOf;
        int m4265a = C18230a.m4265a(i);
        if (m4265a <= this.f63339j.length) {
            return;
        }
        m4272d(m4265a);
    }

    /* renamed from: c */
    public final V[] m4277c() {
        V[] vArr = this.f63331b;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) C18228b.m4292a(this.f63337h.length);
        this.f63331b = vArr2;
        return vArr2;
    }

    /* renamed from: d */
    private final int m4271d(K k) {
        return ((k != null ? k.hashCode() : 0) * (-1640531527)) >>> this.f63332c;
    }

    /* renamed from: d */
    private final void m4273d() {
        int i;
        int i2;
        V[] vArr = this.f63331b;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            i2 = this.f63341l;
            if (i3 >= i2) {
                break;
            }
            int i5 = i;
            if (this.f63338i[i3] >= 0) {
                K[] kArr = this.f63337h;
                kArr[i] = kArr[i3];
                if (vArr != null) {
                    vArr[i] = vArr[i3];
                }
                i5 = i + 1;
            }
            i3++;
            i4 = i5;
        }
        C18228b.m4290a(this.f63337h, i, i2);
        if (vArr != null) {
            C18228b.m4290a(vArr, i, this.f63341l);
        }
        this.f63341l = i;
    }

    /* renamed from: d */
    private final void m4272d(int i) {
        int i2;
        if (this.f63341l > size()) {
            m4273d();
        }
        int[] iArr = this.f63339j;
        if (i != iArr.length) {
            this.f63339j = new int[i];
            this.f63332c = Integer.numberOfLeadingZeros(i) + 1;
            i2 = 0;
        } else {
            C18273i.m4222a(iArr, 0, 0, iArr.length);
            i2 = 0;
        }
        while (i2 < this.f63341l) {
            if (!m4269e(i2)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i2++;
        }
    }

    /* renamed from: e */
    private int m4268e(K k) {
        m4288a();
        while (true) {
            int m4271d = m4271d((C18229c<K, V>) k);
            int d = C18363d.m4050d(this.f63340k * 2, this.f63339j.length / 2);
            int i = 0;
            while (true) {
                int[] iArr = this.f63339j;
                int i2 = iArr[m4271d];
                if (i2 <= 0) {
                    int i3 = this.f63341l;
                    K[] kArr = this.f63337h;
                    if (i3 < kArr.length) {
                        int i4 = i3 + 1;
                        this.f63341l = i4;
                        kArr[i3] = k;
                        this.f63338i[i3] = m4271d;
                        iArr[m4271d] = i4;
                        this.f63333d = size() + 1;
                        if (i > this.f63340k) {
                            this.f63340k = i;
                        }
                        return i3;
                    }
                    m4280b(1);
                } else if (C18524p.m3850a(this.f63337h[i2 - 1], k)) {
                    return -i2;
                } else {
                    i++;
                    if (i > d) {
                        m4272d(this.f63339j.length * 2);
                        break;
                    }
                    m4271d = m4271d == 0 ? this.f63339j.length - 1 : m4271d - 1;
                }
            }
        }
    }

    /* renamed from: e */
    private final boolean m4269e(int i) {
        int m4271d = m4271d((C18229c<K, V>) this.f63337h[i]);
        int i2 = this.f63340k;
        while (true) {
            int[] iArr = this.f63339j;
            if (iArr[m4271d] == 0) {
                iArr[m4271d] = i + 1;
                this.f63338i[i] = m4271d;
                return true;
            }
            i2--;
            if (i2 < 0) {
                return false;
            }
            m4271d = m4271d == 0 ? iArr.length - 1 : m4271d - 1;
        }
    }

    /* renamed from: f */
    private final void m4266f(int i) {
        int i2;
        int i3;
        int d = C18363d.m4050d(this.f63340k * 2, this.f63339j.length / 2);
        int i4 = 0;
        int i5 = i;
        do {
            i = i == 0 ? this.f63339j.length - 1 : i - 1;
            int i6 = i4 + 1;
            if (i6 > this.f63340k) {
                this.f63339j[i5] = 0;
                return;
            }
            int[] iArr = this.f63339j;
            int i7 = iArr[i];
            if (i7 == 0) {
                iArr[i5] = 0;
                return;
            }
            if (i7 < 0) {
                iArr[i5] = -1;
            } else {
                int i8 = i7 - 1;
                int m4271d = m4271d((C18229c<K, V>) this.f63337h[i8]);
                int[] iArr2 = this.f63339j;
                i2 = i5;
                i4 = i6;
                if (((m4271d - i) & (iArr2.length - 1)) >= i6) {
                    iArr2[i5] = i7;
                    this.f63338i[i8] = i5;
                }
                i3 = d - 1;
                i5 = i2;
                d = i3;
            }
            i2 = i;
            i4 = 0;
            i3 = d - 1;
            i5 = i2;
            d = i3;
        } while (i3 >= 0);
        this.f63339j[i2] = -1;
    }

    /* renamed from: a */
    public final int m4286a(K k) {
        int m4271d = m4271d((C18229c<K, V>) k);
        int i = this.f63340k;
        while (true) {
            int i2 = this.f63339j[m4271d];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (C18524p.m3850a(this.f63337h[i3], k)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            m4271d = m4271d == 0 ? this.f63339j.length - 1 : m4271d - 1;
        }
    }

    /* renamed from: a */
    public final void m4288a() {
        if (!this.f63330a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m4287a(int i) {
        C18228b.m4289b(this.f63337h, i);
        m4266f(this.f63338i[i]);
        this.f63338i[i] = -1;
        this.f63333d = size() - 1;
    }

    /* renamed from: a */
    public final boolean m4285a(Collection<?> m) {
        C18524p.m3840d(m, "m");
        for (Object obj : m) {
            if (obj == null) {
                return false;
            }
            try {
                if (!m4284a((Map.Entry) ((Map.Entry) obj))) {
                    return false;
                }
            } catch (ClassCastException e) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m4284a(Map.Entry<? extends K, ? extends V> entry) {
        C18524p.m3840d(entry, "entry");
        int m4286a = m4286a((C18229c<K, V>) entry.getKey());
        if (m4286a < 0) {
            return false;
        }
        V[] vArr = this.f63331b;
        C18524p.m3851a(vArr);
        return C18524p.m3850a(vArr[m4286a], entry.getValue());
    }

    /* renamed from: b */
    public final int m4279b(V v) {
        int i = this.f63341l;
        while (true) {
            int i2 = i - 1;
            if (i2 >= 0) {
                i = i2;
                if (this.f63338i[i2] >= 0) {
                    V[] vArr = this.f63331b;
                    C18524p.m3851a(vArr);
                    i = i2;
                    if (C18524p.m3850a(vArr[i2], v)) {
                        return i2;
                    }
                }
            } else {
                return -1;
            }
        }
    }

    /* renamed from: b */
    public final C18231b<K, V> m4281b() {
        return new C18231b<>(this);
    }

    /* renamed from: c */
    public final int m4275c(K k) {
        m4288a();
        int m4286a = m4286a((C18229c<K, V>) k);
        if (m4286a < 0) {
            return -1;
        }
        m4287a(m4286a);
        return m4286a;
    }

    @Override // java.util.Map
    public final void clear() {
        m4288a();
        int i = this.f63341l - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.f63338i;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.f63339j[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        C18228b.m4290a(this.f63337h, 0, this.f63341l);
        V[] vArr = this.f63331b;
        if (vArr != null) {
            C18228b.m4290a(vArr, 0, this.f63341l);
        }
        this.f63333d = 0;
        this.f63341l = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return m4286a((C18229c<K, V>) obj) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return m4279b((C18229c<K, V>) obj) >= 0;
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        C18236d<K, V> c18236d = this.f63336g;
        if (c18236d == null) {
            C18236d<K, V> c18236d2 = new C18236d<>(this);
            this.f63336g = c18236d2;
            return c18236d2;
        }
        return c18236d;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof Map)) {
                return false;
            }
            Map map = (Map) obj;
            return size() == map.size() && m4285a((Collection<?>) map.entrySet());
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final V get(Object obj) {
        int m4286a = m4286a((C18229c<K, V>) obj);
        if (m4286a < 0) {
            return null;
        }
        V[] vArr = this.f63331b;
        C18524p.m3851a(vArr);
        return vArr[m4286a];
    }

    @Override // java.util.Map
    public final int hashCode() {
        C18231b<K, V> m4281b = m4281b();
        int i = 0;
        while (true) {
            int i2 = i;
            if (m4281b.hasNext()) {
                if (m4281b.f63344a >= m4281b.f63346c.f63341l) {
                    throw new NoSuchElementException();
                }
                int i3 = m4281b.f63344a;
                m4281b.f63344a = i3 + 1;
                m4281b.f63345b = i3;
                K k = m4281b.f63346c.f63337h[m4281b.f63345b];
                int hashCode = k != null ? k.hashCode() : 0;
                V[] vArr = m4281b.f63346c.f63331b;
                C18524p.m3851a(vArr);
                V v = vArr[m4281b.f63345b];
                int hashCode2 = v != null ? v.hashCode() : 0;
                m4281b.m4264a();
                i = i2 + (hashCode ^ hashCode2);
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        C18237e<K> c18237e = this.f63334e;
        if (c18237e == null) {
            C18237e<K> c18237e2 = new C18237e<>(this);
            this.f63334e = c18237e2;
            return c18237e2;
        }
        return c18237e;
    }

    @Override // java.util.Map
    public final V put(K k, V v) {
        m4288a();
        int m4268e = m4268e((C18229c<K, V>) k);
        V[] m4277c = m4277c();
        if (m4268e >= 0) {
            m4277c[m4268e] = v;
            return null;
        }
        int i = (-m4268e) - 1;
        V v2 = m4277c[i];
        m4277c[i] = v;
        return v2;
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> from) {
        C18524p.m3840d(from, "from");
        m4288a();
        Set<Map.Entry<? extends K, ? extends V>> entrySet = from.entrySet();
        if (!entrySet.isEmpty()) {
            m4280b(entrySet.size());
            for (Map.Entry<? extends K, ? extends V> entry : entrySet) {
                int m4268e = m4268e((C18229c<K, V>) entry.getKey());
                V[] m4277c = m4277c();
                if (m4268e >= 0) {
                    m4277c[m4268e] = entry.getValue();
                } else {
                    int i = (-m4268e) - 1;
                    if (!C18524p.m3850a(entry.getValue(), m4277c[i])) {
                        m4277c[i] = entry.getValue();
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final V remove(Object obj) {
        int m4275c = m4275c((C18229c<K, V>) obj);
        if (m4275c < 0) {
            return null;
        }
        V[] vArr = this.f63331b;
        C18524p.m3851a(vArr);
        V v = vArr[m4275c];
        C18228b.m4289b(vArr, m4275c);
        return v;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return this.f63333d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        C18231b<K, V> m4281b = m4281b();
        int i = 0;
        while (m4281b.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            C18524p.m3840d(sb, "sb");
            if (m4281b.f63344a >= m4281b.f63346c.f63341l) {
                throw new NoSuchElementException();
            }
            int i2 = m4281b.f63344a;
            m4281b.f63344a = i2 + 1;
            m4281b.f63345b = i2;
            K k = m4281b.f63346c.f63337h[m4281b.f63345b];
            if (C18524p.m3850a(k, m4281b.f63346c)) {
                sb.append("(this Map)");
            } else {
                sb.append(k);
            }
            sb.append('=');
            V[] vArr = m4281b.f63346c.f63331b;
            C18524p.m3851a(vArr);
            V v = vArr[m4281b.f63345b];
            if (C18524p.m3850a(v, m4281b.f63346c)) {
                sb.append("(this Map)");
            } else {
                sb.append(v);
            }
            m4281b.m4264a();
            i++;
        }
        sb.append("}");
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "sb.toString()");
        return sb2;
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        C18238f<V> c18238f = this.f63335f;
        if (c18238f == null) {
            C18238f<V> c18238f2 = new C18238f<>(this);
            this.f63335f = c18238f2;
            return c18238f2;
        }
        return c18238f;
    }
}
