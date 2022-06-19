.class public final Lscala/Predef$;
.super Lscala/LowPriorityImplicits;
.source "Predef.scala"

# interfaces
.implements Lscala/DeprecatedPredef;


# static fields
.field public static final MODULE$:Lscala/Predef$;


# instance fields
.field private final ClassManifest:Lscala/reflect/ClassManifestFactory$;

.field private final Manifest:Lscala/reflect/ManifestFactory$;

.field private final Map:Lscala/collection/immutable/Map$;

.field private final NoManifest:Lscala/reflect/NoManifest$;

.field private final Set:Lscala/collection/immutable/Set$;

.field private final StringCanBuildFrom:Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/generic/CanBuildFrom<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$Predef$$singleton_$eq$colon$eq:Lscala/Predef$$eq$colon$eq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Predef$$eq$colon$eq<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final singleton_$less$colon$less:Lscala/Predef$$less$colon$less;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Predef$$less$colon$less<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Predef$;

    invoke-direct {v0}, Lscala/Predef$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lscala/LowPriorityImplicits;-><init>()V

    sput-object p0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {p0}, Lscala/DeprecatedPredef$class;->$init$(Lscala/Predef$;)V

    .line 89
    sget-object v0, Lscala/package$;->MODULE$:Lscala/package$;

    .line 90
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    .line 96
    sget-object v0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    iput-object v0, p0, Lscala/Predef$;->Map:Lscala/collection/immutable/Map$;

    .line 97
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    iput-object v0, p0, Lscala/Predef$;->Set:Lscala/collection/immutable/Set$;

    .line 111
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->ClassManifest()Lscala/reflect/ClassManifestFactory$;

    move-result-object v0

    iput-object v0, p0, Lscala/Predef$;->ClassManifest:Lscala/reflect/ClassManifestFactory$;

    .line 114
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    iput-object v0, p0, Lscala/Predef$;->Manifest:Lscala/reflect/ManifestFactory$;

    .line 117
    sget-object v0, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    iput-object v0, p0, Lscala/Predef$;->NoManifest:Lscala/reflect/NoManifest$;

    .line 298
    new-instance v0, Lscala/Predef$$anon$3;

    invoke-direct {v0}, Lscala/Predef$$anon$3;-><init>()V

    iput-object v0, p0, Lscala/Predef$;->StringCanBuildFrom:Lscala/collection/generic/CanBuildFrom;

    .line 384
    new-instance v0, Lscala/Predef$$anon$1;

    invoke-direct {v0}, Lscala/Predef$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/Predef$;->singleton_$less$colon$less:Lscala/Predef$$less$colon$less;

    .line 399
    new-instance v0, Lscala/Predef$$anon$2;

    invoke-direct {v0}, Lscala/Predef$$anon$2;-><init>()V

    iput-object v0, p0, Lscala/Predef$;->scala$Predef$$singleton_$eq$colon$eq:Lscala/Predef$$eq$colon$eq;

    return-void
.end method


# virtual methods
.method public $conforms()Lscala/Predef$$less$colon$less;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Predef$$less$colon$less<",
            "TA;TA;>;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lscala/Predef$;->singleton_$less$colon$less:Lscala/Predef$$less$colon$less;

    return-object v0
.end method

.method public $qmark$qmark$qmark()Lscala/runtime/Nothing$;
    .locals 1

    .line 225
    new-instance v0, Lscala/NotImplementedError;

    invoke-direct {v0}, Lscala/NotImplementedError;-><init>()V

    throw v0
.end method

.method public ArrayCharSequence([C)Lscala/Predef$ArrayCharSequence;
    .locals 1

    .line 291
    new-instance v0, Lscala/Predef$ArrayCharSequence;

    invoke-direct {v0, p1}, Lscala/Predef$ArrayCharSequence;-><init>([C)V

    return-object v0
.end method

.method public ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    return-object p1
.end method

.method public Boolean2boolean(Ljava/lang/Boolean;)Z
    .locals 0

    .line 361
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public Byte2byte(Ljava/lang/Byte;)B
    .locals 0

    .line 354
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method public Character2char(Ljava/lang/Character;)C
    .locals 0

    .line 356
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method public ClassManifest()Lscala/reflect/ClassManifestFactory$;
    .locals 1

    .line 111
    iget-object v0, p0, Lscala/Predef$;->ClassManifest:Lscala/reflect/ClassManifestFactory$;

    return-object v0
.end method

.method public Double2double(Ljava/lang/Double;)D
    .locals 2

    .line 360
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public Ensuring(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    return-object p1
.end method

.method public Float2float(Ljava/lang/Float;)F
    .locals 0

    .line 359
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public Integer2int(Ljava/lang/Integer;)I
    .locals 0

    .line 357
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public Long2long(Ljava/lang/Long;)J
    .locals 2

    .line 358
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public Manifest()Lscala/reflect/ManifestFactory$;
    .locals 1

    .line 114
    iget-object v0, p0, Lscala/Predef$;->Manifest:Lscala/reflect/ManifestFactory$;

    return-object v0
.end method

.method public Map()Lscala/collection/immutable/Map$;
    .locals 1

    .line 96
    iget-object v0, p0, Lscala/Predef$;->Map:Lscala/collection/immutable/Map$;

    return-object v0
.end method

.method public NoManifest()Lscala/reflect/NoManifest$;
    .locals 1

    .line 117
    iget-object v0, p0, Lscala/Predef$;->NoManifest:Lscala/reflect/NoManifest$;

    return-object v0
.end method

.method public RichException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p1
.end method

.method public SeqCharSequence(Lscala/collection/IndexedSeq;)Lscala/Predef$SeqCharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Predef$SeqCharSequence;"
        }
    .end annotation

    .line 284
    new-instance v0, Lscala/Predef$SeqCharSequence;

    invoke-direct {v0, p1}, Lscala/Predef$SeqCharSequence;-><init>(Lscala/collection/IndexedSeq;)V

    return-object v0
.end method

.method public Set()Lscala/collection/immutable/Set$;
    .locals 1

    .line 97
    iget-object v0, p0, Lscala/Predef$;->Set:Lscala/collection/immutable/Set$;

    return-object v0
.end method

.method public Short2short(Ljava/lang/Short;)S
    .locals 0

    .line 355
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method public StringAdd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 272
    new-instance v0, Lscala/Predef$StringAdd;

    invoke-direct {v0, p1}, Lscala/Predef$StringAdd;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public StringCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lscala/Predef$;->StringCanBuildFrom:Lscala/collection/generic/CanBuildFrom;

    return-object v0
.end method

.method public StringFormat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    return-object p1
.end method

.method public any2ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->any2ArrowAssoc(Lscala/Predef$;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public any2Ensuring(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->any2Ensuring(Lscala/Predef$;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public any2stringadd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    return-object p1
.end method

.method public any2stringfmt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->any2stringfmt(Lscala/Predef$;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public arrayToCharSequence([C)Ljava/lang/CharSequence;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->arrayToCharSequence(Lscala/Predef$;[C)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public assert(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "assertion failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final assert(ZLscala/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "assertion failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public assume(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "assumption failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final assume(ZLscala/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "assumption failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public augmentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public boolean2Boolean(Z)Ljava/lang/Boolean;
    .locals 0

    .line 352
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public booleanArrayOps([Z)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Lscala/collection/mutable/ArrayOps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofBoolean;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofBoolean;-><init>([Z)V

    return-object v0
.end method

.method public byte2Byte(B)Ljava/lang/Byte;
    .locals 0

    .line 345
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public byteArrayOps([B)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lscala/collection/mutable/ArrayOps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofByte;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofByte;-><init>([B)V

    return-object v0
.end method

.method public char2Character(C)Ljava/lang/Character;
    .locals 0

    .line 347
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public charArrayOps([C)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Lscala/collection/mutable/ArrayOps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofChar;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofChar;-><init>([C)V

    return-object v0
.end method

.method public classManifest(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public classOf()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public conforms()Lscala/Predef$$less$colon$less;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Predef$$less$colon$less<",
            "TA;TA;>;"
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v0

    return-object v0
.end method

.method public double2Double(D)Ljava/lang/Double;
    .locals 0

    .line 351
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public doubleArrayOps([D)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Lscala/collection/mutable/ArrayOps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofDouble;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofDouble;-><init>([D)V

    return-object v0
.end method

.method public error(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    .line 139
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {v0, p1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    return-object p1
.end method

.method public exceptionWrapper(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->exceptionWrapper(Lscala/Predef$;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public float2Float(F)Ljava/lang/Float;
    .locals 0

    .line 350
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public floatArrayOps([F)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Lscala/collection/mutable/ArrayOps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofFloat;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofFloat;-><init>([F)V

    return-object v0
.end method

.method public genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/ArrayOps<",
            "TT;>;"
        }
    .end annotation

    .line 318
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto/16 :goto_0

    .line 320
    :cond_0
    instance-of v0, p1, [Z

    if-eqz v0, :cond_1

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lscala/Predef$;->booleanArrayOps([Z)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    .line 321
    :cond_1
    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lscala/Predef$;->byteArrayOps([B)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    .line 322
    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lscala/Predef$;->charArrayOps([C)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    .line 323
    :cond_3
    instance-of v0, p1, [D

    if-eqz v0, :cond_4

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lscala/Predef$;->doubleArrayOps([D)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    .line 324
    :cond_4
    instance-of v0, p1, [F

    if-eqz v0, :cond_5

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lscala/Predef$;->floatArrayOps([F)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    .line 325
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lscala/Predef$;->intArrayOps([I)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    .line 326
    :cond_6
    instance-of v0, p1, [J

    if-eqz v0, :cond_7

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lscala/Predef$;->longArrayOps([J)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    .line 327
    :cond_7
    instance-of v0, p1, [S

    if-eqz v0, :cond_8

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lscala/Predef$;->shortArrayOps([S)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    .line 328
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/Predef$;->unitArrayOps([Lscala/runtime/BoxedUnit;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    goto :goto_0

    :cond_9
    if-nez p1, :cond_a

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 318
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)TA;"
        }
    .end annotation

    return-object p1
.end method

.method public implicitly(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public int2Integer(I)Ljava/lang/Integer;
    .locals 0

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public intArrayOps([I)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lscala/collection/mutable/ArrayOps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofInt;-><init>([I)V

    return-object v0
.end method

.method public locally(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public long2Long(J)Ljava/lang/Long;
    .locals 0

    .line 349
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public longArrayOps([J)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lscala/collection/mutable/ArrayOps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofLong;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofLong;-><init>([J)V

    return-object v0
.end method

.method public manifest(Lscala/reflect/Manifest;)Lscala/reflect/Manifest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/Manifest<",
            "TT;>;)",
            "Lscala/reflect/Manifest<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public optManifest(Lscala/reflect/OptManifest;)Lscala/reflect/OptManifest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/OptManifest<",
            "TT;>;)",
            "Lscala/reflect/OptManifest<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1

    .line 308
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {v0, p1}, Lscala/Console$;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public printf(Ljava/lang/String;Lscala/collection/Seq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 311
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    new-instance v1, Lscala/collection/immutable/StringOps;

    invoke-direct {v1, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/Console$;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public println()V
    .locals 1

    .line 309
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {v0}, Lscala/Console$;->println()V

    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1

    .line 310
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {v0, p1}, Lscala/Console$;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public readBoolean()Z
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readBoolean(Lscala/Predef$;)Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readByte(Lscala/Predef$;)B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readChar(Lscala/Predef$;)C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readDouble(Lscala/Predef$;)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readFloat(Lscala/Predef$;)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readInt(Lscala/Predef$;)I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readLine(Lscala/Predef$;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1, p2}, Lscala/DeprecatedPredef$class;->readLine(Lscala/Predef$;Ljava/lang/String;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readLong()J
    .locals 2

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readLong(Lscala/Predef$;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/DeprecatedPredef$class;->readShort(Lscala/Predef$;)S

    move-result v0

    return v0
.end method

.method public readf(Ljava/lang/String;)Lscala/collection/immutable/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->readf(Lscala/Predef$;Ljava/lang/String;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public readf1(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->readf1(Lscala/Predef$;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readf2(Ljava/lang/String;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->readf2(Lscala/Predef$;Ljava/lang/String;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public readf3(Ljava/lang/String;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Tuple3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->readf3(Lscala/Predef$;Ljava/lang/String;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lscala/collection/mutable/ArrayOps<",
            "TT;>;"
        }
    .end annotation

    .line 339
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofRef;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofRef;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public require(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "requirement failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final require(ZLscala/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "requirement failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seqToCharSequence(Lscala/collection/IndexedSeq;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1}, Lscala/DeprecatedPredef$class;->seqToCharSequence(Lscala/Predef$;Lscala/collection/IndexedSeq;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public short2Short(S)Ljava/lang/Short;
    .locals 0

    .line 346
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public shortArrayOps([S)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Lscala/collection/mutable/ArrayOps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofShort;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofShort;-><init>([S)V

    return-object v0
.end method

.method public tuple2ToZippedOps(Lscala/Tuple2;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TT1;TT2;>;)",
            "Lscala/Tuple2<",
            "TT1;TT2;>;"
        }
    .end annotation

    return-object p1
.end method

.method public tuple3ToZippedOps(Lscala/Tuple3;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple3<",
            "TT1;TT2;TT3;>;)",
            "Lscala/Tuple3<",
            "TT1;TT2;TT3;>;"
        }
    .end annotation

    return-object p1
.end method

.method public unaugmentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public unitArrayOps([Lscala/runtime/BoxedUnit;)Lscala/collection/mutable/ArrayOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/runtime/BoxedUnit;",
            ")",
            "Lscala/collection/mutable/ArrayOps<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Lscala/collection/mutable/ArrayOps$ofUnit;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayOps$ofUnit;-><init>([Lscala/runtime/BoxedUnit;)V

    return-object v0
.end method
