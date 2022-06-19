.class public Lscala/collection/mutable/UnrolledBuffer$Unrolled;
.super Ljava/lang/Object;
.source "UnrolledBuffer.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/UnrolledBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unrolled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private final buff:Lscala/collection/mutable/UnrolledBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final evidence$1:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation
.end field

.field private next:Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 216
    iput p1, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size:I

    iput-object p2, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    iput-object p4, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->buff:Lscala/collection/mutable/UnrolledBuffer;

    iput-object p5, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->evidence$1:Lscala/reflect/ClassTag;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 218
    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$;->unrolledlength()I

    move-result v0

    invoke-interface {p2, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;-><init>(ILjava/lang/Object;Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V

    return-void
.end method

.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 217
    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$;->unrolledlength()I

    move-result v0

    invoke-interface {p1, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;-><init>(ILjava/lang/Object;Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V

    return-void
.end method

.method private nextlength()I
    .locals 3

    .line 220
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->buff()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$;->unrolledlength()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->buff()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v0

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/UnrolledBuffer;->calcNextLength(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private nullout(II)V
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_0

    .line 335
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shiftleft(I)V
    .locals 5

    .line 289
    :goto_0
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 290
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    move p1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 293
    invoke-direct {p0, p1, v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->nullout(II)V

    return-void
.end method

.method private shiftright()V
    .locals 6

    .line 269
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 271
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 223
    :goto_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 224
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 225
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size_$eq(I)V

    return-object v0

    .line 228
    :cond_0
    new-instance v7, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    const/4 v2, 0x0

    iget-object v1, v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->evidence$1:Lscala/reflect/ClassTag;

    invoke-direct {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->nextlength()I

    move-result v3

    invoke-interface {v1, v3}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->buff()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v5

    iget-object v6, v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->evidence$1:Lscala/reflect/ClassTag;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;-><init>(ILjava/lang/Object;Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V

    invoke-virtual {v0, v7}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 229
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    goto :goto_0
.end method

.method public final apply(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 247
    :goto_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    sub-int/2addr p1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public array()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array:Ljava/lang/Object;

    return-object v0
.end method

.method public array_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array:Ljava/lang/Object;

    return-void
.end method

.method public bind(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;)Z"
        }
    .end annotation

    .line 344
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lscala/Predef$;->assert(Z)V

    .line 345
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 346
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->tryMergeWithNext()Z

    move-result p1

    return p1
.end method

.method public buff()Lscala/collection/mutable/UnrolledBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->buff:Lscala/collection/mutable/UnrolledBuffer;

    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;)V"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    .line 236
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_0

    .line 238
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v4, v2, v1}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 239
    invoke-interface {p1, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final insertAll(ILscala/collection/Traversable;Lscala/collection/mutable/UnrolledBuffer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable<",
            "TT;>;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v9, p0

    move/from16 v8, p1

    .line 304
    :goto_0
    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 307
    new-instance v7, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    const/4 v11, 0x0

    iget-object v2, v9, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->evidence$1:Lscala/reflect/ClassTag;

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v3}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->buff()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v14

    iget-object v15, v9, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->evidence$1:Lscala/reflect/ClassTag;

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;-><init>(ILjava/lang/Object;Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V

    .line 308
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v4

    sub-int v10, v4, v8

    move v4, v8

    move-object v11, v7

    move v7, v10

    invoke-virtual/range {v2 .. v7}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v11, v2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size_$eq(I)V

    .line 310
    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v2

    invoke-virtual {v11, v2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 313
    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v2

    invoke-direct {v9, v8, v2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->nullout(II)V

    .line 314
    invoke-virtual {v9, v8}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size_$eq(I)V

    const/4 v2, 0x0

    .line 315
    invoke-virtual {v9, v2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 318
    invoke-static {v9}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v2

    .line 319
    new-instance v3, Lscala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$1;

    invoke-direct {v3, v9, v2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$1;-><init>(Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/runtime/ObjectRef;)V

    invoke-interface {v0, v3}, Lscala/collection/Traversable;->foreach(Lscala/Function1;)V

    .line 320
    iget-object v0, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v0, v11}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 323
    iget-object v0, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->tryMergeWithNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v1, v0}, Lscala/collection/mutable/UnrolledBuffer;->lastPtr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 324
    :cond_0
    invoke-virtual {v11}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v11}, Lscala/collection/mutable/UnrolledBuffer;->lastPtr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 326
    :cond_2
    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v2

    if-eq v8, v2, :cond_4

    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 330
    :cond_3
    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v2

    invoke-virtual {v9}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v3

    sub-int/2addr v8, v3

    move-object v9, v2

    goto/16 :goto_0

    .line 327
    :cond_4
    :goto_1
    invoke-static {v9}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v1

    .line 328
    new-instance v2, Lscala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$2;

    invoke-direct {v2, v9, v1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$2;-><init>(Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/runtime/ObjectRef;)V

    invoke-interface {v0, v2}, Lscala/collection/Traversable;->foreach(Lscala/Function1;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_2
    return-void
.end method

.method public final locate(I)Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 251
    :goto_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    sub-int/2addr p1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    return-object v0
.end method

.method public next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    return-void
.end method

.method public prepend(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 255
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->shiftright()V

    .line 256
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 257
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size_$eq(I)V

    move-object v0, p0

    goto :goto_0

    .line 262
    :cond_0
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->buff()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->evidence$1:Lscala/reflect/ClassTag;

    invoke-direct {v0, v1, v2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;-><init>(Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V

    .line 263
    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->append(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    .line 264
    invoke-virtual {v0, p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    :goto_0
    return-object v0
.end method

.method public final remove(ILscala/collection/mutable/UnrolledBuffer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 277
    :goto_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 280
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 281
    invoke-direct {v0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->shiftleft(I)V

    .line 282
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size_$eq(I)V

    .line 283
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->tryMergeWithNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Lscala/collection/mutable/UnrolledBuffer;->lastPtr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    :cond_0
    return-object v1

    .line 285
    :cond_1
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    sub-int/2addr p1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 216
    iget v0, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size:I

    return v0
.end method

.method public size_$eq(I)V
    .locals 0

    .line 216
    iput p1, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 349
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lscala/collection/mutable/ArrayOps;->take(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "Unrolled@%08x"

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    const-string v4, ")"

    invoke-interface {v1, v2, v3, v4}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryMergeWithNext()Z
    .locals 9

    .line 295
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v3}, Lscala/collection/mutable/UnrolledBuffer$;->waterline()I

    move-result v3

    mul-int v2, v2, v3

    sget-object v3, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v3}, Lscala/collection/mutable/UnrolledBuffer$;->waterlineDelim()I

    move-result v3

    div-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 297
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v7

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size_$eq(I)V

    .line 299
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 300
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final update(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    move-object v0, p0

    .line 249
    :goto_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v0

    sub-int/2addr p1, v0

    move-object v0, v1

    goto :goto_0
.end method
