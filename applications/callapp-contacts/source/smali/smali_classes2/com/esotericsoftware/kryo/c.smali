.class public Lcom/esotericsoftware/kryo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/c$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Lcom/esotericsoftware/kryo/f;

.field public d:Z

.field public e:Ljava/lang/Object;

.field private f:Lcom/esotericsoftware/kryo/i;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/kryo/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:Lcom/esotericsoftware/kryo/a;

.field private j:I

.field private k:Ljava/lang/ClassLoader;

.field private l:Lorg/objenesis/b/b;

.field private m:Z

.field private n:Z

.field private o:I

.field private volatile p:Ljava/lang/Thread;

.field private q:Lcom/esotericsoftware/kryo/c/m;

.field private r:Lcom/esotericsoftware/kryo/c/m;

.field private final s:Lcom/esotericsoftware/kryo/c/i;

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Lcom/esotericsoftware/kryo/c/g;

.field private x:Ljava/lang/Object;

.field private y:Lcom/esotericsoftware/kryo/c/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 168
    new-instance v0, Lcom/esotericsoftware/kryo/c/b;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/c/b;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c;-><init>(Lcom/esotericsoftware/kryo/a;Lcom/esotericsoftware/kryo/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/a;Lcom/esotericsoftware/kryo/f;)V
    .locals 4

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/esotericsoftware/kryo/i$b;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/i$b;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c;->f:Lcom/esotericsoftware/kryo/i;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c;->g:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/esotericsoftware/kryo/c;->k:Ljava/lang/ClassLoader;

    .line 146
    new-instance v1, Lcom/esotericsoftware/kryo/c/d;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/c/d;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryo/c;->l:Lorg/objenesis/b/b;

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->m:Z

    const v2, 0x7fffffff

    .line 150
    iput v2, p0, Lcom/esotericsoftware/kryo/c;->o:I

    .line 151
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    .line 156
    new-instance v2, Lcom/esotericsoftware/kryo/c/i;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/esotericsoftware/kryo/c/i;-><init>(I)V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    .line 157
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->t:Z

    .line 164
    new-instance v2, Lcom/esotericsoftware/kryo/c/c;

    invoke-direct {v2, p0}, Lcom/esotericsoftware/kryo/c/c;-><init>(Lcom/esotericsoftware/kryo/c;)V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/c;->y:Lcom/esotericsoftware/kryo/c/e;

    if-eqz p1, :cond_15

    .line 181
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    .line 182
    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/a;->a(Lcom/esotericsoftware/kryo/c;)V

    .line 184
    iput-object p2, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    if-eqz p2, :cond_0

    .line 186
    invoke-interface {p2, p0}, Lcom/esotericsoftware/kryo/f;->a(Lcom/esotericsoftware/kryo/c;)V

    .line 187
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    .line 190
    :cond_0
    const-class p1, [B

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$b;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 191
    const-class p1, [C

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$c;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 192
    const-class p1, [S

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$i;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 193
    const-class p1, [I

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$f;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 194
    const-class p1, [J

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$g;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 195
    const-class p1, [F

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$e;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 196
    const-class p1, [D

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$d;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 197
    const-class p1, [Z

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$a;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 198
    const-class p1, [Ljava/lang/String;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$j;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 199
    const-class p1, [Ljava/lang/Object;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/f$h;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 200
    const-class p1, Ljava/math/BigInteger;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$c;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 201
    const-class p1, Ljava/math/BigDecimal;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$b;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 202
    const-class p1, Ljava/lang/Class;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$j;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 203
    const-class p1, Ljava/util/Date;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$s;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 204
    const-class p1, Ljava/lang/Enum;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$u;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 205
    const-class p1, Ljava/util/EnumSet;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$v;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 206
    const-class p1, Ljava/util/Currency;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$r;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 207
    const-class p1, Ljava/lang/StringBuffer;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$ad;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 208
    const-class p1, Ljava/lang/StringBuilder;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$ae;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 209
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$k;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 210
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$l;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 211
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$m;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 212
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcom/esotericsoftware/kryo/serializers/g$n;

    invoke-direct {p0, p2, v1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 213
    invoke-static {p1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcom/esotericsoftware/kryo/serializers/g$o;

    invoke-direct {p0, p2, v1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 214
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$p;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 215
    const-class p1, Ljava/util/TreeSet;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$ai;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 216
    const-class p1, Ljava/util/Collection;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/d;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 217
    const-class p1, Ljava/util/concurrent/ConcurrentSkipListMap;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$q;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 218
    const-class p1, Ljava/util/TreeMap;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$ah;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 219
    const-class p1, Ljava/util/Map;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/j;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 220
    const-class p1, Ljava/util/TimeZone;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$ag;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 221
    const-class p1, Ljava/util/Calendar;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$g;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 222
    const-class p1, Ljava/util/Locale;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$z;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 223
    const-class p1, Ljava/nio/charset/Charset;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$i;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 224
    const-class p1, Ljava/net/URL;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$aj;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    new-array p1, v3, [Ljava/lang/Object;

    .line 225
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$a;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 226
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$ak;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$ak;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    .line 227
    const-class p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$ab;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$ab;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    .line 228
    const-class p1, Ljava/util/BitSet;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$d;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$d;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V

    .line 229
    const-class p1, Lcom/esotericsoftware/kryo/e;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/g$y;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    const-string p1, "java.util.Optional"

    .line 2038
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Ljava/util/Optional;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/k$d;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_1
    const-string p1, "java.util.OptionalInt"

    .line 2039
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Ljava/util/OptionalInt;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/k$b;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_2
    const-string p1, "java.util.OptionalLong"

    .line 2040
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-class p1, Ljava/util/OptionalLong;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/k$c;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_3
    const-string p1, "java.util.OptionalDouble"

    .line 2041
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2042
    const-class p1, Ljava/util/OptionalDouble;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/k$a;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_4
    const-string p1, "java.time.Duration"

    .line 2051
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-class p1, Ljava/time/Duration;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$a;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_5
    const-string p1, "java.time.Instant"

    .line 2052
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-class p1, Ljava/time/Instant;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$b;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_6
    const-string p1, "java.time.LocalDate"

    .line 2053
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-class p1, Ljava/time/LocalDate;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$c;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_7
    const-string p1, "java.time.LocalTime"

    .line 2054
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-class p1, Ljava/time/LocalTime;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$e;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_8
    const-string p1, "java.time.LocalDateTime"

    .line 2055
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2056
    const-class p1, Ljava/time/LocalDateTime;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$d;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_9
    const-string p1, "java.time.ZoneOffset"

    .line 2057
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-class p1, Ljava/time/ZoneOffset;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$m;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_a
    const-string p1, "java.time.ZoneId"

    .line 2058
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-class p1, Ljava/time/ZoneId;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$l;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_b
    const-string p1, "java.time.OffsetTime"

    .line 2059
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-class p1, Ljava/time/OffsetTime;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$h;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_c
    const-string p1, "java.time.OffsetDateTime"

    .line 2060
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2061
    const-class p1, Ljava/time/OffsetDateTime;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$g;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_d
    const-string p1, "java.time.ZonedDateTime"

    .line 2062
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2063
    const-class p1, Ljava/time/ZonedDateTime;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$n;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_e
    const-string p1, "java.time.Year"

    .line 2064
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-class p1, Ljava/time/Year;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$k;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_f
    const-string p1, "java.time.YearMonth"

    .line 2065
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-class p1, Ljava/time/YearMonth;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$j;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_10
    const-string p1, "java.time.MonthDay"

    .line 2066
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-class p1, Ljava/time/MonthDay;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$f;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_11
    const-string p1, "java.time.Period"

    .line 2067
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-class p1, Ljava/time/Period;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/n$i;

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_12
    const-string p1, "java.util.ImmutableCollections"

    .line 3037
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3038
    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/h$a;->a(Lcom/esotericsoftware/kryo/c;)V

    .line 3039
    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/h$b;->a(Lcom/esotericsoftware/kryo/c;)V

    .line 3040
    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/h$c;->a(Lcom/esotericsoftware/kryo/c;)V

    :cond_13
    const-string p1, "java.lang.Record"

    .line 234
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 235
    const-class p2, Lcom/esotericsoftware/kryo/serializers/l;

    .line 3292
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3294
    :catch_0
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    const-string v0, "default serializer cannot be added: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 237
    :cond_14
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->h:I

    .line 240
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$x;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$x;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 241
    const-class p1, Ljava/lang/String;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$af;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$af;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 242
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$w;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$w;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 243
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$e;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$e;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 244
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$f;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$f;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 245
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$h;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$h;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 246
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$ac;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$ac;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 247
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$aa;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$aa;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    .line 248
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/g$t;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/g$t;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    return-void

    .line 179
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "classResolver cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/f;)V
    .locals 1

    .line 174
    new-instance v0, Lcom/esotericsoftware/kryo/c/b;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/c/b;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/c;-><init>(Lcom/esotericsoftware/kryo/a;Lcom/esotericsoftware/kryo/f;)V

    return-void
.end method

.method private a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Z)I
    .locals 5

    .line 891
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-interface {v0, p2}, Lcom/esotericsoftware/kryo/f;->a(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 895
    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p3

    if-nez p3, :cond_3

    .line 897
    sget-boolean p2, Lcom/esotericsoftware/b/a;->e:Z

    const/4 p3, 0x0

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne p2, v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    const-string p2, "Read"

    invoke-static {p2, p3, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 898
    :cond_2
    iput-object p3, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;

    return v1

    :cond_3
    if-nez v0, :cond_6

    .line 902
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/c/i;->a(I)V

    .line 903
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    iget p1, p1, Lcom/esotericsoftware/kryo/c/i;->b:I

    return p1

    :cond_4
    if-nez v0, :cond_5

    .line 907
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/c/i;->a(I)V

    .line 908
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    iget p1, p1, Lcom/esotericsoftware/kryo/c/i;->b:I

    return p1

    .line 910
    :cond_5
    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p3

    :cond_6
    const-string v0, ": "

    const-string v4, "kryo"

    if-ne p3, v3, :cond_9

    .line 913
    sget-boolean p3, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz p3, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Read: <not null>"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result v1

    invoke-static {v1}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_7
    iget-object p3, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-interface {p3}, Lcom/esotericsoftware/kryo/f;->a()I

    move-result p3

    .line 916
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read initial reference "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_8
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c/i;->a(I)V

    .line 918
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    iget p1, p1, Lcom/esotericsoftware/kryo/c/i;->b:I

    return p1

    :cond_9
    add-int/2addr p3, v2

    .line 922
    iget-object p2, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-interface {p2, p3}, Lcom/esotericsoftware/kryo/f;->a(I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;

    .line 923
    sget-boolean p2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Read reference "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;

    invoke-static {p3}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v1
.end method

.method private a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/i;)I
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryo/c;->h:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 435
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/kryo/c$a;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/c$a;->a:Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/esotericsoftware/kryo/c$a;

    invoke-direct {v1, p1, p2}, Lcom/esotericsoftware/kryo/c$a;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/i;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/h;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 429
    new-instance v0, Lcom/esotericsoftware/kryo/i$c;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/i$c;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/i;)I

    return-void

    .line 427
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static f(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1248
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/esotericsoftware/kryo/c/n;->g(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0

    .line 1249
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0

    .line 1247
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static g(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class is not registered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nNote: To register this class use: kryo.register("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-static {p0}, Lcom/esotericsoftware/kryo/c/n;->e(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".class);"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;
    .locals 1

    if-eqz p1, :cond_2

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/a;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 761
    :cond_1
    throw p1

    .line 756
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;
    .locals 1

    if-eqz p1, :cond_2

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    invoke-interface {v0, p1, p2}, Lcom/esotericsoftware/kryo/a;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 616
    :cond_1
    throw p1

    .line 611
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;
    .locals 2

    .line 458
    const-class v0, Lcom/esotericsoftware/kryo/b;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-class v0, Lcom/esotericsoftware/kryo/b;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/b;

    .line 460
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/b;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/b;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/esotericsoftware/kryo/c/n;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/i;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/esotericsoftware/kryo/i;->a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 768
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->b()V

    const/4 v0, 0x1

    .line 771
    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 772
    invoke-direct {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 773
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-object p1

    .line 774
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v2

    .line 7060
    iget-object v2, v2, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 774
    invoke-virtual {v2, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 775
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    iget v2, v2, Lcom/esotericsoftware/kryo/c/i;->b:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v1

    .line 8060
    iget-object v1, v1, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 777
    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 778
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne v1, v0, :cond_5

    :cond_4
    const-string v1, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {v1, p2, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_6
    return-object p2

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 782
    :cond_7
    throw p1

    .line 767
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 766
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/kryo/h;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    if-eqz p3, :cond_8

    .line 790
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->b()V

    const/4 v0, 0x1

    .line 793
    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 794
    invoke-direct {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 795
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-object p1

    .line 796
    :cond_1
    :try_start_1
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 797
    iget-object p3, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    iget p3, p3, Lcom/esotericsoftware/kryo/c/i;->b:I

    if-ne v1, p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 799
    :cond_2
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 800
    :cond_3
    :goto_0
    sget-boolean p3, Lcom/esotericsoftware/b/a;->e:Z

    if-nez p3, :cond_4

    sget-boolean p3, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne p3, v0, :cond_5

    :cond_4
    const-string p3, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {p3, p2, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_6
    return-object p2

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 804
    :cond_7
    throw p1

    .line 789
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 788
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 787
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 949
    iput v0, p0, Lcom/esotericsoftware/kryo/c;->a:I

    .line 950
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->r:Lcom/esotericsoftware/kryo/c/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/c/m;->a()V

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/a;->a()V

    .line 952
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v1, :cond_1

    .line 953
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/f;->b()V

    const/4 v1, 0x0

    .line 954
    iput-object v1, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;

    .line 957
    :cond_1
    iput v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    .line 958
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->w:Lcom/esotericsoftware/kryo/c/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/c/g;->a()V

    .line 960
    :cond_2
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_3

    const-string v0, "kryo"

    const-string v1, "Object graph complete."

    invoke-static {v0, v1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_8

    .line 702
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->b()V

    const/4 v0, 0x1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 705
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-void

    .line 708
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v1

    .line 709
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 713
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_2
    return-void

    .line 710
    :cond_3
    :try_start_2
    sget-boolean v2, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne v2, v0, :cond_5

    :cond_4
    const-string v2, "Write"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 6060
    :cond_5
    iget-object v1, v1, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 711
    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 713
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 714
    :cond_7
    throw p1

    .line 701
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V
    .locals 3

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    if-eqz p3, :cond_6

    .line 638
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->b()V

    const/4 v0, 0x1

    .line 640
    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 644
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-void

    .line 641
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne v1, v0, :cond_3

    :cond_2
    const-string v1, "Write"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 642
    :cond_3
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 645
    :cond_5
    throw p1

    .line 637
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 636
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "object cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 635
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 275
    new-instance v0, Lcom/esotericsoftware/kryo/i$d;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/i$d;-><init>(Lcom/esotericsoftware/kryo/h;)V

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;Lcom/esotericsoftware/kryo/i;)I

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 932
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    if-lez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->x:Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->w:Lcom/esotericsoftware/kryo/c/g;

    invoke-virtual {v1, v0, p1}, Lcom/esotericsoftware/kryo/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 936
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c;->x:Ljava/lang/Object;

    return-void

    .line 934
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 938
    :cond_1
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 939
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/c/i;->a()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    .line 940
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-interface {v1, v0, p1}, Lcom/esotericsoftware/kryo/f;->a(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 721
    sget-boolean p2, Lcom/esotericsoftware/b/a;->e:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne p2, v1, :cond_1

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result p3

    const-string v2, "Write"

    invoke-static {v2, p2, p3}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 722
    :cond_1
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return v1

    .line 726
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/esotericsoftware/kryo/f;->a(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, "Write: <not null>"

    const-string v4, "kryo"

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    .line 728
    sget-boolean p2, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result p3

    invoke-static {p3}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_3
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    :cond_4
    return v0

    .line 735
    :cond_5
    iget-object p3, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-interface {p3, p2}, Lcom/esotericsoftware/kryo/f;->a(Ljava/lang/Object;)I

    move-result p3

    const/4 v2, -0x1

    const-string v5, ": "

    if-eq p3, v2, :cond_7

    .line 739
    sget-boolean v0, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Write reference "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result p2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p3, p3, 0x2

    .line 740
    invoke-virtual {p1, p3, v1}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    return v1

    .line 745
    :cond_7
    iget-object p3, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    invoke-interface {p3, p2}, Lcom/esotericsoftware/kryo/f;->b(Ljava/lang/Object;)I

    move-result p3

    .line 746
    sget-boolean v2, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_8
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    .line 748
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Write initial reference "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v0
.end method

.method public final b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/a;->b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/g;->a(Lcom/esotericsoftware/kryo/h;)V

    return-object v0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    new-instance v1, Lcom/esotericsoftware/kryo/g;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->getNextRegistrationId()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lcom/esotericsoftware/kryo/g;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;I)V

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/a;->a(Lcom/esotericsoftware/kryo/g;)Lcom/esotericsoftware/kryo/g;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;
    .locals 4

    if-eqz p1, :cond_3

    .line 445
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 448
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 449
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/kryo/c$a;

    .line 450
    iget-object v3, v2, Lcom/esotericsoftware/kryo/c$a;->a:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    iget-object v0, v2, Lcom/esotericsoftware/kryo/c$a;->b:Lcom/esotericsoftware/kryo/i;

    invoke-interface {v0, p0, p1}, Lcom/esotericsoftware/kryo/i;->a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3469
    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->f:Lcom/esotericsoftware/kryo/i;

    invoke-interface {v0, p0, p1}, Lcom/esotericsoftware/kryo/i;->a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object p1

    return-object p1

    .line 443
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;
    .locals 5

    if-eqz p1, :cond_a

    .line 867
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->b()V

    const/4 v0, 0x1

    .line 869
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 884
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 11046
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 874
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 875
    invoke-direct {p0, p1, v2, v3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Z)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 876
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    iget v1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_2
    return-object p1

    .line 11060
    :cond_3
    :try_start_2
    iget-object v1, v1, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 877
    invoke-virtual {v1, p0, p1, v2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 878
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    iget v2, v2, Lcom/esotericsoftware/kryo/c/i;->b:I

    if-ne v3, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 12060
    :cond_4
    iget-object v1, v1, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 880
    invoke-virtual {v1, p0, p1, v2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 881
    :cond_5
    :goto_0
    sget-boolean v2, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne v2, v0, :cond_7

    :cond_6
    const-string v2, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    :cond_7
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_8
    return-object v1

    :catchall_0
    move-exception p1

    iget v1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v1, :cond_9

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 885
    :cond_9
    throw p1

    .line 866
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_d

    if-eqz p2, :cond_c

    .line 812
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->b()V

    const/4 v0, 0x1

    .line 815
    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Read"

    if-eqz v1, :cond_2

    .line 816
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Z)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 817
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-object p1

    .line 818
    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v3

    .line 9060
    iget-object v3, v3, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 818
    invoke-virtual {v3, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 819
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    iget v3, v3, Lcom/esotericsoftware/kryo/c/i;->b:I

    if-ne v1, v3, :cond_7

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v1

    .line 10060
    iget-object v1, v1, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 822
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/h;->getAcceptsNull()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result v3

    if-nez v3, :cond_6

    .line 823
    sget-boolean p2, Lcom/esotericsoftware/b/a;->e:Z

    const/4 v1, 0x0

    if-nez p2, :cond_3

    sget-boolean p2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne p2, v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 831
    :cond_4
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_5
    return-object v1

    .line 826
    :cond_6
    :try_start_3
    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 828
    :cond_7
    :goto_0
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne v1, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {v2, p2, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    :cond_9
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_a
    return-object p2

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 832
    :cond_b
    throw p1

    .line 811
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 810
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/kryo/h;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_e

    if-eqz p2, :cond_d

    if-eqz p3, :cond_c

    .line 841
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->b()V

    const/4 v0, 0x1

    .line 844
    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Read"

    if-eqz v1, :cond_2

    .line 845
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Z)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 846
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c;->e:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-object p1

    .line 847
    :cond_1
    :try_start_2
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 848
    iget-object p3, p0, Lcom/esotericsoftware/kryo/c;->s:Lcom/esotericsoftware/kryo/c/i;

    iget p3, p3, Lcom/esotericsoftware/kryo/c/i;->b:I

    if-ne v1, p3, :cond_7

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/h;->getAcceptsNull()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->c()B

    move-result v1

    if-nez v1, :cond_6

    .line 851
    sget-boolean p2, Lcom/esotericsoftware/b/a;->e:Z

    const/4 p3, 0x0

    if-nez p2, :cond_3

    sget-boolean p2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne p2, v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {v2, p3, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 859
    :cond_4
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_5
    return-object p3

    .line 854
    :cond_6
    :try_start_3
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 856
    :cond_7
    :goto_0
    sget-boolean p3, Lcom/esotericsoftware/b/a;->e:Z

    if-nez p3, :cond_8

    sget-boolean p3, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p3, :cond_9

    iget p3, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne p3, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result p1

    invoke-static {v2, p2, p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    :cond_9
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_a
    return-object p2

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 860
    :cond_b
    throw p1

    .line 840
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 839
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 838
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 967
    :cond_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->v:Z

    if-eqz v0, :cond_1

    return-object p1

    .line 968
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->w:Lcom/esotericsoftware/kryo/c/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/c/g;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/c/g;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c;->w:Lcom/esotericsoftware/kryo/c/g;

    .line 971
    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->w:Lcom/esotericsoftware/kryo/c/g;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/c/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 984
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->u:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->u:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_3
    return-object v0

    .line 974
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->t:Z

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c;->x:Ljava/lang/Object;

    .line 976
    :cond_5
    instance-of v0, p1, Lcom/esotericsoftware/kryo/d;

    if-eqz v0, :cond_6

    .line 977
    check-cast p1, Lcom/esotericsoftware/kryo/d;

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/d;->a()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 979
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/esotericsoftware/kryo/h;->copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 980
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->x:Ljava/lang/Object;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    .line 981
    :cond_7
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    if-ne v0, v1, :cond_9

    :cond_8
    const-string v0, "Copy"

    const/4 v2, -0x1

    invoke-static {v0, p1, v2}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    :cond_9
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_a
    return-object p1

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/c;->u:I

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 985
    :cond_b
    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1071
    sget-boolean v0, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v0, :cond_2

    .line 1072
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v0, :cond_0

    .line 1073
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c;->p:Ljava/lang/Thread;

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->p:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1075
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Kryo must not be accessed concurrently by multiple threads."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_2
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->a:I

    iget v1, p0, Lcom/esotericsoftware/kryo/c;->o:I

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 1078
    iput v0, p0, Lcom/esotericsoftware/kryo/c;->a:I

    return-void

    .line 1077
    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Max depth exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V
    .locals 5

    if-eqz p1, :cond_d

    if-eqz p3, :cond_c

    .line 678
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->b()V

    const/4 v0, 0x1

    .line 680
    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Write"

    if-eqz v1, :cond_1

    .line 681
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    .line 694
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_0
    return-void

    .line 682
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/h;->getAcceptsNull()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p2, :cond_5

    .line 684
    sget-boolean p2, Lcom/esotericsoftware/b/a;->e:Z

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result p3

    invoke-static {v2, p2, p3}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    const/4 p2, 0x0

    .line 685
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/a/c;->a(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_4
    return-void

    .line 688
    :cond_5
    :try_start_3
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v1, :cond_6

    const-string v1, "kryo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Write: <not null>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v4

    invoke-static {v4}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_6
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    .line 691
    :cond_7
    sget-boolean v1, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne v1, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v1

    invoke-static {v2, p2, v1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 692
    :cond_9
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/h;->write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 694
    iget p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 695
    :cond_b
    throw p1

    .line 677
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 676
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;
    .locals 3

    const-string v0, "type cannot be null."

    if-eqz p1, :cond_a

    .line 559
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/a;->b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v1

    if-nez v1, :cond_9

    .line 561
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    const-class v0, Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_2

    .line 564
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Ljava/lang/Enum;

    if-eq p1, v2, :cond_2

    .line 567
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 569
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/a;->b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_2
    const-class v2, Ljava/util/EnumSet;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 575
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    const-class v1, Ljava/util/EnumSet;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/a;->b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_8

    .line 4259
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 577
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/c$a;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/a;->b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v1, :cond_9

    .line 579
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->m:Z

    if-nez v0, :cond_7

    .line 580
    sget-boolean v0, Lcom/esotericsoftware/b/a;->b:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->n:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;)V

    .line 581
    :cond_6
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/a;->a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v1

    goto :goto_3

    .line 579
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4258
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    return-object v1

    .line 557
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;
    .locals 0

    .line 601
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object p1

    .line 5060
    iget-object p1, p1, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    return-object p1
.end method

.method public final e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1192
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    .line 12071
    iget-object v1, v0, Lcom/esotericsoftware/kryo/g;->e:Lorg/objenesis/a/a;

    if-nez v1, :cond_1

    .line 12186
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->l:Lorg/objenesis/b/b;

    invoke-interface {v1, p1}, Lorg/objenesis/b/b;->a(Ljava/lang/Class;)Lorg/objenesis/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13077
    iput-object v1, v0, Lcom/esotericsoftware/kryo/g;->e:Lorg/objenesis/a/a;

    goto :goto_0

    .line 13076
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "instantiator cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1198
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/objenesis/a/a;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->k:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getContext()Lcom/esotericsoftware/kryo/c/m;
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->q:Lcom/esotericsoftware/kryo/c/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/c/m;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/c/m;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c;->q:Lcom/esotericsoftware/kryo/c/m;

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->q:Lcom/esotericsoftware/kryo/c/m;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 1216
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->a:I

    return v0
.end method

.method public getGenerics()Lcom/esotericsoftware/kryo/c/e;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->y:Lcom/esotericsoftware/kryo/c/e;

    return-object v0
.end method

.method public getGraphContext()Lcom/esotericsoftware/kryo/c/m;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->r:Lcom/esotericsoftware/kryo/c/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/c/m;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/c/m;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c;->r:Lcom/esotericsoftware/kryo/c/m;

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->r:Lcom/esotericsoftware/kryo/c/m;

    return-object v0
.end method

.method public getNextRegistrationId()I
    .locals 2

    .line 545
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->j:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c;->i:Lcom/esotericsoftware/kryo/a;

    invoke-interface {v1, v0}, Lcom/esotericsoftware/kryo/a;->a(I)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryo/c;->j:I

    return v0

    .line 547
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/c;->j:I

    goto :goto_0

    .line 549
    :cond_1
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "No registration IDs are available."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReferenceResolver()Lcom/esotericsoftware/kryo/f;
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c;->c:Lcom/esotericsoftware/kryo/f;

    return-object v0
.end method

.method public getReferences()Z
    .locals 1

    .line 1167
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->d:Z

    return v0
.end method

.method public isRegistrationRequired()Z
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c;->m:Z

    return v0
.end method

.method public setDefaultSerializer(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/h;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 266
    new-instance v0, Lcom/esotericsoftware/kryo/i$c;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/i$c;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c;->f:Lcom/esotericsoftware/kryo/i;

    return-void

    .line 265
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serializer cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInstantiatorStrategy(Lorg/objenesis/b/b;)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c;->l:Lorg/objenesis/b/b;

    return-void
.end method

.method public setRegistrationRequired(Z)V
    .locals 1

    .line 1114
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/c;->m:Z

    .line 1115
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Registration required: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
