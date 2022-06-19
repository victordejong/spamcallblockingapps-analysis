.class public final Lc/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Options$Companion;",
        "",
        "()V",
        "intCount",
        "",
        "Lokio/Buffer;",
        "getIntCount",
        "(Lokio/Buffer;)J",
        "buildTrieRecursive",
        "",
        "nodeOffset",
        "node",
        "byteStringOffset",
        "",
        "byteStrings",
        "",
        "Lokio/ByteString;",
        "fromIndex",
        "toIndex",
        "indexes",
        "of",
        "Lokio/Options;",
        "",
        "([Lokio/ByteString;)Lokio/Options;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lc/s$a;-><init>()V

    return-void
.end method

.method private static a(Lc/f;)J
    .locals 4

    .line 19073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x4

    .line 230
    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final a(JLc/f;ILjava/util/List;IILjava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lc/f;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lc/i;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v11, p5

    move/from16 v2, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    if-ge v2, v12, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "Failed requirement."

    if-eqz v5, :cond_14

    move v5, v2

    :goto_1
    if-ge v5, v12, :cond_3

    .line 118
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/i;

    .line 4124
    invoke-virtual {v7}, Lc/i;->f()I

    move-result v7

    if-lt v7, v1, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 122
    :cond_3
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/i;

    add-int/lit8 v6, v12, -0x1

    .line 123
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/i;

    .line 5124
    invoke-virtual {v5}, Lc/i;->f()I

    move-result v7

    const/4 v14, -0x1

    if-ne v1, v7, :cond_4

    .line 128
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    .line 130
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/i;

    move-object/from16 v19, v7

    move v7, v2

    move v2, v5

    move-object/from16 v5, v19

    goto :goto_3

    :cond_4
    move v7, v2

    const/4 v2, -0x1

    .line 6121
    :goto_3
    invoke-virtual {v5, v1}, Lc/i;->b(I)B

    move-result v8

    .line 7121
    invoke-virtual {v6, v1}, Lc/i;->b(I)B

    move-result v9

    const-wide/16 v15, 0x2

    if-eq v8, v9, :cond_e

    add-int/lit8 v3, v7, 0x1

    const/4 v4, 0x1

    :goto_4
    if-ge v3, v12, :cond_6

    add-int/lit8 v5, v3, -0x1

    .line 137
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/i;

    .line 8121
    invoke-virtual {v5, v1}, Lc/i;->b(I)B

    move-result v5

    .line 137
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/i;

    .line 9121
    invoke-virtual {v6, v1}, Lc/i;->b(I)B

    move-result v6

    if-eq v5, v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 143
    :cond_6
    invoke-static/range {p3 .. p3}, Lc/s$a;->a(Lc/f;)J

    move-result-wide v5

    add-long v5, p1, v5

    add-long/2addr v5, v15

    mul-int/lit8 v3, v4, 0x2

    int-to-long v8, v3

    add-long v15, v5, v8

    .line 145
    invoke-virtual {v0, v4}, Lc/f;->f(I)Lc/f;

    .line 146
    invoke-virtual {v0, v2}, Lc/f;->f(I)Lc/f;

    move v2, v7

    :goto_5
    if-ge v2, v12, :cond_9

    .line 149
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/i;

    .line 10121
    invoke-virtual {v3, v1}, Lc/i;->b(I)B

    move-result v3

    if-eq v2, v7, :cond_7

    add-int/lit8 v4, v2, -0x1

    .line 150
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/i;

    .line 11121
    invoke-virtual {v4, v1}, Lc/i;->b(I)B

    move-result v4

    if-eq v3, v4, :cond_8

    :cond_7
    and-int/lit16 v3, v3, 0xff

    .line 151
    invoke-virtual {v0, v3}, Lc/f;->f(I)Lc/f;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 155
    :cond_9
    new-instance v17, Lc/f;

    invoke-direct/range {v17 .. v17}, Lc/f;-><init>()V

    move v8, v7

    :goto_6
    if-ge v8, v12, :cond_d

    .line 158
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/i;

    .line 12121
    invoke-virtual {v2, v1}, Lc/i;->b(I)B

    move-result v2

    add-int/lit8 v3, v8, 0x1

    move v4, v3

    :goto_7
    if-ge v4, v12, :cond_b

    .line 161
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/i;

    .line 13121
    invoke-virtual {v5, v1}, Lc/i;->b(I)B

    move-result v5

    if-eq v2, v5, :cond_a

    move v10, v4

    goto :goto_8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    move v10, v12

    :goto_8
    if-ne v3, v10, :cond_c

    add-int/lit8 v2, v1, 0x1

    .line 168
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/i;

    .line 13124
    invoke-virtual {v3}, Lc/i;->f()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 170
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lc/f;->f(I)Lc/f;

    move/from16 v18, v10

    goto :goto_9

    .line 173
    :cond_c
    invoke-static/range {v17 .. v17}, Lc/s$a;->a(Lc/f;)J

    move-result-wide v2

    add-long/2addr v2, v15

    long-to-int v3, v2

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lc/f;->f(I)Lc/f;

    .line 174
    move-object/from16 v2, p0

    check-cast v2, Lc/s$a;

    add-int/lit8 v6, v1, 0x1

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v7, p5

    move v9, v10

    move/from16 v18, v10

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lc/s$a;->a(JLc/f;ILjava/util/List;IILjava/util/List;)V

    :goto_9
    move/from16 v8, v18

    goto :goto_6

    .line 187
    :cond_d
    move-object/from16 v1, v17

    check-cast v1, Lc/ad;

    invoke-virtual {v0, v1}, Lc/f;->a(Lc/ad;)J

    return-void

    .line 14124
    :cond_e
    invoke-virtual {v5}, Lc/i;->f()I

    move-result v8

    .line 15124
    invoke-virtual {v6}, Lc/i;->f()I

    move-result v9

    .line 191
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v1

    const/4 v10, 0x0

    :goto_a
    if-ge v9, v8, :cond_f

    .line 16121
    invoke-virtual {v5, v9}, Lc/i;->b(I)B

    move-result v3

    .line 17121
    invoke-virtual {v6, v9}, Lc/i;->b(I)B

    move-result v4

    if-ne v3, v4, :cond_f

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 200
    :cond_f
    invoke-static/range {p3 .. p3}, Lc/s$a;->a(Lc/f;)J

    move-result-wide v3

    add-long v3, p1, v3

    add-long/2addr v3, v15

    int-to-long v8, v10

    add-long/2addr v3, v8

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    neg-int v6, v10

    .line 202
    invoke-virtual {v0, v6}, Lc/f;->f(I)Lc/f;

    .line 203
    invoke-virtual {v0, v2}, Lc/f;->f(I)Lc/f;

    add-int v6, v1, v10

    :goto_b
    if-ge v1, v6, :cond_10

    .line 18121
    invoke-virtual {v5, v1}, Lc/i;->b(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 206
    invoke-virtual {v0, v2}, Lc/f;->f(I)Lc/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v1, v7, 0x1

    if-ne v1, v12, :cond_13

    .line 211
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/i;

    .line 18124
    invoke-virtual {v1}, Lc/i;->f()I

    move-result v1

    if-ne v6, v1, :cond_11

    const/4 v3, 0x1

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_12

    .line 212
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/f;->f(I)Lc/f;

    return-void

    .line 211
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 215
    :cond_13
    new-instance v10, Lc/f;

    invoke-direct {v10}, Lc/f;-><init>()V

    .line 216
    invoke-static {v10}, Lc/s$a;->a(Lc/f;)J

    move-result-wide v1

    add-long/2addr v1, v3

    long-to-int v2, v1

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lc/f;->f(I)Lc/f;

    .line 217
    move-object/from16 v1, p0

    check-cast v1, Lc/s$a;

    move-wide v2, v3

    move-object v4, v10

    move v5, v6

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lc/s$a;->a(JLc/f;ILjava/util/List;IILjava/util/List;)V

    .line 225
    check-cast v10, Lc/ad;

    invoke-virtual {v0, v10}, Lc/f;->a(Lc/ad;)J

    return-void

    .line 116
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static synthetic a(Lc/s$a;Lc/f;Ljava/util/List;Ljava/util/List;)V
    .locals 9

    .line 113
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lc/s$a;->a(JLc/f;ILjava/util/List;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final varargs a([Lc/i;)Lc/s;
    .locals 12

    const-string v0, "byteStrings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 36
    new-instance p1, Lc/s;

    new-array v0, v2, [Lc/i;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p1, v0, v1, v3}, Lc/s;-><init>([Lc/i;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 41
    :cond_1
    invoke-static {p1}, Lkotlin/a/i;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/a/n;->c(Ljava/util/List;)V

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 235
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    const/4 v7, -0x1

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 237
    :cond_2
    check-cast v4, Ljava/util/List;

    .line 234
    check-cast v4, Ljava/util/Collection;

    new-array v5, v2, [Ljava/lang/Integer;

    .line 239
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Integer;

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    .line 43
    invoke-static {v4}, Lkotlin/a/n;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 241
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v8, p1, v6

    add-int/lit8 v9, v7, 0x1

    .line 45
    check-cast v8, Ljava/lang/Comparable;

    invoke-static {v0, v8}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/lang/Comparable;)I

    move-result v8

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_2

    .line 48
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/i;

    .line 1124
    invoke-virtual {v5}, Lc/i;->f()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_b

    const/4 v5, 0x0

    .line 54
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 55
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/i;

    add-int/lit8 v7, v5, 0x1

    move v8, v7

    .line 57
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 58
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/i;

    .line 59
    invoke-virtual {v9, v6}, Lc/i;->a(Lc/i;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2124
    invoke-virtual {v9}, Lc/i;->f()I

    move-result v10

    .line 3124
    invoke-virtual {v6}, Lc/i;->f()I

    move-result v11

    if-eq v10, v11, :cond_5

    const/4 v10, 0x1

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_7

    .line 61
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-le v9, v10, :cond_6

    .line 62
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 60
    :cond_7
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duplicate option: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_8
    move v5, v7

    goto :goto_4

    .line 71
    :cond_9
    new-instance v1, Lc/f;

    invoke-direct {v1}, Lc/f;-><init>()V

    .line 72
    move-object v5, p0

    check-cast v5, Lc/s$a;

    invoke-static {v5, v1, v0, v4}, Lc/s$a;->a(Lc/s$a;Lc/f;Ljava/util/List;Ljava/util/List;)V

    .line 74
    invoke-static {v1}, Lc/s$a;->a(Lc/f;)J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [I

    .line 76
    :goto_7
    invoke-virtual {v1}, Lc/f;->e()Z

    move-result v4

    if-nez v4, :cond_a

    add-int/lit8 v4, v2, 0x1

    .line 77
    invoke-virtual {v1}, Lc/f;->k()I

    move-result v5

    aput v5, v0, v2

    move v2, v4

    goto :goto_7

    .line 80
    :cond_a
    new-instance v1, Lc/s;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Lc/i;

    invoke-direct {v1, p1, v0, v3}, Lc/s;-><init>([Lc/i;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 48
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method
