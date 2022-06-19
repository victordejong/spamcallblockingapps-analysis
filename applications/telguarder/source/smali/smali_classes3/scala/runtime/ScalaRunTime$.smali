.class public final Lscala/runtime/ScalaRunTime$;
.super Ljava/lang/Object;
.source "ScalaRunTime.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/ScalaRunTime$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/ScalaRunTime$;

    invoke-direct {v0}, Lscala/runtime/ScalaRunTime$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    return-void
.end method

.method private final arrayToString$1(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 7

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ", "

    const-string v3, "Array("

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v4, Lscala/runtime/BoxedUnit;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 312
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x0

    sget-object v5, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v5, p1, p2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    invoke-virtual {v0, v4, p1}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object p1

    new-instance p2, Lscala/runtime/ScalaRunTime$$anonfun$arrayToString$1$1;

    invoke-direct {p2}, Lscala/runtime/ScalaRunTime$$anonfun$arrayToString$1$1;-><init>()V

    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lscala/collection/immutable/Range;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    invoke-interface {p1, v3, v2, v1}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 314
    :cond_1
    :goto_0
    sget-object v0, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/WrappedArray$;->make(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/mutable/WrappedArray;->take(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v0, Lscala/runtime/ScalaRunTime$$anonfun$arrayToString$1$2;

    invoke-direct {v0, p2}, Lscala/runtime/ScalaRunTime$$anonfun$arrayToString$1$2;-><init>(I)V

    sget-object p2, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    sget-object v4, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v4

    invoke-virtual {p2, v4}, Lscala/collection/mutable/WrappedArray$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lscala/collection/TraversableLike;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    invoke-interface {p1, v3, v2, v1}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private isArrayClass(Ljava/lang/Class;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)Z"
        }
    .end annotation

    .line 32
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private final isScalaClass$1(Ljava/lang/Object;)Z
    .locals 1

    .line 268
    invoke-direct {p0, p1}, Lscala/runtime/ScalaRunTime$;->packageOf$1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scala."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final isScalaCompilerClass$1(Ljava/lang/Object;)Z
    .locals 1

    .line 269
    invoke-direct {p0, p1}, Lscala/runtime/ScalaRunTime$;->packageOf$1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scala.tools.nsc."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final isSubClassOf$1(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 274
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 275
    invoke-static {p2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    .line 276
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private final isXmlMetaData$1(Ljava/lang/Class;)Z
    .locals 1

    const-string v0, "scala.xml.MetaData"

    .line 281
    invoke-direct {p0, p1, v0}, Lscala/runtime/ScalaRunTime$;->isSubClassOf$1(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final isXmlNode$1(Ljava/lang/Class;)Z
    .locals 1

    const-string v0, "scala.xml.Node"

    .line 280
    invoke-direct {p0, p1, v0}, Lscala/runtime/ScalaRunTime$;->isSubClassOf$1(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final packageOf$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final useOwnToString$1(Ljava/lang/Object;)Z
    .locals 3

    .line 284
    instance-of v0, p1, Lscala/collection/immutable/Range;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lscala/collection/immutable/NumericRange;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 288
    :cond_3
    instance-of v0, p1, Lscala/collection/generic/Sorted;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 290
    :cond_4
    instance-of v0, p1, Lscala/collection/immutable/StringLike;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 292
    :cond_5
    instance-of v0, p1, Lscala/collection/TraversableView;

    if-eqz v0, :cond_6

    goto :goto_2

    .line 298
    :cond_6
    instance-of v0, p1, Lscala/collection/Traversable;

    if-eqz v0, :cond_7

    check-cast p1, Lscala/collection/Traversable;

    invoke-interface {p1}, Lscala/collection/Traversable;->hasDefiniteSize()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lscala/runtime/ScalaRunTime$;->isScalaClass$1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lscala/runtime/ScalaRunTime$;->isScalaCompilerClass$1(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/runtime/ScalaRunTime$;->isXmlNode$1(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/runtime/ScalaRunTime$;->isXmlMetaData$1(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_7
    :goto_3
    return v1
.end method


# virtual methods
.method public _equals(Lscala/Product;Ljava/lang/Object;)Z
    .locals 2

    .line 193
    instance-of v0, p2, Lscala/Product;

    if-eqz v0, :cond_0

    check-cast p2, Lscala/Product;

    invoke-interface {p1}, Lscala/Product;->productArity()I

    move-result v0

    invoke-interface {p2}, Lscala/Product;->productArity()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lscala/Product;->productIterator()Lscala/collection/Iterator;

    move-result-object p1

    invoke-interface {p2}, Lscala/Product;->productIterator()Lscala/collection/Iterator;

    move-result-object p2

    invoke-interface {p1, p2}, Lscala/collection/Iterator;->sameElements(Lscala/collection/Iterator;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public _hashCode(Lscala/Product;)I
    .locals 1

    .line 168
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p1}, Lscala/util/hashing/MurmurHash3$;->productHash(Lscala/Product;)I

    move-result p1

    return p1
.end method

.method public _toString(Lscala/Product;)Ljava/lang/String;
    .locals 3

    .line 166
    invoke-interface {p1}, Lscala/Product;->productIterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p1}, Lscala/Product;->productPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v1, "("

    invoke-virtual {p1, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    const-string v2, ")"

    invoke-interface {v0, p1, v1, v2}, Lscala/collection/Iterator;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public anyValClass(Ljava/lang/Object;Lscala/reflect/ClassTag;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 69
    sget-object p1, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {p1, p2}, Lscala/reflect/package$;->classTag(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;

    move-result-object p1

    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public arrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 51
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-class p1, [Lscala/runtime/BoxedUnit;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 52
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 57
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 59
    :cond_0
    instance-of v0, p1, Lscala/reflect/ClassTag;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/reflect/ClassTag;

    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Lscala/StringContext;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v3, "unsupported schematic "

    const-string v4, " ("

    const-string v5, ")"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public array_apply(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 73
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    aget-object p1, p1, p2

    goto/16 :goto_0

    .line 75
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    aget p1, p1, p2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 76
    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 77
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    check-cast p1, [J

    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    check-cast p1, [F

    aget p1, p1, p2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    aget-char p1, p1, p2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_0

    .line 80
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    check-cast p1, [B

    aget-byte p1, p1, p2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    check-cast p1, [S

    aget-short p1, p1, p2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    aget-boolean p1, p1, p2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    aget-object p1, p1, p2

    :goto_0
    return-object p1

    .line 84
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public array_clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 120
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([I)[I

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([D)[D

    move-result-object p1

    goto :goto_0

    .line 124
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    check-cast p1, [J

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([J)[J

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    check-cast p1, [F

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([F)[F

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([C)[C

    move-result-object p1

    goto :goto_0

    .line 127
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    check-cast p1, [B

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([B)[B

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    check-cast p1, [S

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([S)[S

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([Z)[Z

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1

    .line 131
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public array_length(Ljava/lang/Object;)I
    .locals 1

    .line 106
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    goto :goto_0

    .line 108
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    array-length p1, p1

    goto :goto_0

    .line 109
    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    array-length p1, p1

    goto :goto_0

    .line 110
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    check-cast p1, [J

    array-length p1, p1

    goto :goto_0

    .line 111
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    check-cast p1, [F

    array-length p1, p1

    goto :goto_0

    .line 112
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    array-length p1, p1

    goto :goto_0

    .line 113
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    check-cast p1, [B

    array-length p1, p1

    goto :goto_0

    .line 114
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    check-cast p1, [S

    array-length p1, p1

    goto :goto_0

    .line 115
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    array-length p1, p1

    goto :goto_0

    .line 116
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    array-length p1, p1

    :goto_0
    return p1

    .line 117
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public array_update(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2

    .line 90
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    aput-object p3, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 92
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p3

    aput p3, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 93
    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    aput-wide v0, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 94
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    check-cast p1, [J

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    aput-wide v0, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 95
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    check-cast p1, [F

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p3

    aput p3, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 96
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p3

    aput-char p3, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 97
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    check-cast p1, [B

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p3

    aput-byte p3, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 98
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    check-cast p1, [S

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p3

    aput-short p3, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 99
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p3

    aput-boolean p3, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 100
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    check-cast p3, Lscala/runtime/BoxedUnit;

    aput-object p3, p1, p2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-void

    .line 101
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public box(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 351
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-class p1, Ljava/lang/Byte;

    goto/16 :goto_8

    .line 353
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-class p1, Ljava/lang/Short;

    goto/16 :goto_8

    .line 354
    :cond_5
    :goto_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_6

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-class p1, Ljava/lang/Character;

    goto/16 :goto_8

    .line 355
    :cond_8
    :goto_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-class p1, Ljava/lang/Integer;

    goto :goto_8

    .line 356
    :cond_b
    :goto_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_c

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const-class p1, Ljava/lang/Long;

    goto :goto_8

    .line 357
    :cond_e
    :goto_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_f

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_f
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const-class p1, Ljava/lang/Float;

    goto :goto_8

    .line 358
    :cond_11
    :goto_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_12

    if-eqz p1, :cond_13

    goto :goto_6

    :cond_12
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    const-class p1, Ljava/lang/Double;

    goto :goto_8

    .line 359
    :cond_14
    :goto_6
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_15

    if-eqz p1, :cond_16

    goto :goto_7

    :cond_15
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const-class p1, Lscala/runtime/BoxedUnit;

    goto :goto_8

    .line 360
    :cond_17
    :goto_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_18

    if-eqz p1, :cond_19

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    const-class p1, Ljava/lang/Boolean;

    :cond_1a
    :goto_8
    return-object p1
.end method

.method public checkInitialized(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 163
    :cond_0
    new-instance p1, Lscala/UninitializedError;

    invoke-direct {p1}, Lscala/UninitializedError;-><init>()V

    throw p1
.end method

.method public drop(Ljava/lang/Object;ILscala/collection/generic/IsTraversableLike;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Repr:",
            "Ljava/lang/Object;",
            ">(TRepr;I",
            "Lscala/collection/generic/IsTraversableLike<",
            "TRepr;>;)TRepr;"
        }
    .end annotation

    .line 45
    invoke-interface {p3}, Lscala/collection/generic/IsTraversableLike;->conversion()Lscala/Function1;

    move-result-object p3

    invoke-interface {p3, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversableLike;

    invoke-interface {p1, p2}, Lscala/collection/GenTraversableLike;->drop(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ensureAccessible(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1

    .line 160
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0, p1}, Lscala/reflect/package$;->ensureAccessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1
.end method

.method public hash(B)I
    .locals 0

    return p1
.end method

.method public hash(C)I
    .locals 0

    return p1
.end method

.method public hash(D)I
    .locals 5

    double-to-int v0, p1

    int-to-double v1, v0

    cmpl-double v3, v1, p1

    if-nez v3, :cond_0

    return v0

    :cond_0
    double-to-long v0, p1

    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-nez v4, :cond_1

    .line 213
    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    :cond_1
    double-to-float v0, p1

    float-to-double v1, v0

    cmpl-double v3, v1, p1

    if-nez v3, :cond_2

    .line 216
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public hash(F)I
    .locals 7

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    float-to-long v0, p1

    long-to-double v2, v0

    float-to-double v4, p1

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    .line 223
    invoke-virtual {p0, v0, v1}, Lscala/runtime/ScalaRunTime$;->hash(J)I

    move-result p1

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    return p1
.end method

.method public hash(I)I
    .locals 0

    return p1
.end method

.method public hash(J)I
    .locals 3

    long-to-int v0, p1

    ushr-int/lit8 v1, v0, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr p1, v2

    long-to-int p2, p1

    add-int/2addr p2, v1

    xor-int p1, v0, p2

    return p1
.end method

.method public hash(Ljava/lang/Number;)I
    .locals 0

    .line 232
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->hashFromNumber(Ljava/lang/Number;)I

    move-result p1

    return p1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 205
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->hashFromNumber(Ljava/lang/Number;)I

    move-result p1

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    return p1
.end method

.method public hash(Lscala/runtime/BoxedUnit;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hash(S)I
    .locals 0

    return p1
.end method

.method public hash(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 240
    :goto_0
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public inlinedEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 189
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 190
    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isAnyVal(Ljava/lang/Object;)Z
    .locals 2

    .line 38
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    instance-of p1, p1, Lscala/runtime/BoxedUnit;

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isArray(Ljava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lscala/runtime/ScalaRunTime$;->isArrayClass(Ljava/lang/Class;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isArray$default$2()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTuple(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "scala.Tuple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValueClass(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    return p1
.end method

.method public replStringOf(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    .line 345
    invoke-virtual {p0, p1, p2}, Lscala/runtime/ScalaRunTime$;->stringOf(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    .line 346
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 348
    :goto_0
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sameElements(Lscala/collection/Seq;Lscala/collection/Seq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 248
    invoke-interface {p1, p2}, Lscala/collection/Seq;->sameElements(Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public final scala$runtime$ScalaRunTime$$inner$1(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    goto/16 :goto_0

    :cond_0
    const-string v0, ""

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\"\""

    goto/16 :goto_0

    .line 324
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lscala/runtime/RichChar$;->MODULE$:Lscala/runtime/RichChar$;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p2, v0}, Lscala/runtime/RichChar$;->isWhitespace$extension(C)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lscala/runtime/RichChar$;->MODULE$:Lscala/runtime/RichChar$;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->last()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p2, v0}, Lscala/runtime/RichChar$;->isWhitespace$extension(C)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_2
    new-instance p2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 325
    :cond_3
    invoke-direct {p0, p1}, Lscala/runtime/ScalaRunTime$;->useOwnToString$1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 326
    :cond_4
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lscala/runtime/ScalaRunTime$;->isArray$default$2()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/runtime/ScalaRunTime$;->isArray(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lscala/runtime/ScalaRunTime$;->arrayToString$1(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 327
    :cond_5
    instance-of v0, p1, Lscala/collection/Map;

    const-string v1, ", "

    const-string v2, ")"

    const-string v3, "("

    if-eqz v0, :cond_6

    check-cast p1, Lscala/collection/Map;

    invoke-interface {p1}, Lscala/collection/Map;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p2}, Lscala/collection/Iterator;->take(I)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v4, Lscala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$1;

    invoke-direct {v4, p2}, Lscala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$1;-><init>(I)V

    invoke-interface {v0, v4}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p2

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p1}, Lscala/collection/Map;->stringPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1, v2}, Lscala/collection/Iterator;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 328
    :cond_6
    instance-of v0, p1, Lscala/collection/Iterable;

    if-eqz v0, :cond_7

    check-cast p1, Lscala/collection/Iterable;

    invoke-interface {p1}, Lscala/collection/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p2}, Lscala/collection/Iterator;->take(I)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v4, Lscala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$2;

    invoke-direct {v4, p2}, Lscala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$2;-><init>(I)V

    invoke-interface {v0, v4}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p2

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p1}, Lscala/collection/Iterable;->stringPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1, v2}, Lscala/collection/Iterator;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 329
    :cond_7
    instance-of v0, p1, Lscala/collection/Traversable;

    if-eqz v0, :cond_8

    check-cast p1, Lscala/collection/Traversable;

    invoke-interface {p1, p2}, Lscala/collection/Traversable;->take(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    new-instance v4, Lscala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$3;

    invoke-direct {v4, p2}, Lscala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$3;-><init>(I)V

    sget-object p2, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {p2}, Lscala/collection/Traversable$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-interface {v0, v4, p2}, Lscala/collection/TraversableLike;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/TraversableOnce;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p1}, Lscala/collection/Traversable;->stringPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1, v2}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 330
    :cond_8
    instance-of v0, p1, Lscala/Product1;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lscala/Product1;

    invoke-virtual {p0, v0}, Lscala/runtime/ScalaRunTime$;->isTuple(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Lscala/Product1;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lscala/runtime/ScalaRunTime$;->scala$runtime$ScalaRunTime$$inner$1(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string p2, ",)"

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 331
    :cond_9
    instance-of v0, p1, Lscala/Product;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lscala/Product;

    invoke-virtual {p0, v0}, Lscala/runtime/ScalaRunTime$;->isTuple(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Lscala/Product;->productIterator()Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$4;

    invoke-direct {v0, p2}, Lscala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$4;-><init>(I)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    const-string p2, ","

    invoke-interface {p1, v3, p2, v2}, Lscala/collection/Iterator;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 332
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_b
    :goto_0
    return-object p1
.end method

.method public final scala$runtime$ScalaRunTime$$mapInner$1(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    .line 304
    instance-of v0, p1, Lscala/Tuple2;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/Tuple2;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 305
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lscala/runtime/ScalaRunTime$;->scala$runtime$ScalaRunTime$$inner$1(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lscala/runtime/ScalaRunTime$;->scala$runtime$ScalaRunTime$$inner$1(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0, p1, p2}, Lscala/runtime/ScalaRunTime$;->scala$runtime$ScalaRunTime$$inner$1(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public stringOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    .line 262
    invoke-virtual {p0, p1, v0}, Lscala/runtime/ScalaRunTime$;->stringOf(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stringOf(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    .line 337
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lscala/runtime/ScalaRunTime$;->scala$runtime$ScalaRunTime$$inner$1(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 339
    instance-of v0, p2, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/AssertionError;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    .line 337
    :cond_2
    throw p2
.end method

.method public toArray(Lscala/collection/Seq;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 150
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v1

    .line 151
    new-instance v2, Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;

    invoke-direct {v2, v0, v1}, Lscala/runtime/ScalaRunTime$$anonfun$toArray$1;-><init>([Ljava/lang/Object;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v2}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11

    .line 138
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    goto :goto_5

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    .line 142
    new-array v1, v0, [Ljava/lang/Object;

    .line 143
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_2

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v5

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eq v5, v6, :cond_4

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_4

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_5

    sget-object v9, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v9, p1, v5}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v1, v5, v10}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v7

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_5
    return-object p1
.end method

.method public typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Product;",
            ")",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 172
    new-instance v0, Lscala/runtime/ScalaRunTime$$anon$1;

    invoke-direct {v0, p1}, Lscala/runtime/ScalaRunTime$$anon$1;-><init>(Lscala/Product;)V

    return-object v0
.end method
