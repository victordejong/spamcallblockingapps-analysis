.class public final Lscala/Array$;
.super Lscala/FallbackArrayBuilding;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Array$;


# instance fields
.field private final emptyBooleanArray:[Z

.field private final emptyByteArray:[B

.field private final emptyCharArray:[C

.field private final emptyDoubleArray:[D

.field private final emptyFloatArray:[F

.field private final emptyIntArray:[I

.field private final emptyLongArray:[J

.field private final emptyObjectArray:[Ljava/lang/Object;

.field private final emptyShortArray:[S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Array$;

    invoke-direct {v0}, Lscala/Array$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lscala/FallbackArrayBuilding;-><init>()V

    sput-object p0, Lscala/Array$;->MODULE$:Lscala/Array$;

    const/4 v0, 0x0

    new-array v1, v0, [Z

    .line 51
    iput-object v1, p0, Lscala/Array$;->emptyBooleanArray:[Z

    new-array v1, v0, [B

    .line 52
    iput-object v1, p0, Lscala/Array$;->emptyByteArray:[B

    new-array v1, v0, [C

    .line 53
    iput-object v1, p0, Lscala/Array$;->emptyCharArray:[C

    new-array v1, v0, [D

    .line 54
    iput-object v1, p0, Lscala/Array$;->emptyDoubleArray:[D

    new-array v1, v0, [F

    .line 55
    iput-object v1, p0, Lscala/Array$;->emptyFloatArray:[F

    new-array v1, v0, [I

    .line 56
    iput-object v1, p0, Lscala/Array$;->emptyIntArray:[I

    new-array v1, v0, [J

    .line 57
    iput-object v1, p0, Lscala/Array$;->emptyLongArray:[J

    new-array v1, v0, [S

    .line 58
    iput-object v1, p0, Lscala/Array$;->emptyShortArray:[S

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iput-object v0, p0, Lscala/Array$;->emptyObjectArray:[Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 50
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    return-object v0
.end method

.method private slowcopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 2

    add-int/2addr p5, p2

    :goto_0
    if-ge p2, p5, :cond_0

    .line 81
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, p2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result v0

    invoke-interface {p2, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    .line 122
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 123
    invoke-interface {p1}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    new-instance v1, Lscala/Array$$anonfun$apply$5;

    invoke-direct {v1, p2, v0}, Lscala/Array$$anonfun$apply$5;-><init>(Ljava/lang/Object;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object p2
.end method

.method public apply(BLscala/collection/Seq;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 140
    invoke-interface {p2}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 141
    aput-byte p1, v0, v2

    .line 142
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 143
    invoke-interface {p2}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance v1, Lscala/Array$$anonfun$apply$7;

    invoke-direct {v1, v0, p1}, Lscala/Array$$anonfun$apply$7;-><init>([BLscala/runtime/IntRef;)V

    invoke-interface {p2, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public apply(CLscala/collection/Seq;)[C
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)[C"
        }
    .end annotation

    .line 160
    invoke-interface {p2}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/4 v2, 0x0

    .line 161
    aput-char p1, v0, v2

    .line 162
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 163
    invoke-interface {p2}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance v1, Lscala/Array$$anonfun$apply$9;

    invoke-direct {v1, v0, p1}, Lscala/Array$$anonfun$apply$9;-><init>([CLscala/runtime/IntRef;)V

    invoke-interface {p2, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public apply(DLscala/collection/Seq;)[D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)[D"
        }
    .end annotation

    .line 200
    invoke-interface {p3}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    const/4 v2, 0x0

    .line 201
    aput-wide p1, v0, v2

    .line 202
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 203
    invoke-interface {p3}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance p3, Lscala/Array$$anonfun$apply$4;

    invoke-direct {p3, v0, p1}, Lscala/Array$$anonfun$apply$4;-><init>([DLscala/runtime/IntRef;)V

    invoke-interface {p2, p3}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public apply(FLscala/collection/Seq;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)[F"
        }
    .end annotation

    .line 190
    invoke-interface {p2}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 191
    aput p1, v0, v2

    .line 192
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 193
    invoke-interface {p2}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance v1, Lscala/Array$$anonfun$apply$3;

    invoke-direct {v1, v0, p1}, Lscala/Array$$anonfun$apply$3;-><init>([FLscala/runtime/IntRef;)V

    invoke-interface {p2, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public apply(ILscala/collection/Seq;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    .line 170
    invoke-interface {p2}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 171
    aput p1, v0, v2

    .line 172
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 173
    invoke-interface {p2}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance v1, Lscala/Array$$anonfun$apply$1;

    invoke-direct {v1, v0, p1}, Lscala/Array$$anonfun$apply$1;-><init>([ILscala/runtime/IntRef;)V

    invoke-interface {p2, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public apply(JLscala/collection/Seq;)[J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)[J"
        }
    .end annotation

    .line 180
    invoke-interface {p3}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    const/4 v2, 0x0

    .line 181
    aput-wide p1, v0, v2

    .line 182
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 183
    invoke-interface {p3}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance p3, Lscala/Array$$anonfun$apply$2;

    invoke-direct {p3, v0, p1}, Lscala/Array$$anonfun$apply$2;-><init>([JLscala/runtime/IntRef;)V

    invoke-interface {p2, p3}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public apply(Lscala/runtime/BoxedUnit;Lscala/collection/Seq;)[Lscala/runtime/BoxedUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/BoxedUnit;",
            "Lscala/collection/Seq<",
            "Lscala/runtime/BoxedUnit;",
            ">;)[",
            "Lscala/runtime/BoxedUnit;"
        }
    .end annotation

    .line 209
    invoke-interface {p2}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lscala/runtime/BoxedUnit;

    const/4 v2, 0x0

    .line 210
    aput-object p1, v0, v2

    .line 211
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 212
    invoke-interface {p2}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance v1, Lscala/Array$$anonfun$apply$10;

    invoke-direct {v1, v0, p1}, Lscala/Array$$anonfun$apply$10;-><init>([Lscala/runtime/BoxedUnit;Lscala/runtime/IntRef;)V

    invoke-interface {p2, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public apply(SLscala/collection/Seq;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)[S"
        }
    .end annotation

    .line 150
    invoke-interface {p2}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    const/4 v2, 0x0

    .line 151
    aput-short p1, v0, v2

    .line 152
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 153
    invoke-interface {p2}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance v1, Lscala/Array$$anonfun$apply$8;

    invoke-direct {v1, v0, p1}, Lscala/Array$$anonfun$apply$8;-><init>([SLscala/runtime/IntRef;)V

    invoke-interface {p2, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public apply(ZLscala/collection/Seq;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)[Z"
        }
    .end annotation

    .line 130
    invoke-interface {p2}, Lscala/collection/Seq;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    const/4 v2, 0x0

    .line 131
    aput-boolean p1, v0, v2

    .line 132
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 133
    invoke-interface {p2}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    new-instance v1, Lscala/Array$$anonfun$apply$6;

    invoke-direct {v1, v0, p1}, Lscala/Array$$anonfun$apply$6;-><init>([ZLscala/runtime/IntRef;)V

    invoke-interface {p2, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Ljava/lang/Object;",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Lscala/Array$$anon$2;

    invoke-direct {v0, p1}, Lscala/Array$$anon$2;-><init>(Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public concat(Lscala/collection/Seq;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p2}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p2

    .line 243
    new-instance v0, Lscala/Array$$anonfun$concat$1;

    invoke-direct {v0}, Lscala/Array$$anonfun$concat$1;-><init>()V

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    sget-object v1, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-interface {v0, v1}, Lscala/collection/TraversableOnce;->sum(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Lscala/collection/mutable/ArrayBuilder;->sizeHint(I)V

    .line 244
    new-instance v0, Lscala/Array$$anonfun$concat$2;

    invoke-direct {v0, p2}, Lscala/Array$$anonfun$concat$2;-><init>(Lscala/collection/mutable/ArrayBuilder;)V

    invoke-interface {p1, v0}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 245
    invoke-virtual {p2}, Lscala/collection/mutable/ArrayBuilder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public copy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-static {p1, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct/range {p0 .. p5}, Lscala/Array$;->slowcopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public empty(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    invoke-interface {p1, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public emptyBooleanArray()[Z
    .locals 1

    .line 51
    iget-object v0, p0, Lscala/Array$;->emptyBooleanArray:[Z

    return-object v0
.end method

.method public emptyByteArray()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lscala/Array$;->emptyByteArray:[B

    return-object v0
.end method

.method public emptyCharArray()[C
    .locals 1

    .line 53
    iget-object v0, p0, Lscala/Array$;->emptyCharArray:[C

    return-object v0
.end method

.method public emptyDoubleArray()[D
    .locals 1

    .line 54
    iget-object v0, p0, Lscala/Array$;->emptyDoubleArray:[D

    return-object v0
.end method

.method public emptyFloatArray()[F
    .locals 1

    .line 55
    iget-object v0, p0, Lscala/Array$;->emptyFloatArray:[F

    return-object v0
.end method

.method public emptyIntArray()[I
    .locals 1

    .line 56
    iget-object v0, p0, Lscala/Array$;->emptyIntArray:[I

    return-object v0
.end method

.method public emptyLongArray()[J
    .locals 1

    .line 57
    iget-object v0, p0, Lscala/Array$;->emptyLongArray:[J

    return-object v0
.end method

.method public emptyObjectArray()[Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lscala/Array$;->emptyObjectArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public emptyShortArray()[S
    .locals 1

    .line 58
    iget-object v0, p0, Lscala/Array$;->emptyShortArray:[S

    return-object v0
.end method

.method public fill(ILscala/Function0;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 263
    invoke-virtual {p0, p3}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p3

    .line 264
    invoke-virtual {p3, p1}, Lscala/collection/mutable/ArrayBuilder;->sizeHint(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 267
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Lscala/collection/mutable/ArrayBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p3}, Lscala/collection/mutable/ArrayBuilder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fill(IILscala/Function0;Lscala/reflect/ClassTag;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 281
    new-instance v0, Lscala/Array$$anonfun$fill$1;

    invoke-direct {v0, p2, p3, p4}, Lscala/Array$$anonfun$fill$1;-><init>(ILscala/Function0;Lscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p4}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public fill(IIILscala/Function0;Lscala/reflect/ClassTag;)[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(III",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 292
    new-instance v0, Lscala/Array$$anonfun$fill$2;

    invoke-direct {v0, p2, p3, p4, p5}, Lscala/Array$$anonfun$fill$2;-><init>(IILscala/Function0;Lscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p5}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    return-object p1
.end method

.method public fill(IIIILscala/Function0;Lscala/reflect/ClassTag;)[[[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IIII",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 304
    new-instance v6, Lscala/Array$$anonfun$fill$3;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lscala/Array$$anonfun$fill$3;-><init>(IIILscala/Function0;Lscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p6}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p5, p6}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v6, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[Ljava/lang/Object;

    return-object p1
.end method

.method public fill(IIIIILscala/Function0;Lscala/reflect/ClassTag;)[[[[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IIIII",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 317
    new-instance v7, Lscala/Array$$anonfun$fill$4;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lscala/Array$$anonfun$fill$4;-><init>(IIIILscala/Function0;Lscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p7}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p7

    invoke-virtual {p6, p7}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p5, p6}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v7, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[[Ljava/lang/Object;

    return-object p1
.end method

.method public iterate(Ljava/lang/Object;ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I",
            "Lscala/Function1<",
            "TT;TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0, p4}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p4

    if-lez p2, :cond_0

    .line 423
    invoke-virtual {p4, p2}, Lscala/collection/mutable/ArrayBuilder;->sizeHint(I)V

    .line 426
    invoke-virtual {p4, p1}, Lscala/collection/mutable/ArrayBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 429
    invoke-interface {p3, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    .line 431
    invoke-virtual {p4, p1}, Lscala/collection/mutable/ArrayBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p4}, Lscala/collection/mutable/ArrayBuilder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 70
    sget-object v0, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuilder$;->make(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public ofDim(ILscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 218
    invoke-interface {p2, p1}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ofDim(IILscala/reflect/ClassTag;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p3}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 222
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v1, Lscala/collection/immutable/Range;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    const/high16 v4, -0x80000000

    if-ne p1, v4, :cond_1

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->end()I

    move-result p1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v5

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->step()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-eqz p1, :cond_2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v8

    if-ge v7, v8, :cond_3

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    invoke-interface {p3, p2}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v0, v4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v6

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public ofDim(IIILscala/reflect/ClassTag;)[[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(III",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 228
    new-instance v0, Lscala/Array$$anonfun$ofDim$2;

    invoke-direct {v0, p2, p3, p4}, Lscala/Array$$anonfun$ofDim$2;-><init>(IILscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p4}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {v1, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    return-object p1
.end method

.method public ofDim(IIIILscala/reflect/ClassTag;)[[[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IIII",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 231
    new-instance v0, Lscala/Array$$anonfun$ofDim$3;

    invoke-direct {v0, p2, p3, p4, p5}, Lscala/Array$$anonfun$ofDim$3;-><init>(IIILscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p5}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {v1, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[Ljava/lang/Object;

    return-object p1
.end method

.method public ofDim(IIIIILscala/reflect/ClassTag;)[[[[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IIIII",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 234
    new-instance v6, Lscala/Array$$anonfun$ofDim$4;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lscala/Array$$anonfun$ofDim$4;-><init>(IIIILscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p6}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {v0, p6}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p5, p6}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v6, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[[Ljava/lang/Object;

    return-object p1
.end method

.method public range(II)[I
    .locals 1

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0, p1, p2, v0}, Lscala/Array$;->range(III)[I

    move-result-object p1

    return-object p1
.end method

.method public range(III)[I
    .locals 3

    if-eqz p3, :cond_3

    .line 401
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    .line 402
    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lscala/collection/immutable/Range$;->count(IIIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuilder;->sizeHint(I)V

    :goto_0
    const/4 v1, 0x1

    if-gez p3, :cond_0

    if-ge p2, p1, :cond_1

    goto :goto_1

    :cond_0
    if-ge p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 406
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/2addr p1, p3

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuilder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1

    .line 400
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zero step"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 327
    invoke-virtual {p0, p3}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p3

    .line 328
    invoke-virtual {p3, p1}, Lscala/collection/mutable/ArrayBuilder;->sizeHint(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 331
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Lscala/collection/mutable/ArrayBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p3}, Lscala/collection/mutable/ArrayBuilder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tabulate(IILscala/Function2;Lscala/reflect/ClassTag;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 345
    new-instance v0, Lscala/Array$$anonfun$tabulate$1;

    invoke-direct {v0, p2, p3, p4}, Lscala/Array$$anonfun$tabulate$1;-><init>(ILscala/Function2;Lscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p4}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public tabulate(IIILscala/Function3;Lscala/reflect/ClassTag;)[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(III",
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 356
    new-instance v0, Lscala/Array$$anonfun$tabulate$2;

    invoke-direct {v0, p2, p3, p4, p5}, Lscala/Array$$anonfun$tabulate$2;-><init>(IILscala/Function3;Lscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p5}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    return-object p1
.end method

.method public tabulate(IIIILscala/Function4;Lscala/reflect/ClassTag;)[[[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IIII",
            "Lscala/Function4<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 368
    new-instance v6, Lscala/Array$$anonfun$tabulate$3;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lscala/Array$$anonfun$tabulate$3;-><init>(IIILscala/Function4;Lscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p6}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p5, p6}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v6, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[Ljava/lang/Object;

    return-object p1
.end method

.method public tabulate(IIIIILscala/Function5;Lscala/reflect/ClassTag;)[[[[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IIIII",
            "Lscala/Function5<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)[[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 381
    new-instance v7, Lscala/Array$$anonfun$tabulate$4;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lscala/Array$$anonfun$tabulate$4;-><init>(IIIILscala/Function5;Lscala/reflect/ClassTag;)V

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p7}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p7

    invoke-virtual {p6, p7}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p5, p6}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Lscala/runtime/ScalaRunTime$;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p2

    invoke-virtual {p0, p1, v7, p2}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[[Ljava/lang/Object;

    return-object p1
.end method

.method public unapplySeq(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/Option<",
            "Lscala/collection/IndexedSeq<",
            "TT;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 443
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1, p1}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/mutable/ArrayOps;->toIndexedSeq()Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
