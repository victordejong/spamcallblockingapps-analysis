package kotlin.a.a;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.mopub.common.AdType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a.g;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010&\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\b\b��\u0018�� v*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0006vwxyz{B\u0007\b\u0016¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007BE\b\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010\u0010J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00028��H��¢\u0006\u0004\b0\u00101J\u0013\u00102\u001a\b\u0012\u0004\u0012\u00028\u00010\tH\u0002¢\u0006\u0002\u00103J\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u000105J\r\u00106\u001a\u000207H��¢\u0006\u0002\b8J\b\u00109\u001a\u000207H\u0016J\b\u0010:\u001a\u000207H\u0002J\u0019\u0010;\u001a\u00020\u001f2\n\u0010<\u001a\u0006\u0012\u0002\b\u00030=H��¢\u0006\u0002\b>J!\u0010?\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010AH��¢\u0006\u0002\bBJ\u0015\u0010C\u001a\u00020\u001f2\u0006\u0010/\u001a\u00028��H\u0016¢\u0006\u0002\u0010DJ\u0015\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010DJ\u0018\u0010G\u001a\u00020\u001f2\u000e\u0010H\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u000305H\u0002J\u0010\u0010I\u001a\u0002072\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0010\u0010J\u001a\u0002072\u0006\u0010K\u001a\u00020\u0006H\u0002J\u0019\u0010L\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010MH��¢\u0006\u0002\bNJ\u0013\u0010O\u001a\u00020\u001f2\b\u0010H\u001a\u0004\u0018\u00010PH\u0096\u0002J\u0015\u0010Q\u001a\u00020\u00062\u0006\u0010/\u001a\u00028��H\u0002¢\u0006\u0002\u00101J\u0015\u0010R\u001a\u00020\u00062\u0006\u0010F\u001a\u00028\u0001H\u0002¢\u0006\u0002\u00101J\u0018\u0010S\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010TJ\u0015\u0010U\u001a\u00020\u00062\u0006\u0010/\u001a\u00028��H\u0002¢\u0006\u0002\u00101J\b\u0010V\u001a\u00020\u0006H\u0016J\b\u0010W\u001a\u00020\u001fH\u0016J\u0019\u0010X\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010YH��¢\u0006\u0002\bZJ\u001f\u0010[\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028��2\u0006\u0010F\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\\J\u001e\u0010]\u001a\u0002072\u0014\u0010^\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028��\u0012\u0004\u0012\u00028\u000105H\u0016J\"\u0010_\u001a\u00020\u001f2\u0018\u0010^\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010A0=H\u0002J\u001c\u0010`\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010AH\u0002J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020\u0006H\u0002J\u0010\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020\u0006H\u0002J\u0017\u0010e\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028��H\u0016¢\u0006\u0002\u0010TJ!\u0010f\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010AH��¢\u0006\u0002\bgJ\u0010\u0010h\u001a\u0002072\u0006\u0010i\u001a\u00020\u0006H\u0002J\u0017\u0010j\u001a\u00020\u00062\u0006\u0010/\u001a\u00028��H��¢\u0006\u0004\bk\u00101J\u0010\u0010l\u001a\u0002072\u0006\u0010m\u001a\u00020\u0006H\u0002J\u0017\u0010n\u001a\u00020\u001f2\u0006\u0010o\u001a\u00028\u0001H��¢\u0006\u0004\bp\u0010DJ\b\u0010q\u001a\u00020rH\u0016J\u0019\u0010s\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010tH��¢\u0006\u0002\buR\u0014\u0010\u0011\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R&\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00160\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u001c\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0013R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0018R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n��\u001a\u0004\b'\u0010\u0013R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"R\u0016\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n��¨\u0006|"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", "V", "", "()V", "initialCapacity", "", "(I)V", "keysArray", "", "valuesArray", "presenceArray", "", "hashArray", "maxProbeDistance", "length", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "capacity", "getCapacity", "()I", "entries", "", "", "getEntries", "()Ljava/util/Set;", "entriesView", "Lkotlin/collections/builders/MapBuilderEntries;", "hashShift", "hashSize", "getHashSize", "isReadOnly", "", "keys", "getKeys", "[Ljava/lang/Object;", "keysView", "Lkotlin/collections/builders/MapBuilderKeys;", "<set-?>", "size", "getSize", "values", "", "getValues", "()Ljava/util/Collection;", "valuesView", "Lkotlin/collections/builders/MapBuilderValues;", "addKey", "key", "addKey$kotlin_stdlib", "(Ljava/lang/Object;)I", "allocateValuesArray", "()[Ljava/lang/Object;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "", "checkIsMutable", "", "checkIsMutable$kotlin_stdlib", AdType.CLEAR, "compact", "containsAllEntries", "m", "", "containsAllEntries$kotlin_stdlib", "containsEntry", "entry", "", "containsEntry$kotlin_stdlib", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "value", "contentEquals", "other", "ensureCapacity", "ensureExtraCapacity", "n", "entriesIterator", "Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator$kotlin_stdlib", "equals", "", "findKey", "findValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "hash", "hashCode", "isEmpty", "keysIterator", "Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator$kotlin_stdlib", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "from", "putAllEntries", "putEntry", "putRehash", "i", "rehash", "newHashSize", "remove", "removeEntry", "removeEntry$kotlin_stdlib", "removeHashAt", "removedHash", "removeKey", "removeKey$kotlin_stdlib", "removeKeyAt", "index", "removeValue", "element", "removeValue$kotlin_stdlib", "toString", "", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator$kotlin_stdlib", "Companion", "EntriesItr", "EntryRef", "Itr", "KeysItr", "ValuesItr", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/a/a/c.class */
public final class c<K, V> implements Map<K, V>, kotlin.jvm.internal.a.f {
    private static final a m = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public boolean f36554a;

    /* renamed from: b  reason: collision with root package name */
    V[] f36555b;

    /* renamed from: c  reason: collision with root package name */
    private int f36556c;

    /* renamed from: d  reason: collision with root package name */
    private int f36557d;
    private kotlin.a.a.e<K> e;
    private kotlin.a.a.f<V> f;
    private kotlin.a.a.d<K, V> g;
    private K[] h;
    private int[] i;
    private int[] j;
    private int k;
    private int l;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0082\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "()V", "INITIAL_CAPACITY", "", "INITIAL_MAX_PROBE_DISTANCE", "MAGIC", "TOMBSTONE", "computeHashSize", "capacity", "computeShift", "hashSize", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        static int a(int i) {
            return Integer.highestOneBit(kotlin.f.d.c(i, 1) * 3);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u0019\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nH\u0096\u0002J\u0012\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fJ\r\u0010\u0010\u001a\u00020\u0011H��¢\u0006\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "nextAppendString", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "nextHashCode", "", "nextHashCode$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$b.class */
    public static final class b<K, V> extends d<K, V> implements Iterator<Map.Entry<K, V>>, kotlin.jvm.internal.a.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c<K, V> map) {
            super(map);
            p.d(map, "map");
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (this.f36560a < ((c) this.f36562c).l) {
                int i = this.f36560a;
                this.f36560a = i + 1;
                this.f36561b = i;
                C0603c cVar = new C0603c(this.f36562c, this.f36561b);
                a();
                return cVar;
            }
            throw new NoSuchElementException();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B!\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\u0015\u0010\u0013\u001a\u00028\u00032\u0006\u0010\u0014\u001a\u00028\u0003H\u0016¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\u00028\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00028\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b¨\u0006\u0018"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", "V", "", "map", "Lkotlin/collections/builders/MapBuilder;", "index", "", "(Lkotlin/collections/builders/MapBuilder;I)V", "key", "getKey", "()Ljava/lang/Object;", "value", "getValue", "equals", "", "other", "", "hashCode", "setValue", "newValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "toString", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* renamed from: kotlin.a.a.c$c  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$c.class */
    public static final class C0603c<K, V> implements Map.Entry<K, V>, g {

        /* renamed from: a  reason: collision with root package name */
        private final c<K, V> f36558a;

        /* renamed from: b  reason: collision with root package name */
        private final int f36559b;

        public C0603c(c<K, V> map, int i) {
            p.d(map, "map");
            this.f36558a = map;
            this.f36559b = i;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return p.a(entry.getKey(), getKey()) && p.a(entry.getValue(), getValue());
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return (K) ((c) this.f36558a).h[this.f36559b];
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            Object[] objArr = this.f36558a.f36555b;
            p.a(objArr);
            return (V) objArr[this.f36559b];
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
            this.f36558a.a();
            Object[] c2 = this.f36558a.c();
            int i = this.f36559b;
            V v2 = (V) c2[i];
            c2[i] = v;
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

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0010\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010\u0014\u001a\u00020\u0015H��¢\u0006\u0002\b\u0016J\u0006\u0010\u0017\u001a\u00020\u0015R\u001a\u0010\u0007\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", "V", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "index", "", "getIndex$kotlin_stdlib", "()I", "setIndex$kotlin_stdlib", "(I)V", "lastIndex", "getLastIndex$kotlin_stdlib", "setLastIndex$kotlin_stdlib", "getMap$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder;", "hasNext", "", "initNext", "", "initNext$kotlin_stdlib", "remove", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$d.class */
    public static class d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        int f36560a;

        /* renamed from: b  reason: collision with root package name */
        int f36561b = -1;

        /* renamed from: c  reason: collision with root package name */
        final c<K, V> f36562c;

        public d(c<K, V> map) {
            p.d(map, "map");
            this.f36562c = map;
            a();
        }

        public final void a() {
            while (this.f36560a < ((c) this.f36562c).l) {
                int[] iArr = ((c) this.f36562c).i;
                int i = this.f36560a;
                if (iArr[i] < 0) {
                    this.f36560a = i + 1;
                } else {
                    return;
                }
            }
        }

        public final boolean hasNext() {
            return this.f36560a < ((c) this.f36562c).l;
        }

        public final void remove() {
            this.f36562c.a();
            this.f36562c.a(this.f36561b);
            this.f36561b = -1;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$e.class */
    public static final class e<K, V> extends d<K, V> implements Iterator<K>, kotlin.jvm.internal.a.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(c<K, V> map) {
            super(map);
            p.d(map, "map");
        }

        @Override // java.util.Iterator
        public final K next() {
            if (this.f36560a < ((c) this.f36562c).l) {
                int i = this.f36560a;
                this.f36560a = i + 1;
                this.f36561b = i;
                K k = (K) ((c) this.f36562c).h[this.f36561b];
                a();
                return k;
            }
            throw new NoSuchElementException();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/a/a/c$f.class */
    public static final class f<K, V> extends d<K, V> implements Iterator<V>, kotlin.jvm.internal.a.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(c<K, V> map) {
            super(map);
            p.d(map, "map");
        }

        @Override // java.util.Iterator
        public final V next() {
            if (this.f36560a < ((c) this.f36562c).l) {
                int i = this.f36560a;
                this.f36560a = i + 1;
                this.f36561b = i;
                Object[] objArr = this.f36562c.f36555b;
                p.a(objArr);
                V v = (V) objArr[this.f36561b];
                a();
                return v;
            }
            throw new NoSuchElementException();
        }
    }

    public c() {
        this(8);
    }

    public c(int i) {
        this(kotlin.a.a.b.a(i), null, new int[i], new int[a.a(i)], 2, 0);
    }

    private c(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i, int i2) {
        this.h = kArr;
        this.f36555b = vArr;
        this.i = iArr;
        this.j = iArr2;
        this.k = i;
        this.l = i2;
        this.f36556c = Integer.numberOfLeadingZeros(iArr2.length) + 1;
    }

    private final void b(int i) {
        c(this.l + i);
    }

    private final void c(int i) {
        K[] kArr = this.h;
        if (i > kArr.length) {
            int length = (kArr.length * 3) / 2;
            if (i <= length) {
                i = length;
            }
            this.h = (K[]) kotlin.a.a.b.a(kArr, i);
            V[] vArr = this.f36555b;
            this.f36555b = vArr != null ? (V[]) kotlin.a.a.b.a(vArr, i) : null;
            int[] copyOf = Arrays.copyOf(this.i, i);
            p.b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.i = copyOf;
            int a2 = a.a(i);
            if (a2 > this.j.length) {
                d(a2);
            }
        } else if ((this.l + i) - size() > this.h.length) {
            d(this.j.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V[] c() {
        V[] vArr = this.f36555b;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) kotlin.a.a.b.a(this.h.length);
        this.f36555b = vArr2;
        return vArr2;
    }

    private final int d(K k) {
        return ((k != null ? k.hashCode() : 0) * (-1640531527)) >>> this.f36556c;
    }

    private final void d() {
        int i;
        V[] vArr = this.f36555b;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.l;
            if (i2 >= i) {
                break;
            }
            i3 = i3;
            if (this.i[i2] >= 0) {
                K[] kArr = this.h;
                kArr[i3] = kArr[i2];
                if (vArr != null) {
                    vArr[i3] = vArr[i2];
                }
                i3++;
            }
            i2++;
        }
        kotlin.a.a.b.a(this.h, i3, i);
        if (vArr != null) {
            kotlin.a.a.b.a(vArr, i3, this.l);
        }
        this.l = i3;
    }

    private final void d(int i) {
        int i2;
        if (this.l > size()) {
            d();
        }
        int[] iArr = this.j;
        if (i != iArr.length) {
            this.j = new int[i];
            this.f36556c = Integer.numberOfLeadingZeros(i) + 1;
            i2 = 0;
        } else {
            i.a(iArr, 0, 0, iArr.length);
            i2 = 0;
        }
        while (i2 < this.l) {
            if (e(i2)) {
                i2++;
            } else {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
        }
    }

    private int e(K k) {
        a();
        while (true) {
            int d2 = d((c<K, V>) k);
            int d3 = kotlin.f.d.d(this.k * 2, this.j.length / 2);
            int i = 0;
            while (true) {
                int[] iArr = this.j;
                int i2 = iArr[d2];
                if (i2 <= 0) {
                    int i3 = this.l;
                    K[] kArr = this.h;
                    if (i3 >= kArr.length) {
                        b(1);
                    } else {
                        int i4 = i3 + 1;
                        this.l = i4;
                        kArr[i3] = k;
                        this.i[i3] = d2;
                        iArr[d2] = i4;
                        this.f36557d = size() + 1;
                        if (i > this.k) {
                            this.k = i;
                        }
                        return i3;
                    }
                } else if (p.a(this.h[i2 - 1], k)) {
                    return -i2;
                } else {
                    i++;
                    if (i > d3) {
                        d(this.j.length * 2);
                        break;
                    }
                    d2 = d2 == 0 ? this.j.length - 1 : d2 - 1;
                }
            }
        }
    }

    private final boolean e(int i) {
        int d2 = d((c<K, V>) this.h[i]);
        int i2 = this.k;
        while (true) {
            int[] iArr = this.j;
            if (iArr[d2] == 0) {
                iArr[d2] = i + 1;
                this.i[i] = d2;
                return true;
            }
            i2--;
            if (i2 < 0) {
                return false;
            }
            d2 = d2 == 0 ? iArr.length - 1 : d2 - 1;
        }
    }

    private final void f(int i) {
        int i2;
        int i3;
        int d2 = kotlin.f.d.d(this.k * 2, this.j.length / 2);
        int i4 = 0;
        int i5 = i;
        do {
            i = i == 0 ? this.j.length - 1 : i - 1;
            int i6 = i4 + 1;
            if (i6 > this.k) {
                this.j[i5] = 0;
                return;
            }
            int[] iArr = this.j;
            int i7 = iArr[i];
            if (i7 == 0) {
                iArr[i5] = 0;
                return;
            }
            if (i7 < 0) {
                iArr[i5] = -1;
            } else {
                int i8 = i7 - 1;
                int d3 = d((c<K, V>) this.h[i8]);
                int[] iArr2 = this.j;
                i2 = i5;
                i4 = i6;
                if (((d3 - i) & (iArr2.length - 1)) >= i6) {
                    iArr2[i5] = i7;
                    this.i[i8] = i5;
                }
                i3 = d2 - 1;
                i5 = i2;
                d2 = i3;
            }
            i2 = i;
            i4 = 0;
            i3 = d2 - 1;
            i5 = i2;
            d2 = i3;
        } while (i3 >= 0);
        this.j[i2] = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(K k) {
        int d2 = d((c<K, V>) k);
        int i = this.k;
        while (true) {
            int i2 = this.j[d2];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (p.a(this.h[i3], k)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            d2 = d2 == 0 ? this.j.length - 1 : d2 - 1;
        }
    }

    public final void a() {
        if (this.f36554a) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        kotlin.a.a.b.b(this.h, i);
        f(this.i[i]);
        this.i[i] = -1;
        this.f36557d = size() - 1;
    }

    public final boolean a(Collection<?> m2) {
        p.d(m2, "m");
        for (Object obj : m2) {
            if (obj == null) {
                return false;
            }
            try {
                if (!a((Map.Entry) ((Map.Entry) obj))) {
                    return false;
                }
            } catch (ClassCastException e2) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(Map.Entry<? extends K, ? extends V> entry) {
        p.d(entry, "entry");
        int a2 = a((c<K, V>) entry.getKey());
        if (a2 < 0) {
            return false;
        }
        V[] vArr = this.f36555b;
        p.a(vArr);
        return p.a(vArr[a2], entry.getValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(V v) {
        int i = this.l;
        while (true) {
            int i2 = i - 1;
            if (i2 < 0) {
                return -1;
            }
            i = i2;
            if (this.i[i2] >= 0) {
                V[] vArr = this.f36555b;
                p.a(vArr);
                i = i2;
                if (p.a(vArr[i2], v)) {
                    return i2;
                }
            }
        }
    }

    public final b<K, V> b() {
        return new b<>(this);
    }

    public final int c(K k) {
        a();
        int a2 = a((c<K, V>) k);
        if (a2 < 0) {
            return -1;
        }
        a(a2);
        return a2;
    }

    @Override // java.util.Map
    public final void clear() {
        a();
        int i = this.l - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.i;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.j[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        kotlin.a.a.b.a(this.h, 0, this.l);
        V[] vArr = this.f36555b;
        if (vArr != null) {
            kotlin.a.a.b.a(vArr, 0, this.l);
        }
        this.f36557d = 0;
        this.l = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return a((c<K, V>) obj) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return b((c<K, V>) obj) >= 0;
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        kotlin.a.a.d<K, V> dVar = this.g;
        if (dVar != null) {
            return dVar;
        }
        kotlin.a.a.d<K, V> dVar2 = new kotlin.a.a.d<>(this);
        this.g = dVar2;
        return dVar2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        return size() == map.size() && a((Collection<?>) map.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final V get(Object obj) {
        int a2 = a((c<K, V>) obj);
        if (a2 < 0) {
            return null;
        }
        V[] vArr = this.f36555b;
        p.a(vArr);
        return vArr[a2];
    }

    @Override // java.util.Map
    public final int hashCode() {
        b<K, V> b2 = b();
        int i = 0;
        while (b2.hasNext()) {
            if (b2.f36560a < b2.f36562c.l) {
                int i2 = b2.f36560a;
                b2.f36560a = i2 + 1;
                b2.f36561b = i2;
                K k = b2.f36562c.h[b2.f36561b];
                int hashCode = k != null ? k.hashCode() : 0;
                V[] vArr = b2.f36562c.f36555b;
                p.a(vArr);
                V v = vArr[b2.f36561b];
                int hashCode2 = v != null ? v.hashCode() : 0;
                b2.a();
                i += hashCode ^ hashCode2;
            } else {
                throw new NoSuchElementException();
            }
        }
        return i;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        kotlin.a.a.e<K> eVar = this.e;
        if (eVar != null) {
            return eVar;
        }
        kotlin.a.a.e<K> eVar2 = new kotlin.a.a.e<>(this);
        this.e = eVar2;
        return eVar2;
    }

    @Override // java.util.Map
    public final V put(K k, V v) {
        a();
        int e2 = e((c<K, V>) k);
        V[] c2 = c();
        if (e2 < 0) {
            int i = (-e2) - 1;
            V v2 = c2[i];
            c2[i] = v;
            return v2;
        }
        c2[e2] = v;
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> from) {
        p.d(from, "from");
        a();
        Set<Map.Entry<? extends K, ? extends V>> entrySet = from.entrySet();
        if (!entrySet.isEmpty()) {
            b(entrySet.size());
            for (Map.Entry<? extends K, ? extends V> entry : entrySet) {
                int e2 = e((c<K, V>) entry.getKey());
                Object[] c2 = c();
                if (e2 >= 0) {
                    c2[e2] = entry.getValue();
                } else {
                    int i = (-e2) - 1;
                    if (!p.a(entry.getValue(), c2[i])) {
                        c2[i] = entry.getValue();
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final V remove(Object obj) {
        int c2 = c((c<K, V>) obj);
        if (c2 < 0) {
            return null;
        }
        V[] vArr = this.f36555b;
        p.a(vArr);
        V v = vArr[c2];
        kotlin.a.a.b.b(vArr, c2);
        return v;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return this.f36557d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        b<K, V> b2 = b();
        int i = 0;
        while (b2.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            p.d(sb, "sb");
            if (b2.f36560a < b2.f36562c.l) {
                int i2 = b2.f36560a;
                b2.f36560a = i2 + 1;
                b2.f36561b = i2;
                K k = b2.f36562c.h[b2.f36561b];
                if (p.a(k, b2.f36562c)) {
                    sb.append("(this Map)");
                } else {
                    sb.append(k);
                }
                sb.append('=');
                V[] vArr = b2.f36562c.f36555b;
                p.a(vArr);
                V v = vArr[b2.f36561b];
                if (p.a(v, b2.f36562c)) {
                    sb.append("(this Map)");
                } else {
                    sb.append(v);
                }
                b2.a();
                i++;
            } else {
                throw new NoSuchElementException();
            }
        }
        sb.append("}");
        String sb2 = sb.toString();
        p.b(sb2, "sb.toString()");
        return sb2;
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        kotlin.a.a.f<V> fVar = this.f;
        if (fVar != null) {
            return fVar;
        }
        kotlin.a.a.f<V> fVar2 = new kotlin.a.a.f<>(this);
        this.f = fVar2;
        return fVar2;
    }
}
