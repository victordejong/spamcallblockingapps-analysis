.class public final Lscala/util/Sorting$;
.super Ljava/lang/Object;
.source "Sorting.scala"


# static fields
.field public static final MODULE$:Lscala/util/Sorting$;


# instance fields
.field private final mergeThreshold:I

.field private final qsortThreshold:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Sorting$;

    invoke-direct {v0}, Lscala/util/Sorting$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Sorting$;->MODULE$:Lscala/util/Sorting$;

    return-void
.end method

.method private final inner$1(Ljava/lang/Object;IILscala/math/Ordering;)V
    .locals 9

    :goto_0
    sub-int v0, p3, p2

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    .line 63
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, p2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 64
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, p2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    .line 65
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_4

    goto :goto_1

    .line 68
    :cond_1
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, p2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_3

    :cond_2
    move v3, p2

    goto :goto_1

    .line 70
    :cond_3
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    .line 72
    :goto_1
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v3, v0, :cond_5

    .line 74
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v4, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1, v0, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    add-int/lit8 v2, v0, 0x1

    move v3, p2

    move v4, p3

    :goto_3
    sub-int v5, v0, v3

    if-lez v5, :cond_9

    .line 83
    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v5, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 84
    invoke-interface {p4, v5, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-eqz v6, :cond_8

    if-gez v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-le v4, v2, :cond_7

    .line 95
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v7, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7, p1, v4}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v3, v7}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 96
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v6, p1, v4, v5}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 100
    :cond_7
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v7, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v3, v7}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 101
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v7, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v0, v7}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 102
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v6, p1, v2, v5}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 87
    :cond_8
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v7, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v3, v7}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 88
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v6, p1, v0, v5}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    :cond_9
    :goto_4
    sub-int v5, v4, v2

    if-lez v5, :cond_c

    .line 110
    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, p1, v6}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 111
    invoke-interface {p4, v5, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_b

    if-lez v7, :cond_a

    move v4, v6

    goto :goto_4

    .line 122
    :cond_a
    sget-object v7, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v8, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v8, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v6, v8}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 123
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v7, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v7, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v2, v7}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 124
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v6, p1, v0, v5}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 114
    :cond_b
    sget-object v7, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v8, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v8, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v6, v8}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 115
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v6, p1, v2, v5}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    sub-int v0, v3, p2

    sub-int v1, p3, v4

    if-ge v0, v1, :cond_d

    .line 132
    invoke-direct {p0, p1, p2, v3, p4}, Lscala/util/Sorting$;->inner$1(Ljava/lang/Object;IILscala/math/Ordering;)V

    move p2, v4

    goto/16 :goto_0

    .line 136
    :cond_d
    invoke-direct {p0, p1, v4, p3, p4}, Lscala/util/Sorting$;->inner$1(Ljava/lang/Object;IILscala/math/Ordering;)V

    move p3, v3

    goto/16 :goto_0
.end method

.method private insertionSort$mBc$sp([BIILscala/math/Ordering;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget-byte v1, p1, p2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget-byte v1, p1, p2

    .line 153
    aget-byte v3, p1, v2

    aput-byte v3, p1, p2

    .line 154
    aput-byte v1, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget-byte v2, p1, v1

    .line 160
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, p1, v4

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {p4, v3, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    move v3, p2

    :goto_1
    sub-int v5, v4, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int v5, v3, v4

    ushr-int/2addr v5, v6

    .line 165
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v6

    aget-byte v7, p1, v5

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {p4, v6, v7}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v4

    aget-byte v5, p1, v3

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/2addr v3, v6

    :goto_2
    if-le v1, v3, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 171
    aget-byte v5, p1, v4

    aput-byte v5, p1, v1

    move v1, v4

    goto :goto_2

    .line 174
    :cond_5
    aput-byte v2, p1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private insertionSort$mCc$sp([CIILscala/math/Ordering;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget-char v1, p1, p2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-char v3, p1, v2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget-char v1, p1, p2

    .line 153
    aget-char v3, p1, v2

    aput-char v3, p1, p2

    .line 154
    aput-char v1, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget-char v2, p1, v1

    .line 160
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    aget-char v5, p1, v4

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p4, v3, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    move v3, p2

    :goto_1
    sub-int v5, v4, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int v5, v3, v4

    ushr-int/2addr v5, v6

    .line 165
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v6

    aget-char v7, p1, v5

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {p4, v6, v7}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v4

    aget-char v5, p1, v3

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/2addr v3, v6

    :goto_2
    if-le v1, v3, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 171
    aget-char v5, p1, v4

    aput-char v5, p1, v1

    move v1, v4

    goto :goto_2

    .line 174
    :cond_5
    aput-char v2, p1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private insertionSort$mDc$sp([DIILscala/math/Ordering;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([DII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget-wide v1, p1, p2

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget-wide v3, p1, p2

    .line 153
    aget-wide v5, p1, v2

    aput-wide v5, p1, p2

    .line 154
    aput-wide v3, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget-wide v2, p1, v1

    .line 160
    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, p1, v5

    invoke-static {v6, v7}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {p4, v4, v6}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_6

    move v4, p2

    :goto_1
    sub-int v6, v5, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    add-int v6, v4, v5

    ushr-int/2addr v6, v7

    .line 165
    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v7

    aget-wide v8, p1, v6

    invoke-static {v8, v9}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v5

    aget-wide v8, p1, v4

    invoke-static {v8, v9}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    const/4 v7, 0x0

    :cond_4
    add-int/2addr v4, v7

    :goto_2
    if-le v1, v4, :cond_5

    add-int/lit8 v5, v1, -0x1

    .line 171
    aget-wide v6, p1, v5

    aput-wide v6, p1, v1

    move v1, v5

    goto :goto_2

    .line 174
    :cond_5
    aput-wide v2, p1, v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private insertionSort$mFc$sp([FIILscala/math/Ordering;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget v1, p1, p2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget v3, p1, v2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget v1, p1, p2

    .line 153
    aget v3, p1, v2

    aput v3, p1, p2

    .line 154
    aput v1, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget v2, p1, v1

    .line 160
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    aget v5, p1, v4

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p4, v3, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    move v3, p2

    :goto_1
    sub-int v5, v4, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int v5, v3, v4

    ushr-int/2addr v5, v6

    .line 165
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v6

    aget v7, p1, v5

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {p4, v6, v7}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v4

    aget v5, p1, v3

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/2addr v3, v6

    :goto_2
    if-le v1, v3, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 171
    aget v5, p1, v4

    aput v5, p1, v1

    move v1, v4

    goto :goto_2

    .line 174
    :cond_5
    aput v2, p1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private insertionSort$mIc$sp([IIILscala/math/Ordering;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget v1, p1, p2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget v3, p1, v2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget v1, p1, p2

    .line 153
    aget v3, p1, v2

    aput v3, p1, p2

    .line 154
    aput v1, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget v2, p1, v1

    .line 160
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    aget v5, p1, v4

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v3, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    move v3, p2

    :goto_1
    sub-int v5, v4, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int v5, v3, v4

    ushr-int/2addr v5, v6

    .line 165
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, p1, v5

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p4, v6, v7}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, v3

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/2addr v3, v6

    :goto_2
    if-le v1, v3, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 171
    aget v5, p1, v4

    aput v5, p1, v1

    move v1, v4

    goto :goto_2

    .line 174
    :cond_5
    aput v2, p1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private insertionSort$mJc$sp([JIILscala/math/Ordering;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget-wide v1, p1, p2

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget-wide v3, p1, p2

    .line 153
    aget-wide v5, p1, v2

    aput-wide v5, p1, p2

    .line 154
    aput-wide v3, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget-wide v2, p1, v1

    .line 160
    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, p1, v5

    invoke-static {v6, v7}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p4, v4, v6}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_6

    move v4, p2

    :goto_1
    sub-int v6, v5, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    add-int v6, v4, v5

    ushr-int/2addr v6, v7

    .line 165
    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v7

    aget-wide v8, p1, v6

    invoke-static {v8, v9}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v5

    aget-wide v8, p1, v4

    invoke-static {v8, v9}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    const/4 v7, 0x0

    :cond_4
    add-int/2addr v4, v7

    :goto_2
    if-le v1, v4, :cond_5

    add-int/lit8 v5, v1, -0x1

    .line 171
    aget-wide v6, p1, v5

    aput-wide v6, p1, v1

    move v1, v5

    goto :goto_2

    .line 174
    :cond_5
    aput-wide v2, p1, v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private insertionSort$mSc$sp([SIILscala/math/Ordering;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([SII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget-short v1, p1, p2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-short v3, p1, v2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget-short v1, p1, p2

    .line 153
    aget-short v3, p1, v2

    aput-short v3, p1, p2

    .line 154
    aput-short v1, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget-short v2, p1, v1

    .line 160
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    aget-short v5, p1, v4

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {p4, v3, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    move v3, p2

    :goto_1
    sub-int v5, v4, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int v5, v3, v4

    ushr-int/2addr v5, v6

    .line 165
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v6

    aget-short v7, p1, v5

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {p4, v6, v7}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v4

    aget-short v5, p1, v3

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/2addr v3, v6

    :goto_2
    if-le v1, v3, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 171
    aget-short v5, p1, v4

    aput-short v5, p1, v1

    move v1, v4

    goto :goto_2

    .line 174
    :cond_5
    aput-short v2, p1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private insertionSort$mVc$sp([Lscala/runtime/BoxedUnit;IILscala/math/Ordering;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/runtime/BoxedUnit;",
            "II",
            "Lscala/math/Ordering<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget-object v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-object v3, p1, v2

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget-object v1, p1, p2

    .line 153
    aget-object v3, p1, v2

    aput-object v3, p1, p2

    .line 154
    aput-object v1, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget-object v2, p1, v1

    add-int/lit8 v3, v1, -0x1

    .line 160
    aget-object v4, p1, v3

    invoke-interface {p4, v2, v4}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_6

    move v4, p2

    :goto_1
    sub-int v5, v3, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int v5, v4, v3

    ushr-int/2addr v5, v6

    .line 165
    aget-object v6, p1, v5

    invoke-interface {p4, v2, v6}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_1

    .line 168
    :cond_3
    aget-object v3, p1, v4

    invoke-interface {p4, v2, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/2addr v4, v6

    :goto_2
    if-le v1, v4, :cond_5

    add-int/lit8 v3, v1, -0x1

    .line 171
    aget-object v5, p1, v3

    aput-object v5, p1, v1

    move v1, v3

    goto :goto_2

    .line 174
    :cond_5
    aput-object v2, p1, v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private insertionSort$mZc$sp([ZIILscala/math/Ordering;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([ZII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    aget-boolean v1, p1, p2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-boolean v3, p1, v2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    aget-boolean v1, p1, p2

    .line 153
    aget-boolean v3, p1, v2

    aput-boolean v3, p1, p2

    .line 154
    aput-boolean v1, p1, v2

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    add-int v1, p2, v0

    .line 159
    aget-boolean v2, p1, v1

    .line 160
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    aget-boolean v5, p1, v4

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p4, v3, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    move v3, p2

    :goto_1
    sub-int v5, v4, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int v5, v3, v4

    ushr-int/2addr v5, v6

    .line 165
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    aget-boolean v7, p1, v5

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {p4, v6, v7}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    aget-boolean v5, p1, v3

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/2addr v3, v6

    :goto_2
    if-le v1, v3, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 171
    aget-boolean v5, p1, v4

    aput-boolean v5, p1, v1

    move v1, v4

    goto :goto_2

    .line 174
    :cond_5
    aput-boolean v2, p1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private mergeSort$mVc$sp([Lscala/runtime/BoxedUnit;IILscala/math/Ordering;[Lscala/runtime/BoxedUnit;Lscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/runtime/BoxedUnit;",
            "II",
            "Lscala/math/Ordering<",
            "Lscala/runtime/BoxedUnit;",
            ">;[",
            "Lscala/runtime/BoxedUnit;",
            "Lscala/reflect/ClassTag<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Lscala/runtime/BoxedUnit;

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private mergeSorted$mBc$sp([BIIILscala/math/Ordering;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[B)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget-byte v0, p1, v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v0

    aget-byte v1, p1, p3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget-byte v4, p1, v2

    aput-byte v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget-byte p3, p1, v2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p3

    aget-byte v3, p6, v1

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget-byte p3, p1, v2

    aput-byte p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget-byte p3, p6, v1

    aput-byte p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget-byte p3, p6, v1

    aput-byte p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mergeSorted$mCc$sp([CIIILscala/math/Ordering;[C)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[C)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget-char v0, p1, v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    aget-char v1, p1, p3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget-char v4, p1, v2

    aput-char v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget-char p3, p1, v2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p3

    aget-char v3, p6, v1

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget-char p3, p1, v2

    aput-char p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget-char p3, p6, v1

    aput-char p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget-char p3, p6, v1

    aput-char p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mergeSorted$mDc$sp([DIIILscala/math/Ordering;[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([DIII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[D)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v0

    aget-wide v1, p1, p3

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget-wide v4, p1, v2

    aput-wide v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p3

    aget-wide v3, p6, v1

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget-wide v3, p1, v2

    aput-wide v3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget-wide v3, p6, v1

    aput-wide v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget-wide p3, p6, v1

    aput-wide p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mergeSorted$mFc$sp([FIIILscala/math/Ordering;[F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FIII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[F)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget v0, p1, v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v0

    aget v1, p1, p3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget v4, p1, v2

    aput v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget p3, p1, v2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p3

    aget v3, p6, v1

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget p3, p1, v2

    aput p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget p3, p6, v1

    aput p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget p3, p6, v1

    aput p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mergeSorted$mIc$sp([IIIILscala/math/Ordering;[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IIII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[I)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget v0, p1, v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    aget v1, p1, p3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget v4, p1, v2

    aput v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget p3, p1, v2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p3

    aget v3, p6, v1

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget p3, p1, v2

    aput p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget p3, p6, v1

    aput p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget p3, p6, v1

    aput p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mergeSorted$mJc$sp([JIIILscala/math/Ordering;[J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JIII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[J)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    aget-wide v1, p1, p3

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget-wide v4, p1, v2

    aput-wide v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p3

    aget-wide v3, p6, v1

    invoke-static {v3, v4}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget-wide v3, p1, v2

    aput-wide v3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget-wide v3, p6, v1

    aput-wide v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget-wide p3, p6, v1

    aput-wide p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mergeSorted$mSc$sp([SIIILscala/math/Ordering;[S)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([SIII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[S)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget-short v0, p1, v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v0

    aget-short v1, p1, p3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget-short v4, p1, v2

    aput-short v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget-short p3, p1, v2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p3

    aget-short v3, p6, v1

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget-short p3, p1, v2

    aput-short p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget-short p3, p6, v1

    aput-short p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget-short p3, p6, v1

    aput-short p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mergeSorted$mVc$sp([Lscala/runtime/BoxedUnit;IIILscala/math/Ordering;[Lscala/runtime/BoxedUnit;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/runtime/BoxedUnit;",
            "III",
            "Lscala/math/Ordering<",
            "Lscala/runtime/BoxedUnit;",
            ">;[",
            "Lscala/runtime/BoxedUnit;",
            ")V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget-object v0, p1, v0

    aget-object v1, p1, p3

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget-object v4, p1, v2

    aput-object v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget-object p3, p1, v2

    aget-object v3, p6, v1

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget-object p3, p1, v2

    aput-object p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget-object p3, p6, v1

    aput-object p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget-object p3, p6, v1

    aput-object p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mergeSorted$mZc$sp([ZIIILscala/math/Ordering;[Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([ZIII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[Z)V"
        }
    .end annotation

    add-int/lit8 v0, p3, -0x1

    .line 195
    aget-boolean v0, p1, v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    aget-boolean v1, p1, p3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    aget-boolean v4, p1, v2

    aput-boolean v4, p6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    aget-boolean p3, p1, v2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p3

    aget-boolean v3, p6, v1

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    aget-boolean p3, p1, v2

    aput-boolean p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    aget-boolean p3, p6, v1

    aput-boolean p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    aget-boolean p3, p6, v1

    aput-boolean p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private final mergeThreshold()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method private final qsortThreshold()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method private sort(Ljava/lang/Object;Lscala/math/Ordering;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lscala/math/Ordering<",
            "TT;>;)V"
        }
    .end annotation

    .line 238
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "Ordering"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 242
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, [I

    sget-object p1, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    if-ne p2, p1, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v6, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mIc$sp([IIILscala/math/Ordering;[ILscala/reflect/ClassTag;)V

    :goto_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 243
    :cond_3
    instance-of v0, p1, [D

    if-eqz v0, :cond_4

    move-object v2, p1

    check-cast v2, [D

    const/4 v3, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v6, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Double()Lscala/reflect/ClassTag;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mDc$sp([DIILscala/math/Ordering;[DLscala/reflect/ClassTag;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 244
    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_6

    move-object v2, p1

    check-cast v2, [J

    sget-object p1, Lscala/math/Ordering$Long$;->MODULE$:Lscala/math/Ordering$Long$;

    if-ne p2, p1, :cond_5

    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v6, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mJc$sp([JIILscala/math/Ordering;[JLscala/reflect/ClassTag;)V

    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 245
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    move-object v2, p1

    check-cast v2, [F

    const/4 v3, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v6, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mFc$sp([FIILscala/math/Ordering;[FLscala/reflect/ClassTag;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 246
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_9

    move-object v2, p1

    check-cast v2, [C

    sget-object p1, Lscala/math/Ordering$Char$;->MODULE$:Lscala/math/Ordering$Char$;

    if-ne p2, p1, :cond_8

    invoke-static {v2}, Ljava/util/Arrays;->sort([C)V

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v6, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mCc$sp([CIILscala/math/Ordering;[CLscala/reflect/ClassTag;)V

    :goto_2
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 247
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    move-object v2, p1

    check-cast v2, [B

    sget-object p1, Lscala/math/Ordering$Byte$;->MODULE$:Lscala/math/Ordering$Byte$;

    if-ne p2, p1, :cond_a

    invoke-static {v2}, Ljava/util/Arrays;->sort([B)V

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v6, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mBc$sp([BIILscala/math/Ordering;[BLscala/reflect/ClassTag;)V

    :goto_3
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_6

    .line 248
    :cond_b
    instance-of v0, p1, [S

    if-eqz v0, :cond_d

    move-object v2, p1

    check-cast v2, [S

    sget-object p1, Lscala/math/Ordering$Short$;->MODULE$:Lscala/math/Ordering$Short$;

    if-ne p2, p1, :cond_c

    invoke-static {v2}, Ljava/util/Arrays;->sort([S)V

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v6, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Short()Lscala/reflect/ClassTag;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mSc$sp([SIILscala/math/Ordering;[SLscala/reflect/ClassTag;)V

    :goto_4
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_6

    .line 249
    :cond_d
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f

    move-object v2, p1

    check-cast v2, [Z

    sget-object p1, Lscala/math/Ordering$Boolean$;->MODULE$:Lscala/math/Ordering$Boolean$;

    if-ne p2, p1, :cond_e

    invoke-virtual {p0, v2}, Lscala/util/Sorting$;->scala$util$Sorting$$booleanSort([Z)V

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v6, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mZc$sp([ZIILscala/math/Ordering;[ZLscala/reflect/ClassTag;)V

    :goto_5
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_6
    return-void

    .line 251
    :cond_f
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public quickSort(Ljava/lang/Object;Lscala/math/Ordering;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lscala/math/Ordering<",
            "TK;>;)V"
        }
    .end annotation

    .line 141
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast p2, Lscala/math/Ordering;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lscala/util/Sorting$;->inner$1(Ljava/lang/Object;IILscala/math/Ordering;)V

    return-void
.end method

.method public quickSort([D)V
    .locals 0

    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    return-void
.end method

.method public quickSort([F)V
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    return-void
.end method

.method public quickSort([I)V
    .locals 0

    .line 44
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method public scala$util$Sorting$$booleanSort([Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 220
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 221
    aget-boolean v3, p1, v1

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 226
    aput-boolean v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_2
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_3

    const/4 v0, 0x1

    .line 230
    aput-boolean v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II",
            "Lscala/math/Ordering<",
            "TT;>;)V"
        }
    .end annotation

    sub-int/2addr p3, p2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    return-void

    .line 151
    :cond_0
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, p2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, p2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 153
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v4, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, p1, p2, v4}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 154
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1, v3, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_7

    .line 159
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int v2, p2, v0

    invoke-virtual {v1, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 160
    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, p1, v4}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    move v3, p2

    :goto_1
    sub-int v5, v4, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int v5, v3, v4

    ushr-int/2addr v5, v6

    .line 165
    sget-object v6, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v6, p1, v5}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p4, v1, v6}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 168
    :cond_3
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v4, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p4, v1, v4}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4

    const/4 v6, 0x0

    :cond_4
    add-int/2addr v3, v6

    :goto_2
    if-le v2, v3, :cond_5

    .line 171
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, p1, v6}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v5}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v6

    goto :goto_2

    .line 174
    :cond_5
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1, v3, v1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II",
            "Lscala/math/Ordering<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/runtime/Null$;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public scala$util$Sorting$$mergeSort$mBc$sp([BIILscala/math/Ordering;[BLscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[B",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [B

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSort$mCc$sp([CIILscala/math/Ordering;[CLscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[C",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [C

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSort$mDc$sp([DIILscala/math/Ordering;[DLscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([DII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[D",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [D

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSort$mFc$sp([FIILscala/math/Ordering;[FLscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[F",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [F

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSort$mIc$sp([IIILscala/math/Ordering;[ILscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[I",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSort$mJc$sp([JIILscala/math/Ordering;[JLscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[J",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [J

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSort$mSc$sp([SIILscala/math/Ordering;[SLscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([SII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[S",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [S

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSort$mZc$sp([ZIILscala/math/Ordering;[ZLscala/reflect/ClassTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([ZII",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;[Z",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/util/Sorting$;->scala$util$Sorting$$insertionSort(Ljava/lang/Object;IILscala/math/Ordering;)V

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-nez p5, :cond_1

    sub-int p5, v0, p2

    .line 185
    invoke-interface {p6, p5}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Z

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 186
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, v0

    move v4, p3

    .line 187
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort(Ljava/lang/Object;IILscala/math/Ordering;Ljava/lang/Object;Lscala/reflect/ClassTag;)V

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 188
    invoke-virtual/range {v1 .. v7}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scala$util$Sorting$$mergeSorted(Ljava/lang/Object;IIILscala/math/Ordering;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "III",
            "Lscala/math/Ordering<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 195
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, p1, v1}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1, p3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 200
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v5, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p6, v3, v5}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p4, :cond_2

    if-ge v1, v0, :cond_2

    .line 207
    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p3, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v3, p6, v1}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p5, p3, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_1

    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v3, p1, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, p1, p2, v3}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_1
    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v3, p6, v1}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, p1, p2, v3}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 211
    sget-object p3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object p4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p4, p6, v1}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public stableSort(Lscala/collection/Seq;Lscala/Function1;Lscala/reflect/ClassTag;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TK;>;",
            "Lscala/Function1<",
            "TK;TM;>;",
            "Lscala/reflect/ClassTag<",
            "TK;>;",
            "Lscala/math/Ordering<",
            "TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 280
    invoke-interface {p1, p3}, Lscala/collection/Seq;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    .line 281
    sget-object p3, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    invoke-virtual {p3, p4}, Lscala/math/Ordering$;->apply(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object p3

    invoke-interface {p3, p2}, Lscala/math/Ordering;->on(Lscala/Function1;)Lscala/math/Ordering;

    move-result-object v4

    instance-of p2, p1, [Ljava/lang/Object;

    if-eqz p2, :cond_1

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    const-string p2, "Ordering"

    invoke-static {v4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    move-object p2, p1

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_0
    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    :cond_1
    instance-of p2, p1, [I

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, [I

    sget-object p2, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    if-ne v4, p2, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mIc$sp([IIILscala/math/Ordering;[ILscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, [D

    if-eqz p2, :cond_4

    move-object v1, p1

    check-cast v1, [D

    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Double()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mDc$sp([DIILscala/math/Ordering;[DLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, [J

    if-eqz p2, :cond_6

    move-object v1, p1

    check-cast v1, [J

    sget-object p2, Lscala/math/Ordering$Long$;->MODULE$:Lscala/math/Ordering$Long$;

    if-ne v4, p2, :cond_5

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mJc$sp([JIILscala/math/Ordering;[JLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_6
    instance-of p2, p1, [F

    if-eqz p2, :cond_7

    move-object v1, p1

    check-cast v1, [F

    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mFc$sp([FIILscala/math/Ordering;[FLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_7
    instance-of p2, p1, [C

    if-eqz p2, :cond_9

    move-object v1, p1

    check-cast v1, [C

    sget-object p2, Lscala/math/Ordering$Char$;->MODULE$:Lscala/math/Ordering$Char$;

    if-ne v4, p2, :cond_8

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mCc$sp([CIILscala/math/Ordering;[CLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_9
    instance-of p2, p1, [B

    if-eqz p2, :cond_b

    move-object v1, p1

    check-cast v1, [B

    sget-object p2, Lscala/math/Ordering$Byte$;->MODULE$:Lscala/math/Ordering$Byte$;

    if-ne v4, p2, :cond_a

    invoke-static {v1}, Ljava/util/Arrays;->sort([B)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mBc$sp([BIILscala/math/Ordering;[BLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_b
    instance-of p2, p1, [S

    if-eqz p2, :cond_d

    move-object v1, p1

    check-cast v1, [S

    sget-object p2, Lscala/math/Ordering$Short$;->MODULE$:Lscala/math/Ordering$Short$;

    if-ne v4, p2, :cond_c

    invoke-static {v1}, Ljava/util/Arrays;->sort([S)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Short()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mSc$sp([SIILscala/math/Ordering;[SLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_d
    instance-of p2, p1, [Z

    if-eqz p2, :cond_f

    move-object v1, p1

    check-cast v1, [Z

    sget-object p2, Lscala/math/Ordering$Boolean$;->MODULE$:Lscala/math/Ordering$Boolean$;

    if-ne v4, p2, :cond_e

    invoke-virtual {p0, v1}, Lscala/util/Sorting$;->scala$util$Sorting$$booleanSort([Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mZc$sp([ZIILscala/math/Ordering;[ZLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :goto_1
    return-object p1

    :cond_f
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public stableSort(Lscala/collection/Seq;Lscala/Function2;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TK;>;",
            "Lscala/Function2<",
            "TK;TK;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/reflect/ClassTag<",
            "TK;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 273
    invoke-interface {p1, p3}, Lscala/collection/Seq;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    .line 274
    sget-object p3, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    new-instance v4, Lscala/math/Ordering$$anon$9;

    invoke-direct {v4, p2}, Lscala/math/Ordering$$anon$9;-><init>(Lscala/Function2;)V

    instance-of p2, p1, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-object p2, p1

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_0
    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    :cond_0
    instance-of p2, p1, [I

    if-eqz p2, :cond_2

    move-object v1, p1

    check-cast v1, [I

    sget-object p2, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    if-ne v4, p2, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mIc$sp([IIILscala/math/Ordering;[ILscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, [D

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, [D

    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Double()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mDc$sp([DIILscala/math/Ordering;[DLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, [J

    if-eqz p2, :cond_5

    move-object v1, p1

    check-cast v1, [J

    sget-object p2, Lscala/math/Ordering$Long$;->MODULE$:Lscala/math/Ordering$Long$;

    if-ne v4, p2, :cond_4

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mJc$sp([JIILscala/math/Ordering;[JLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_5
    instance-of p2, p1, [F

    if-eqz p2, :cond_6

    move-object v1, p1

    check-cast v1, [F

    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mFc$sp([FIILscala/math/Ordering;[FLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_6
    instance-of p2, p1, [C

    if-eqz p2, :cond_8

    move-object v1, p1

    check-cast v1, [C

    sget-object p2, Lscala/math/Ordering$Char$;->MODULE$:Lscala/math/Ordering$Char$;

    if-ne v4, p2, :cond_7

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mCc$sp([CIILscala/math/Ordering;[CLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_8
    instance-of p2, p1, [B

    if-eqz p2, :cond_a

    move-object v1, p1

    check-cast v1, [B

    sget-object p2, Lscala/math/Ordering$Byte$;->MODULE$:Lscala/math/Ordering$Byte$;

    if-ne v4, p2, :cond_9

    invoke-static {v1}, Ljava/util/Arrays;->sort([B)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mBc$sp([BIILscala/math/Ordering;[BLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_a
    instance-of p2, p1, [S

    if-eqz p2, :cond_c

    move-object v1, p1

    check-cast v1, [S

    sget-object p2, Lscala/math/Ordering$Short$;->MODULE$:Lscala/math/Ordering$Short$;

    if-ne v4, p2, :cond_b

    invoke-static {v1}, Ljava/util/Arrays;->sort([S)V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Short()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mSc$sp([SIILscala/math/Ordering;[SLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_c
    instance-of p2, p1, [Z

    if-eqz p2, :cond_e

    move-object v1, p1

    check-cast v1, [Z

    sget-object p2, Lscala/math/Ordering$Boolean$;->MODULE$:Lscala/math/Ordering$Boolean$;

    if-ne v4, p2, :cond_d

    invoke-virtual {p0, v1}, Lscala/util/Sorting$;->scala$util$Sorting$$booleanSort([Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mZc$sp([ZIILscala/math/Ordering;[ZLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :goto_1
    return-object p1

    :cond_e
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public stableSort(Lscala/collection/Seq;Lscala/reflect/ClassTag;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TK;>;",
            "Lscala/reflect/ClassTag<",
            "TK;>;",
            "Lscala/math/Ordering<",
            "TK;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 265
    invoke-interface {p1, p2}, Lscala/collection/Seq;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    .line 266
    sget-object p2, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    invoke-virtual {p2, p3}, Lscala/math/Ordering$;->apply(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v4

    instance-of p2, p1, [Ljava/lang/Object;

    if-eqz p2, :cond_1

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    const-string p2, "Ordering"

    invoke-static {v4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    move-object p2, p1

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_0
    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    :cond_1
    instance-of p2, p1, [I

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, [I

    sget-object p2, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    if-ne v4, p2, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mIc$sp([IIILscala/math/Ordering;[ILscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, [D

    if-eqz p2, :cond_4

    move-object v1, p1

    check-cast v1, [D

    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Double()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mDc$sp([DIILscala/math/Ordering;[DLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, [J

    if-eqz p2, :cond_6

    move-object v1, p1

    check-cast v1, [J

    sget-object p2, Lscala/math/Ordering$Long$;->MODULE$:Lscala/math/Ordering$Long$;

    if-ne v4, p2, :cond_5

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mJc$sp([JIILscala/math/Ordering;[JLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_6
    instance-of p2, p1, [F

    if-eqz p2, :cond_7

    move-object v1, p1

    check-cast v1, [F

    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mFc$sp([FIILscala/math/Ordering;[FLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_7
    instance-of p2, p1, [C

    if-eqz p2, :cond_9

    move-object v1, p1

    check-cast v1, [C

    sget-object p2, Lscala/math/Ordering$Char$;->MODULE$:Lscala/math/Ordering$Char$;

    if-ne v4, p2, :cond_8

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mCc$sp([CIILscala/math/Ordering;[CLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_9
    instance-of p2, p1, [B

    if-eqz p2, :cond_b

    move-object v1, p1

    check-cast v1, [B

    sget-object p2, Lscala/math/Ordering$Byte$;->MODULE$:Lscala/math/Ordering$Byte$;

    if-ne v4, p2, :cond_a

    invoke-static {v1}, Ljava/util/Arrays;->sort([B)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mBc$sp([BIILscala/math/Ordering;[BLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_b
    instance-of p2, p1, [S

    if-eqz p2, :cond_d

    move-object v1, p1

    check-cast v1, [S

    sget-object p2, Lscala/math/Ordering$Short$;->MODULE$:Lscala/math/Ordering$Short$;

    if-ne v4, p2, :cond_c

    invoke-static {v1}, Ljava/util/Arrays;->sort([S)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Short()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mSc$sp([SIILscala/math/Ordering;[SLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_d
    instance-of p2, p1, [Z

    if-eqz p2, :cond_f

    move-object v1, p1

    check-cast v1, [Z

    sget-object p2, Lscala/math/Ordering$Boolean$;->MODULE$:Lscala/math/Ordering$Boolean$;

    if-ne v4, p2, :cond_e

    invoke-virtual {p0, v1}, Lscala/util/Sorting$;->scala$util$Sorting$$booleanSort([Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p2}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mZc$sp([ZIILscala/math/Ordering;[ZLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :goto_1
    return-object p1

    :cond_f
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public stableSort(Ljava/lang/Object;Lscala/Function2;Lscala/reflect/ClassTag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lscala/Function2<",
            "TK;TK;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/reflect/ClassTag<",
            "TK;>;)V"
        }
    .end annotation

    .line 261
    sget-object p3, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    new-instance v4, Lscala/math/Ordering$$anon$9;

    invoke-direct {v4, p2}, Lscala/math/Ordering$$anon$9;-><init>(Lscala/Function2;)V

    instance-of p2, p1, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    :cond_0
    instance-of p2, p1, [I

    if-eqz p2, :cond_2

    move-object v1, p1

    check-cast v1, [I

    sget-object p1, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    if-ne v4, p1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mIc$sp([IIILscala/math/Ordering;[ILscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, [D

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, [D

    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Double()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mDc$sp([DIILscala/math/Ordering;[DLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, [J

    if-eqz p2, :cond_5

    move-object v1, p1

    check-cast v1, [J

    sget-object p1, Lscala/math/Ordering$Long$;->MODULE$:Lscala/math/Ordering$Long$;

    if-ne v4, p1, :cond_4

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mJc$sp([JIILscala/math/Ordering;[JLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_5
    instance-of p2, p1, [F

    if-eqz p2, :cond_6

    move-object v1, p1

    check-cast v1, [F

    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mFc$sp([FIILscala/math/Ordering;[FLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_6
    instance-of p2, p1, [C

    if-eqz p2, :cond_8

    move-object v1, p1

    check-cast v1, [C

    sget-object p1, Lscala/math/Ordering$Char$;->MODULE$:Lscala/math/Ordering$Char$;

    if-ne v4, p1, :cond_7

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mCc$sp([CIILscala/math/Ordering;[CLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_8
    instance-of p2, p1, [B

    if-eqz p2, :cond_a

    move-object v1, p1

    check-cast v1, [B

    sget-object p1, Lscala/math/Ordering$Byte$;->MODULE$:Lscala/math/Ordering$Byte$;

    if-ne v4, p1, :cond_9

    invoke-static {v1}, Ljava/util/Arrays;->sort([B)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mBc$sp([BIILscala/math/Ordering;[BLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_a
    instance-of p2, p1, [S

    if-eqz p2, :cond_c

    move-object v1, p1

    check-cast v1, [S

    sget-object p1, Lscala/math/Ordering$Short$;->MODULE$:Lscala/math/Ordering$Short$;

    if-ne v4, p1, :cond_b

    invoke-static {v1}, Ljava/util/Arrays;->sort([S)V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Short()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mSc$sp([SIILscala/math/Ordering;[SLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_c
    instance-of p2, p1, [Z

    if-eqz p2, :cond_e

    move-object v1, p1

    check-cast v1, [Z

    sget-object p1, Lscala/math/Ordering$Boolean$;->MODULE$:Lscala/math/Ordering$Boolean$;

    if-ne v4, p1, :cond_d

    invoke-virtual {p0, v1}, Lscala/util/Sorting$;->scala$util$Sorting$$booleanSort([Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mZc$sp([ZIILscala/math/Ordering;[ZLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :goto_1
    return-void

    :cond_e
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public stableSort(Ljava/lang/Object;Lscala/reflect/ClassTag;Lscala/math/Ordering;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lscala/reflect/ClassTag<",
            "TK;>;",
            "Lscala/math/Ordering<",
            "TK;>;)V"
        }
    .end annotation

    .line 256
    sget-object p2, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    invoke-virtual {p2, p3}, Lscala/math/Ordering$;->apply(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v4

    instance-of p2, p1, [Ljava/lang/Object;

    if-eqz p2, :cond_1

    sget-object p2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    const-string p2, "Ordering"

    invoke-static {v4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    :cond_1
    instance-of p2, p1, [I

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, [I

    sget-object p1, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    if-ne v4, p1, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mIc$sp([IIILscala/math/Ordering;[ILscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, [D

    if-eqz p2, :cond_4

    move-object v1, p1

    check-cast v1, [D

    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Double()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mDc$sp([DIILscala/math/Ordering;[DLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, [J

    if-eqz p2, :cond_6

    move-object v1, p1

    check-cast v1, [J

    sget-object p1, Lscala/math/Ordering$Long$;->MODULE$:Lscala/math/Ordering$Long$;

    if-ne v4, p1, :cond_5

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mJc$sp([JIILscala/math/Ordering;[JLscala/reflect/ClassTag;)V

    goto :goto_0

    :cond_6
    instance-of p2, p1, [F

    if-eqz p2, :cond_7

    move-object v1, p1

    check-cast v1, [F

    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mFc$sp([FIILscala/math/Ordering;[FLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_7
    instance-of p2, p1, [C

    if-eqz p2, :cond_9

    move-object v1, p1

    check-cast v1, [C

    sget-object p1, Lscala/math/Ordering$Char$;->MODULE$:Lscala/math/Ordering$Char$;

    if-ne v4, p1, :cond_8

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mCc$sp([CIILscala/math/Ordering;[CLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_9
    instance-of p2, p1, [B

    if-eqz p2, :cond_b

    move-object v1, p1

    check-cast v1, [B

    sget-object p1, Lscala/math/Ordering$Byte$;->MODULE$:Lscala/math/Ordering$Byte$;

    if-ne v4, p1, :cond_a

    invoke-static {v1}, Ljava/util/Arrays;->sort([B)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mBc$sp([BIILscala/math/Ordering;[BLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_b
    instance-of p2, p1, [S

    if-eqz p2, :cond_d

    move-object v1, p1

    check-cast v1, [S

    sget-object p1, Lscala/math/Ordering$Short$;->MODULE$:Lscala/math/Ordering$Short$;

    if-ne v4, p1, :cond_c

    invoke-static {v1}, Ljava/util/Arrays;->sort([S)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Short()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mSc$sp([SIILscala/math/Ordering;[SLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :cond_d
    instance-of p2, p1, [Z

    if-eqz p2, :cond_f

    move-object v1, p1

    check-cast v1, [Z

    sget-object p1, Lscala/math/Ordering$Boolean$;->MODULE$:Lscala/math/Ordering$Boolean$;

    if-ne v4, p1, :cond_e

    invoke-virtual {p0, v1}, Lscala/util/Sorting$;->scala$util$Sorting$$booleanSort([Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    sget-object p1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p1, v1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$default$5()Lscala/runtime/Null$;

    const/4 v5, 0x0

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lscala/util/Sorting$;->scala$util$Sorting$$mergeSort$mZc$sp([ZIILscala/math/Ordering;[ZLscala/reflect/ClassTag;)V

    goto/16 :goto_0

    :goto_1
    return-void

    :cond_f
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
