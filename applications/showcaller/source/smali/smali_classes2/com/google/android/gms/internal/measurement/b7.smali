.class final Lcom/google/android/gms/internal/measurement/b7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/k7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/k7<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/measurement/y6;

.field private final h:Z

.field private final i:Z

.field private final j:[I

.field private final k:I

.field private final l:I

.field private final m:Lcom/google/android/gms/internal/measurement/n6;

.field private final n:Lcom/google/android/gms/internal/measurement/x7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x7<",
            "**>;"
        }
    .end annotation
.end field

.field private final o:Lcom/google/android/gms/internal/measurement/m5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/m5<",
            "*>;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/gms/internal/measurement/e7;

.field private final q:Lcom/google/android/gms/internal/measurement/t6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/b7;->a:[I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i8;->v()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/y6;ZZ[IIILcom/google/android/gms/internal/measurement/e7;Lcom/google/android/gms/internal/measurement/n6;Lcom/google/android/gms/internal/measurement/x7;Lcom/google/android/gms/internal/measurement/m5;Lcom/google/android/gms/internal/measurement/t6;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/measurement/y6;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/measurement/e7;",
            "Lcom/google/android/gms/internal/measurement/n6;",
            "Lcom/google/android/gms/internal/measurement/x7<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/m5<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/t6;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/b7;->d:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/measurement/b7;->e:I

    move v3, p4

    iput v3, v0, Lcom/google/android/gms/internal/measurement/b7;->f:I

    move v3, p6

    iput-boolean v3, v0, Lcom/google/android/gms/internal/measurement/b7;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1
    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/measurement/m5;->a(Lcom/google/android/gms/internal/measurement/y6;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v0, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    move-object v3, p8

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/b7;->j:[I

    move v3, p9

    iput v3, v0, Lcom/google/android/gms/internal/measurement/b7;->k:I

    move v3, p10

    iput v3, v0, Lcom/google/android/gms/internal/measurement/b7;->l:I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/b7;->p:Lcom/google/android/gms/internal/measurement/e7;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/b7;->m:Lcom/google/android/gms/internal/measurement/n6;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/b7;->g:Lcom/google/android/gms/internal/measurement/y6;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/b7;->q:Lcom/google/android/gms/internal/measurement/t6;

    return-void
.end method

.method private static final A(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/g5;->x(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/g5;->y(ILcom/google/android/gms/internal/measurement/zzgr;)V

    return-void
.end method

.method static B(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/y7;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/x5;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x5;->zzc:Lcom/google/android/gms/internal/measurement/y7;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/y7;->a()Lcom/google/android/gms/internal/measurement/y7;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/y7;->b()Lcom/google/android/gms/internal/measurement/y7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x5;->zzc:Lcom/google/android/gms/internal/measurement/y7;

    :cond_0
    return-object v0
.end method

.method static D(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/v6;Lcom/google/android/gms/internal/measurement/e7;Lcom/google/android/gms/internal/measurement/n6;Lcom/google/android/gms/internal/measurement/x7;Lcom/google/android/gms/internal/measurement/m5;Lcom/google/android/gms/internal/measurement/t6;)Lcom/google/android/gms/internal/measurement/b7;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/v6;",
            "Lcom/google/android/gms/internal/measurement/e7;",
            "Lcom/google/android/gms/internal/measurement/n6;",
            "Lcom/google/android/gms/internal/measurement/x7<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/m5<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/t6;",
            ")",
            "Lcom/google/android/gms/internal/measurement/b7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/j7;

    if-eqz p0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/j7;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/b7;->E(Lcom/google/android/gms/internal/measurement/j7;Lcom/google/android/gms/internal/measurement/e7;Lcom/google/android/gms/internal/measurement/n6;Lcom/google/android/gms/internal/measurement/x7;Lcom/google/android/gms/internal/measurement/m5;Lcom/google/android/gms/internal/measurement/t6;)Lcom/google/android/gms/internal/measurement/b7;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/v7;

    const/4 p0, 0x0

    throw p0
.end method

.method static E(Lcom/google/android/gms/internal/measurement/j7;Lcom/google/android/gms/internal/measurement/e7;Lcom/google/android/gms/internal/measurement/n6;Lcom/google/android/gms/internal/measurement/x7;Lcom/google/android/gms/internal/measurement/m5;Lcom/google/android/gms/internal/measurement/t6;)Lcom/google/android/gms/internal/measurement/b7;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/j7;",
            "Lcom/google/android/gms/internal/measurement/e7;",
            "Lcom/google/android/gms/internal/measurement/n6;",
            "Lcom/google/android/gms/internal/measurement/x7<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/m5<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/t6;",
            ")",
            "Lcom/google/android/gms/internal/measurement/b7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/j7;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/j7;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v6, 0x1

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v4, 0x1

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_3

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_2

    :cond_3
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/measurement/b7;->a:[I

    move-object v13, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v6, v4, 0x1

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_7

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_3
    add-int/lit8 v9, v6, 0x1

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_6

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_3

    :cond_6
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_7
    add-int/lit8 v8, v6, 0x1

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_9

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_8
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_9
    add-int/lit8 v9, v8, 0x1

    .line 12
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 13
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_a
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b
    add-int/lit8 v11, v9, 0x1

    .line 14
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_c
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_e
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_10
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_11
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_13
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_15

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_14
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_15
    add-int v16, v14, v12

    add-int v13, v16, v13

    .line 24
    new-array v13, v13, [I

    add-int v16, v4, v4

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    move/from16 v33, v12

    move v12, v9

    move/from16 v9, v33

    .line 25
    :goto_b
    sget-object v15, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/j7;->d()[Ljava/lang/Object;

    move-result-object v17

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/j7;->b()Lcom/google/android/gms/internal/measurement/y6;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    mul-int/lit8 v7, v11, 0x3

    .line 28
    new-array v7, v7, [I

    add-int/2addr v11, v11

    .line 29
    new-array v11, v11, [Ljava/lang/Object;

    add-int v21, v14, v9

    move/from16 v22, v14

    move/from16 v23, v21

    const/4 v9, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v4, v3, :cond_32

    add-int/lit8 v24, v4, 0x1

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v2, 0x1

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_e

    :cond_17
    move/from16 v2, v24

    :goto_e
    add-int/lit8 v24, v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v27, v5, 0x1

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v3

    const v3, 0xd800

    if-lt v5, v3, :cond_18

    and-int/lit16 v3, v5, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v2, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v27

    move/from16 v3, v28

    goto :goto_f

    :cond_18
    shl-int v3, v5, v24

    or-int/2addr v2, v3

    move/from16 v3, v27

    goto :goto_10

    :cond_19
    move/from16 v28, v3

    move/from16 v3, v24

    :goto_10
    and-int/lit16 v5, v2, 0xff

    move/from16 v24, v14

    and-int/lit16 v14, v2, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v20, 0x1

    .line 34
    aput v9, v13, v20

    move/from16 v20, v14

    :cond_1a
    const/16 v14, 0x33

    if-lt v5, v14, :cond_22

    add-int/lit8 v14, v3, 0x1

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v3, v14, :cond_1c

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_11
    add-int/lit8 v31, v14, 0x1

    .line 36
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v12

    const v12, 0xd800

    if-lt v14, v12, :cond_1b

    and-int/lit16 v12, v14, 0x1fff

    shl-int v12, v12, v27

    or-int/2addr v3, v12

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v12, v32

    goto :goto_11

    :cond_1b
    shl-int v12, v14, v27

    or-int/2addr v3, v12

    move/from16 v14, v31

    goto :goto_12

    :cond_1c
    move/from16 v32, v12

    move/from16 v14, v27

    :goto_12
    add-int/lit8 v12, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v12, v14, :cond_1e

    const/16 v14, 0x11

    if-ne v12, v14, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v14, 0xc

    if-ne v12, v14, :cond_1f

    if-nez v10, :cond_1f

    .line 37
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 38
    aget-object v16, v17, v16

    aput-object v16, v11, v12

    goto :goto_14

    .line 39
    :cond_1e
    :goto_13
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 40
    aget-object v16, v17, v16

    aput-object v16, v11, v12

    :goto_14
    move/from16 v16, v14

    :cond_1f
    add-int/2addr v3, v3

    .line 41
    aget-object v12, v17, v3

    .line 42
    instance-of v14, v12, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_20

    .line 43
    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 44
    :cond_20
    check-cast v12, Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/measurement/b7;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 45
    aput-object v12, v17, v3

    :goto_15
    move-object/from16 v31, v7

    move v14, v8

    .line 46
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    add-int/lit8 v3, v3, 0x1

    .line 47
    aget-object v7, v17, v3

    .line 48
    instance-of v12, v7, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_21

    .line 49
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 50
    :cond_21
    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/measurement/b7;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 51
    aput-object v7, v17, v3

    :goto_16
    move v3, v8

    .line 52
    invoke-virtual {v15, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    move-object/from16 v30, v0

    move-object v7, v1

    move v1, v8

    move-object/from16 v29, v11

    const/16 v25, 0x1

    move v8, v3

    const/4 v3, 0x0

    goto/16 :goto_21

    :cond_22
    move-object/from16 v31, v7

    move v14, v8

    move/from16 v32, v12

    add-int/lit8 v7, v16, 0x1

    .line 53
    aget-object v8, v17, v16

    check-cast v8, Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/measurement/b7;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/16 v12, 0x9

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x11

    if-ne v5, v12, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_29

    const/16 v12, 0x31

    if-ne v5, v12, :cond_24

    goto :goto_18

    :cond_24
    const/16 v12, 0xc

    if-eq v5, v12, :cond_28

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_28

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_25

    goto :goto_17

    :cond_25
    const/16 v12, 0x32

    if-ne v5, v12, :cond_26

    add-int/lit8 v12, v22, 0x1

    .line 54
    aput v9, v13, v22

    div-int/lit8 v22, v9, 0x3

    add-int v22, v22, v22

    add-int/lit8 v27, v7, 0x1

    .line 55
    aget-object v7, v17, v7

    aput-object v7, v11, v22

    and-int/lit16 v7, v2, 0x800

    if-eqz v7, :cond_27

    add-int/lit8 v7, v27, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 56
    aget-object v27, v17, v27

    aput-object v27, v11, v22

    move/from16 v22, v12

    :cond_26
    const/16 v25, 0x1

    goto :goto_1b

    :cond_27
    move/from16 v22, v12

    move/from16 v12, v27

    const/16 v25, 0x1

    goto :goto_1c

    :cond_28
    :goto_17
    if-nez v10, :cond_26

    .line 57
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v27, v7, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 58
    aget-object v7, v17, v7

    aput-object v7, v11, v12

    goto :goto_19

    :cond_29
    :goto_18
    const/16 v25, 0x1

    .line 59
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v27, v7, 0x1

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    .line 60
    aget-object v7, v17, v7

    aput-object v7, v11, v12

    :goto_19
    move/from16 v12, v27

    goto :goto_1c

    :cond_2a
    :goto_1a
    const/16 v25, 0x1

    .line 61
    div-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    .line 62
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v11, v12

    :goto_1b
    move v12, v7

    .line 63
    :goto_1c
    invoke-virtual {v15, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    and-int/lit16 v7, v2, 0x1000

    const v27, 0xfffff

    move-object/from16 v29, v11

    const/16 v11, 0x1000

    if-ne v7, v11, :cond_2e

    const/16 v7, 0x11

    if-gt v5, v7, :cond_2e

    add-int/lit8 v7, v3, 0x1

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v11, 0xd800

    if-lt v3, v11, :cond_2c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v26, 0xd

    :goto_1d
    add-int/lit8 v27, v7, 0x1

    .line 65
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v11, :cond_2b

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v26

    or-int/2addr v3, v7

    add-int/lit8 v26, v26, 0xd

    move/from16 v7, v27

    goto :goto_1d

    :cond_2b
    shl-int v7, v7, v26

    or-int/2addr v3, v7

    goto :goto_1e

    :cond_2c
    move/from16 v27, v7

    :goto_1e
    add-int v7, v6, v6

    div-int/lit8 v26, v3, 0x20

    add-int v7, v7, v26

    .line 66
    aget-object v11, v17, v7

    move-object/from16 v30, v0

    .line 67
    instance-of v0, v11, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2d

    .line 68
    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_1f

    .line 69
    :cond_2d
    check-cast v11, Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/measurement/b7;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 70
    aput-object v11, v17, v7

    :goto_1f
    move-object v7, v1

    .line 71
    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v3, v3, 0x20

    goto :goto_20

    :cond_2e
    move-object/from16 v30, v0

    move-object v7, v1

    move/from16 v27, v3

    const v1, 0xfffff

    const/4 v3, 0x0

    :goto_20
    const/16 v0, 0x12

    if-lt v5, v0, :cond_2f

    const/16 v0, 0x31

    if-gt v5, v0, :cond_2f

    add-int/lit8 v0, v23, 0x1

    .line 72
    aput v8, v13, v23

    move/from16 v23, v0

    :cond_2f
    move/from16 v16, v12

    :goto_21
    add-int/lit8 v0, v9, 0x1

    .line 73
    aput v4, v31, v9

    add-int/lit8 v4, v0, 0x1

    and-int/lit16 v9, v2, 0x200

    if-eqz v9, :cond_30

    const/high16 v9, 0x20000000

    goto :goto_22

    :cond_30
    const/4 v9, 0x0

    :goto_22
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_31

    const/high16 v2, 0x10000000

    goto :goto_23

    :cond_31
    const/4 v2, 0x0

    :goto_23
    or-int/2addr v2, v9

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v2, v5

    or-int/2addr v2, v8

    .line 74
    aput v2, v31, v0

    add-int/lit8 v9, v4, 0x1

    shl-int/lit8 v0, v3, 0x14

    or-int/2addr v0, v1

    .line 75
    aput v0, v31, v4

    move-object v1, v7

    move v8, v14

    move/from16 v14, v24

    move/from16 v4, v27

    move/from16 v3, v28

    move-object/from16 v11, v29

    move-object/from16 v0, v30

    move-object/from16 v7, v31

    move/from16 v12, v32

    const v5, 0xd800

    goto/16 :goto_c

    :cond_32
    move-object/from16 v31, v7

    move-object/from16 v29, v11

    move/from16 v32, v12

    move/from16 v24, v14

    move v14, v8

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/measurement/b7;

    move-object v4, v0

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/j7;->b()Lcom/google/android/gms/internal/measurement/y6;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v1, v29

    const/16 v20, 0x0

    move-object/from16 v5, v31

    move-object v6, v1

    move v7, v14

    move/from16 v8, v32

    move-object v12, v13

    move/from16 v13, v24

    move/from16 v14, v21

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/internal/measurement/b7;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/y6;ZZ[IIILcom/google/android/gms/internal/measurement/e7;Lcom/google/android/gms/internal/measurement/n6;Lcom/google/android/gms/internal/measurement/x7;Lcom/google/android/gms/internal/measurement/m5;Lcom/google/android/gms/internal/measurement/t6;[B)V

    return-object v0
.end method

.method private static F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final G(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/measurement/f6;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method private final H(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 2
    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/f6;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/b7;->u(Ljava/lang/Object;II)V

    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 10
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/b7;->u(Ljava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method private final I(Ljava/lang/Object;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 1
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 2
    aget v8, v8, v3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v9

    const/16 v10, 0x11

    const/4 v11, 0x1

    if-gt v9, v10, :cond_0

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v12, v3, 0x2

    .line 3
    aget v10, v10, v12

    and-int v12, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    if-eq v12, v6, :cond_1

    int-to-long v5, v12

    .line 4
    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v12

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :cond_1
    :goto_1
    and-int/2addr v7, v1

    int-to-long v12, v7

    const/16 v7, 0x3f

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_b

    .line 5
    :pswitch_0
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/y6;

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v9

    .line 8
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/f5;->e(ILcom/google/android/gms/internal/measurement/y6;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v7

    goto/16 :goto_3

    .line 9
    :pswitch_1
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 10
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    add-long v11, v9, v9

    shr-long/2addr v9, v7

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v7

    goto/16 :goto_6

    .line 11
    :pswitch_2
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 12
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    add-int v9, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_6

    .line 13
    :pswitch_3
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 14
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_a

    .line 15
    :pswitch_4
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 16
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_9

    .line 17
    :pswitch_5
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 18
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->z(I)I

    move-result v7

    goto/16 :goto_6

    .line 19
    :pswitch_6
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 20
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_6

    .line 21
    :pswitch_7
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 22
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgr;

    shl-int/lit8 v8, v8, 0x3

    .line 23
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgr;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_4

    .line 25
    :pswitch_8
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 26
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 27
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/m7;->Y(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v7

    goto/16 :goto_3

    .line 28
    :pswitch_9
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 29
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 30
    instance-of v9, v7, Lcom/google/android/gms/internal/measurement/zzgr;

    if-eqz v9, :cond_2

    .line 31
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgr;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgr;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_4

    .line 33
    :cond_2
    check-cast v7, Ljava/lang/String;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    .line 34
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->C(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_6

    .line 35
    :pswitch_a
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 36
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_5

    .line 37
    :pswitch_b
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 38
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_9

    .line 39
    :pswitch_c
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 40
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_a

    .line 41
    :pswitch_d
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 42
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->z(I)I

    move-result v7

    goto/16 :goto_6

    .line 43
    :pswitch_e
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 44
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v8

    goto/16 :goto_8

    .line 45
    :pswitch_f
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 46
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v8

    goto/16 :goto_8

    .line 47
    :pswitch_10
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 48
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_9

    .line 49
    :pswitch_11
    invoke-direct {p0, p1, v8, v3}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 50
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_a

    .line 51
    :pswitch_12
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/b7;->O(I)Ljava/lang/Object;

    move-result-object v9

    .line 52
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/t6;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_b

    .line 53
    :pswitch_13
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 54
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v9

    .line 55
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/m7;->b0(ILjava/util/List;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v7

    goto/16 :goto_3

    .line 56
    :pswitch_14
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 57
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->H(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 58
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_2

    .line 59
    :pswitch_15
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 60
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->P(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 61
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_2

    .line 62
    :pswitch_16
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 63
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->T(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 64
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_2

    .line 65
    :pswitch_17
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 66
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->R(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 67
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_2

    .line 68
    :pswitch_18
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 69
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->J(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 70
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_2

    .line 71
    :pswitch_19
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 72
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->N(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 73
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_2

    .line 74
    :pswitch_1a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 75
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->V(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 76
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_2

    .line 77
    :pswitch_1b
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 78
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->R(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 79
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto/16 :goto_2

    .line 80
    :pswitch_1c
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 81
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->T(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 82
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto :goto_2

    .line 83
    :pswitch_1d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 84
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->L(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 85
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto :goto_2

    .line 86
    :pswitch_1e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 87
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->F(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 88
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto :goto_2

    .line 89
    :pswitch_1f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 90
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->D(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 91
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto :goto_2

    .line 92
    :pswitch_20
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 93
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->R(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 94
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto :goto_2

    .line 95
    :pswitch_21
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 96
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/m7;->T(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 97
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    :goto_2
    add-int/2addr v8, v9

    goto/16 :goto_6

    .line 98
    :pswitch_22
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 99
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->I(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 100
    :pswitch_23
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 101
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->Q(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 102
    :pswitch_24
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 103
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->U(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 104
    :pswitch_25
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 105
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->S(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 106
    :pswitch_26
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 107
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->K(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 108
    :pswitch_27
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 109
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->O(ILjava/util/List;Z)I

    move-result v7

    goto/16 :goto_3

    .line 110
    :pswitch_28
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 111
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/m7;->a0(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    .line 112
    :pswitch_29
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v9

    .line 113
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/m7;->Z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v7

    goto :goto_3

    .line 114
    :pswitch_2a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/m7;->X(ILjava/util/List;)I

    move-result v7

    goto :goto_3

    .line 115
    :pswitch_2b
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 116
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->W(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 117
    :pswitch_2c
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 118
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->S(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 119
    :pswitch_2d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 120
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->U(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 121
    :pswitch_2e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 122
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->M(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 123
    :pswitch_2f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 124
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->G(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 125
    :pswitch_30
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 126
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->E(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 127
    :pswitch_31
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 128
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->S(ILjava/util/List;Z)I

    move-result v7

    goto :goto_3

    .line 129
    :pswitch_32
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 130
    invoke-static {v8, v7, v2}, Lcom/google/android/gms/internal/measurement/m7;->U(ILjava/util/List;Z)I

    move-result v7

    :goto_3
    add-int/2addr v4, v7

    goto/16 :goto_b

    :pswitch_33
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 131
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/y6;

    .line 132
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v9

    .line 133
    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/f5;->e(ILcom/google/android/gms/internal/measurement/y6;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v7

    goto :goto_3

    :pswitch_34
    and-int v9, v5, v10

    if-eqz v9, :cond_4

    .line 134
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    add-long v11, v9, v9

    shr-long/2addr v9, v7

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v7

    goto/16 :goto_6

    :pswitch_35
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 135
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    add-int v9, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v9

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_36
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 136
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_a

    :pswitch_37
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 137
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_9

    :pswitch_38
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 138
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->z(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_39
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 139
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_3a
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 140
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgr;

    shl-int/lit8 v8, v8, 0x3

    .line 141
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    .line 142
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgr;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    :goto_4
    add-int/2addr v9, v7

    add-int/2addr v8, v9

    goto/16 :goto_7

    :pswitch_3b
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 143
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 144
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/google/android/gms/internal/measurement/m7;->Y(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3c
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 145
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 146
    instance-of v9, v7, Lcom/google/android/gms/internal/measurement/zzgr;

    if-eqz v9, :cond_3

    .line 147
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgr;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    .line 148
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgr;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v9

    goto :goto_4

    .line 149
    :cond_3
    check-cast v7, Ljava/lang/String;

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    .line 150
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->C(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    :pswitch_3d
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 151
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    :goto_5
    add-int/2addr v7, v11

    goto/16 :goto_3

    :pswitch_3e
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 152
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto :goto_9

    :pswitch_3f
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 153
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    goto :goto_a

    :pswitch_40
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 154
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    shl-int/lit8 v8, v8, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->z(I)I

    move-result v7

    :goto_6
    add-int/2addr v8, v7

    :goto_7
    add-int/2addr v4, v8

    goto :goto_b

    :pswitch_41
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 155
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v8

    goto :goto_8

    :pswitch_42
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 156
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    shl-int/lit8 v7, v8, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v8

    :goto_8
    add-int/2addr v7, v8

    goto/16 :goto_3

    :pswitch_43
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 157
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    :goto_9
    add-int/lit8 v7, v7, 0x4

    goto/16 :goto_3

    :pswitch_44
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    shl-int/lit8 v7, v8, 0x3

    .line 158
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v7

    :goto_a
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_3

    :cond_4
    :goto_b
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 160
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/x7;->h(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-nez v0, :cond_6

    return v4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 162
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final J(Ljava/lang/Object;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 2
    aget v6, v6, v2

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzhj;->M:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()I

    move-result v4

    if-lt v5, v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzhj;->Z:Lcom/google/android/gms/internal/measurement/zzhj;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()I

    move-result v4

    if-gt v5, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v9, v2, 0x2

    .line 6
    aget v4, v4, v9

    :cond_0
    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_a

    .line 7
    :pswitch_0
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/y6;

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    .line 10
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/f5;->e(ILcom/google/android/gms/internal/measurement/y6;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v4

    goto/16 :goto_2

    .line 11
    :pswitch_1
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    add-long v9, v7, v7

    shr-long v6, v7, v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v4

    goto/16 :goto_5

    .line 13
    :pswitch_2
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_5

    .line 15
    :pswitch_3
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_9

    .line 17
    :pswitch_4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_8

    .line 19
    :pswitch_5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->z(I)I

    move-result v4

    goto/16 :goto_5

    .line 21
    :pswitch_6
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 22
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_5

    .line 23
    :pswitch_7
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 24
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgr;

    shl-int/lit8 v5, v6, 0x3

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgr;->zzc()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_3

    .line 27
    :pswitch_8
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 29
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/m7;->Y(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v4

    goto/16 :goto_2

    .line 30
    :pswitch_9
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 31
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzgr;

    if-eqz v5, :cond_1

    .line 33
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgr;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgr;->zzc()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_3

    .line 35
    :cond_1
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    .line 36
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->C(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_5

    .line 37
    :pswitch_a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 38
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_4

    .line 39
    :pswitch_b
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 40
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_8

    .line 41
    :pswitch_c
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 42
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_9

    .line 43
    :pswitch_d
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->z(I)I

    move-result v4

    goto/16 :goto_5

    .line 45
    :pswitch_e
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v4

    goto/16 :goto_7

    .line 47
    :pswitch_f
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v4

    goto/16 :goto_7

    .line 49
    :pswitch_10
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 50
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_8

    .line 51
    :pswitch_11
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 52
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_9

    .line 53
    :pswitch_12
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->O(I)Ljava/lang/Object;

    move-result-object v5

    .line 54
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/t6;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_a

    .line 55
    :pswitch_13
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 56
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    .line 57
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/m7;->b0(ILjava/util/List;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v4

    goto/16 :goto_2

    .line 58
    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 59
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->H(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 60
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_1

    .line 61
    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 62
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->P(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 63
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_1

    .line 64
    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 65
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->T(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 66
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_1

    .line 67
    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 68
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->R(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 69
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_1

    .line 70
    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 71
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->J(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 72
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_1

    .line 73
    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 74
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->N(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 75
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_1

    .line 76
    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 77
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->V(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 78
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_1

    .line 79
    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 80
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->R(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 81
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto/16 :goto_1

    .line 82
    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 83
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->T(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 84
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto :goto_1

    .line 85
    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 86
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->L(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 87
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto :goto_1

    .line 88
    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 89
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->F(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 90
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto :goto_1

    .line 91
    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 92
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->D(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 93
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto :goto_1

    .line 94
    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 95
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->R(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 96
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto :goto_1

    .line 97
    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 98
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/m7;->T(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    .line 99
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->y(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    :goto_1
    add-int/2addr v5, v6

    goto/16 :goto_5

    .line 100
    :pswitch_22
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 101
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->I(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 102
    :pswitch_23
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 103
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->Q(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 104
    :pswitch_24
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 105
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->U(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 106
    :pswitch_25
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 107
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->S(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 108
    :pswitch_26
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 109
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->K(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 110
    :pswitch_27
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 111
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->O(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 112
    :pswitch_28
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 113
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/m7;->a0(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_2

    .line 114
    :pswitch_29
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 115
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    .line 116
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/m7;->Z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v4

    goto :goto_2

    .line 117
    :pswitch_2a
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 118
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/m7;->X(ILjava/util/List;)I

    move-result v4

    goto :goto_2

    .line 119
    :pswitch_2b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 120
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->W(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 121
    :pswitch_2c
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 122
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->S(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 123
    :pswitch_2d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 124
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->U(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 125
    :pswitch_2e
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 126
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->M(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 127
    :pswitch_2f
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 128
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->G(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 129
    :pswitch_30
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 130
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->E(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 131
    :pswitch_31
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 132
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->S(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 133
    :pswitch_32
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 134
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/measurement/m7;->U(ILjava/util/List;Z)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_a

    .line 135
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/y6;

    .line 137
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    .line 138
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/f5;->e(ILcom/google/android/gms/internal/measurement/y6;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v4

    goto :goto_2

    .line 139
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    add-long v9, v7, v7

    shr-long v6, v7, v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v4

    goto/16 :goto_5

    .line 141
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_5

    .line 143
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 144
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_9

    .line 145
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 146
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_8

    .line 147
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->z(I)I

    move-result v4

    goto/16 :goto_5

    .line 149
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto/16 :goto_5

    .line 151
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgr;

    shl-int/lit8 v5, v6, 0x3

    .line 153
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    .line 154
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgr;->zzc()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    :goto_3
    add-int/2addr v6, v4

    add-int/2addr v5, v6

    goto/16 :goto_6

    .line 155
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 157
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/m7;->Y(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)I

    move-result v4

    goto/16 :goto_2

    .line 158
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 160
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzgr;

    if-eqz v5, :cond_2

    .line 161
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgr;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    .line 162
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgr;->zzc()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    goto :goto_3

    .line 163
    :cond_2
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    .line 164
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->C(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    .line 165
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 166
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 167
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 168
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto :goto_8

    .line 169
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 170
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    goto :goto_9

    .line 171
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->z(I)I

    move-result v4

    :goto_5
    add-int/2addr v5, v4

    :goto_6
    add-int/2addr v3, v5

    goto :goto_a

    .line 173
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v4

    goto :goto_7

    .line 175
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/f5;->B(J)I

    move-result v4

    :goto_7
    add-int/2addr v6, v4

    add-int/2addr v3, v6

    goto :goto_a

    .line 177
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 178
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    :goto_8
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_2

    .line 179
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 180
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/f5;->A(I)I

    move-result v4

    :goto_9
    add-int/lit8 v4, v4, 0x8

    goto/16 :goto_2

    :cond_3
    :goto_a
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 182
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 183
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->h(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v3, p1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final K(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/r4;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/measurement/r4;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/e6;

    .line 2
    invoke-interface {v12}, Lcom/google/android/gms/internal/measurement/e6;->zza()Z

    move-result v13

    if-nez v13, :cond_1

    .line 3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    .line 4
    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/measurement/e6;->a(I)Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v12

    .line 5
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_48

    .line 6
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 7
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/s4;->j(Lcom/google/android/gms/internal/measurement/k7;[BIIILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 8
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    :pswitch_0
    if-ne v6, v14, :cond_4

    .line 9
    check-cast v12, Lcom/google/android/gms/internal/measurement/o6;

    .line 10
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    add-int/2addr v2, v1

    :goto_1
    if-ge v1, v2, :cond_2

    .line 11
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/c5;->b(J)J

    move-result-wide v4

    .line 12
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_28

    .line 13
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_48

    .line 14
    check-cast v12, Lcom/google/android/gms/internal/measurement/o6;

    .line 15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/c5;->b(J)J

    move-result-wide v8

    .line 16
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    :goto_2
    if-ge v1, v5, :cond_6

    .line 17
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v6, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/c5;->b(J)J

    move-result-wide v8

    .line 19
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    goto :goto_2

    :cond_6
    :goto_3
    return v1

    :pswitch_1
    if-ne v6, v14, :cond_9

    .line 20
    check-cast v12, Lcom/google/android/gms/internal/measurement/y5;

    .line 21
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_7

    .line 22
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/c5;->a(I)I

    move-result v4

    .line 23
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/y5;->d0(I)V

    goto :goto_4

    :cond_7
    if-ne v1, v2, :cond_8

    goto/16 :goto_28

    .line 24
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_9
    if-nez v6, :cond_48

    .line 25
    check-cast v12, Lcom/google/android/gms/internal/measurement/y5;

    .line 26
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/c5;->a(I)I

    move-result v4

    .line 27
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/y5;->d0(I)V

    :goto_5
    if-ge v1, v5, :cond_b

    .line 28
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v6, :cond_a

    goto :goto_6

    .line 29
    :cond_a
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/c5;->a(I)I

    move-result v4

    .line 30
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/y5;->d0(I)V

    goto :goto_5

    :cond_b
    :goto_6
    return v1

    :pswitch_2
    if-ne v6, v14, :cond_c

    .line 31
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/measurement/s4;->l([BILcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    goto :goto_7

    :cond_c
    if-nez v6, :cond_48

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 32
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/s4;->k(I[BIILcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    .line 33
    :goto_7
    check-cast v1, Lcom/google/android/gms/internal/measurement/x5;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/x5;->zzc:Lcom/google/android/gms/internal/measurement/y7;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/y7;->a()Lcom/google/android/gms/internal/measurement/y7;

    move-result-object v4

    if-ne v3, v4, :cond_d

    const/4 v3, 0x0

    .line 34
    :cond_d
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/b7;->P(I)Lcom/google/android/gms/internal/measurement/b6;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    move/from16 v6, p6

    .line 35
    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/m7;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/b6;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/x7;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    goto/16 :goto_11

    :cond_e
    check-cast v3, Lcom/google/android/gms/internal/measurement/y7;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/x5;->zzc:Lcom/google/android/gms/internal/measurement/y7;

    return v2

    :pswitch_3
    if-ne v6, v14, :cond_48

    .line 36
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-ltz v4, :cond_16

    .line 37
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_15

    if-nez v4, :cond_f

    .line 38
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgr;->d:Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 39
    :cond_f
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzgr;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzgr;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_14

    .line 40
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v6, :cond_10

    goto :goto_a

    .line 41
    :cond_10
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-ltz v4, :cond_13

    .line 42
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_12

    if-nez v4, :cond_11

    .line 43
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgr;->d:Lcom/google/android/gms/internal/measurement/zzgr;

    .line 44
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 45
    :cond_11
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzgr;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzgr;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 46
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 47
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_14
    :goto_a
    return v1

    .line 48
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 49
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :pswitch_4
    if-eq v6, v14, :cond_17

    goto/16 :goto_27

    .line 50
    :cond_17
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 51
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/measurement/s4;->m(Lcom/google/android/gms/internal/measurement/k7;I[BIILcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v14, :cond_48

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v10

    if-nez v6, :cond_1c

    .line 52
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-ltz v6, :cond_1b

    if-nez v6, :cond_18

    .line 53
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 54
    :cond_18
    new-instance v8, Ljava/lang/String;

    .line 55
    sget-object v9, Lcom/google/android/gms/internal/measurement/f6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 56
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr v4, v6

    :goto_c
    if-ge v4, v5, :cond_48

    .line 57
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-ne v2, v8, :cond_48

    .line 58
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-ltz v6, :cond_1a

    if-nez v6, :cond_19

    .line 59
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    new-instance v8, Ljava/lang/String;

    .line 60
    sget-object v9, Lcom/google/android/gms/internal/measurement/f6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 61
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 62
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 63
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 64
    :cond_1c
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-ltz v6, :cond_22

    if-nez v6, :cond_1d

    .line 65
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    add-int v8, v4, v6

    .line 66
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/measurement/m8;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 67
    new-instance v9, Ljava/lang/String;

    .line 68
    sget-object v10, Lcom/google/android/gms/internal/measurement/f6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 69
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    move v4, v8

    :goto_e
    if-ge v4, v5, :cond_48

    .line 70
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-ne v2, v8, :cond_48

    .line 71
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-ltz v6, :cond_20

    if-nez v6, :cond_1e

    .line 72
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    add-int v8, v4, v6

    .line 73
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/measurement/m8;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 74
    new-instance v9, Ljava/lang/String;

    .line 75
    sget-object v10, Lcom/google/android/gms/internal/measurement/f6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 76
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 77
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 78
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 79
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 80
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :pswitch_6
    const/4 v1, 0x0

    if-ne v6, v14, :cond_26

    .line 81
    check-cast v12, Lcom/google/android/gms/internal/measurement/t4;

    .line 82
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    add-int/2addr v4, v2

    :goto_f
    if-ge v2, v4, :cond_24

    .line 83
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    cmp-long v8, v5, v10

    if-eqz v8, :cond_23

    const/4 v5, 0x1

    goto :goto_10

    :cond_23
    const/4 v5, 0x0

    .line 84
    :goto_10
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/t4;->d(Z)V

    goto :goto_f

    :cond_24
    if-ne v2, v4, :cond_25

    :goto_11
    move v1, v2

    goto/16 :goto_28

    .line 85
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_26
    if-nez v6, :cond_48

    .line 86
    check-cast v12, Lcom/google/android/gms/internal/measurement/t4;

    .line 87
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_27

    const/4 v6, 0x1

    goto :goto_12

    :cond_27
    const/4 v6, 0x0

    .line 88
    :goto_12
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/t4;->d(Z)V

    :goto_13
    if-ge v4, v5, :cond_2a

    .line 89
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v8, :cond_28

    goto :goto_15

    .line 90
    :cond_28
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    goto :goto_14

    :cond_29
    const/4 v6, 0x0

    .line 91
    :goto_14
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/t4;->d(Z)V

    goto :goto_13

    :cond_2a
    :goto_15
    return v4

    :pswitch_7
    if-ne v6, v14, :cond_2d

    .line 92
    check-cast v12, Lcom/google/android/gms/internal/measurement/y5;

    .line 93
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    add-int/2addr v2, v1

    :goto_16
    if-ge v1, v2, :cond_2b

    .line 94
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/y5;->d0(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_16

    :cond_2b
    if-ne v1, v2, :cond_2c

    goto/16 :goto_28

    .line 95
    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_2d
    if-ne v6, v9, :cond_48

    .line 96
    check-cast v12, Lcom/google/android/gms/internal/measurement/y5;

    .line 97
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/y5;->d0(I)V

    :goto_17
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2f

    .line 98
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v6, :cond_2e

    goto :goto_18

    .line 99
    :cond_2e
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/y5;->d0(I)V

    goto :goto_17

    :cond_2f
    :goto_18
    return v1

    :pswitch_8
    if-ne v6, v14, :cond_32

    .line 100
    check-cast v12, Lcom/google/android/gms/internal/measurement/o6;

    .line 101
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_30

    .line 102
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_19

    :cond_30
    if-ne v1, v2, :cond_31

    goto/16 :goto_28

    .line 103
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_32
    if-ne v6, v13, :cond_48

    .line 104
    check-cast v12, Lcom/google/android/gms/internal/measurement/o6;

    .line 105
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    :goto_1a
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_34

    .line 106
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v6, :cond_33

    goto :goto_1b

    .line 107
    :cond_33
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    goto :goto_1a

    :cond_34
    :goto_1b
    return v1

    :pswitch_9
    if-ne v6, v14, :cond_35

    .line 108
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/measurement/s4;->l([BILcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    goto/16 :goto_28

    :cond_35
    if-eqz v6, :cond_36

    goto/16 :goto_27

    :cond_36
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 109
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/measurement/s4;->k(I[BIILcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v14, :cond_39

    .line 110
    check-cast v12, Lcom/google/android/gms/internal/measurement/o6;

    .line 111
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    add-int/2addr v2, v1

    :goto_1c
    if-ge v1, v2, :cond_37

    .line 112
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    .line 113
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    goto :goto_1c

    :cond_37
    if-ne v1, v2, :cond_38

    goto/16 :goto_28

    .line 114
    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_39
    if-nez v6, :cond_48

    .line 115
    check-cast v12, Lcom/google/android/gms/internal/measurement/o6;

    .line 116
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    .line 117
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    :goto_1d
    if-ge v1, v5, :cond_3b

    .line 118
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v6, :cond_3a

    goto :goto_1e

    .line 119
    :cond_3a
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/r4;->b:J

    .line 120
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/o6;->e(J)V

    goto :goto_1d

    :cond_3b
    :goto_1e
    return v1

    :pswitch_b
    if-ne v6, v14, :cond_3e

    .line 121
    check-cast v12, Lcom/google/android/gms/internal/measurement/r5;

    .line 122
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_3c

    .line 123
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 124
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/r5;->d(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1f

    :cond_3c
    if-ne v1, v2, :cond_3d

    goto/16 :goto_28

    .line 125
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_3e
    if-ne v6, v9, :cond_48

    .line 126
    check-cast v12, Lcom/google/android/gms/internal/measurement/r5;

    .line 127
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 128
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/r5;->d(F)V

    :goto_20
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_40

    .line 129
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v6, :cond_3f

    goto :goto_21

    .line 130
    :cond_3f
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 131
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/r5;->d(F)V

    goto :goto_20

    :cond_40
    :goto_21
    return v1

    :pswitch_c
    if-ne v6, v14, :cond_43

    .line 132
    check-cast v12, Lcom/google/android/gms/internal/measurement/i5;

    .line 133
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    add-int/2addr v2, v1

    :goto_22
    if-ge v1, v2, :cond_41

    .line 134
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 135
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/i5;->d(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_22

    :cond_41
    if-ne v1, v2, :cond_42

    goto :goto_28

    .line 136
    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_43
    if-ne v6, v13, :cond_48

    .line 137
    check-cast v12, Lcom/google/android/gms/internal/measurement/i5;

    .line 138
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 139
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/i5;->d(D)V

    :goto_23
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_45

    .line 140
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v6, :cond_44

    goto :goto_24

    .line 141
    :cond_44
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 142
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/i5;->d(D)V

    goto :goto_23

    :cond_45
    :goto_24
    return v1

    :goto_25
    if-ge v4, v5, :cond_47

    .line 143
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-eq v2, v9, :cond_46

    goto :goto_26

    :cond_46
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 144
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/s4;->j(Lcom/google/android/gms/internal/measurement/k7;[BIIILcom/google/android/gms/internal/measurement/r4;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 145
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_47
    :goto_26
    return v4

    :cond_48
    :goto_27
    move v1, v4

    :goto_28
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final L(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/r4;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/measurement/r4;",
            ")I"
        }
    .end annotation

    sget-object p2, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    .line 1
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/measurement/b7;->O(I)Ljava/lang/Object;

    move-result-object p3

    .line 2
    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    .line 3
    move-object p5, p4

    check-cast p5, Lcom/google/android/gms/internal/measurement/zziq;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zziq;->zze()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziq;->zza()Lcom/google/android/gms/internal/measurement/zziq;

    move-result-object p5

    .line 5
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zziq;->zzc()Lcom/google/android/gms/internal/measurement/zziq;

    move-result-object p5

    .line 6
    invoke-static {p5, p4}, Lcom/google/android/gms/internal/measurement/t6;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    :goto_0
    check-cast p3, Lcom/google/android/gms/internal/measurement/s6;

    const/4 p1, 0x0

    throw p1
.end method

.method private final M(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/r4;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/measurement/r4;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v13, v6, 0x2

    .line 1
    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_13

    .line 2
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/s4;->j(Lcom/google/android/gms/internal/measurement/k7;[BIIILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    .line 4
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 5
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 6
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 8
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/f6;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-eqz v5, :cond_2

    goto/16 :goto_9

    .line 11
    :cond_2
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/r4;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/c5;->b(J)J

    move-result-wide v3

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    if-eqz v5, :cond_3

    goto/16 :goto_9

    .line 14
    :cond_3
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/measurement/r4;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c5;->a(I)I

    move-result v3

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 16
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    if-nez v5, :cond_13

    .line 17
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 18
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/b7;->P(I)Lcom/google/android/gms/internal/measurement/b6;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 19
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/b6;->B(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/b7;->B(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/y7;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/y7;->h(ILjava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_5
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 22
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v2, v3

    goto/16 :goto_a

    :pswitch_4
    if-eq v5, v15, :cond_6

    goto/16 :goto_9

    .line 23
    :cond_6
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->h([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 24
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 25
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    if-ne v5, v15, :cond_13

    .line 26
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v2

    move/from16 v5, p4

    .line 27
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/s4;->i(Lcom/google/android/gms/internal/measurement/k7;[BIILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    .line 28
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 29
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_8

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 30
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 31
    :cond_8
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 32
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/f6;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_13

    .line 35
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/measurement/r4;->a:I

    if-nez v4, :cond_9

    const-string v3, ""

    .line 36
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_9
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_b

    add-int v5, v2, v4

    .line 37
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/measurement/m8;->b([BII)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    .line 38
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 39
    :cond_b
    :goto_6
    new-instance v5, Ljava/lang/String;

    .line 40
    sget-object v6, Lcom/google/android/gms/internal/measurement/f6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 41
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 42
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_13

    .line 43
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/r4;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    .line 44
    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    if-eq v5, v7, :cond_d

    goto/16 :goto_9

    .line 46
    :cond_d
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_9
    const/4 v2, 0x1

    if-eq v5, v2, :cond_e

    goto :goto_9

    .line 48
    :cond_e
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_a
    if-eqz v5, :cond_f

    goto :goto_9

    .line 50
    :cond_f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    if-eqz v5, :cond_10

    goto :goto_9

    .line 53
    :cond_10
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/r4;->b:J

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 55
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    if-eq v5, v7, :cond_11

    goto :goto_9

    .line 56
    :cond_11
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_d
    const/4 v2, 0x1

    if-eq v5, v2, :cond_12

    goto :goto_9

    .line 59
    :cond_12
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :cond_13
    :goto_9
    move v2, v4

    :goto_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final N(I)Lcom/google/android/gms/internal/measurement/k7;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->d:[Ljava/lang/Object;

    .line 1
    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/k7;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h7;->a()Lcom/google/android/gms/internal/measurement/h7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b7;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b7;->d:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final O(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 1
    aget-object p1, v0, p1

    return-object p1
.end method

.method private final P(I)Lcom/google/android/gms/internal/measurement/b6;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 1
    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/b6;

    return-object p1
.end method

.method private final Q(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/r4;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/r4;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_16

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/measurement/s4;->b(I[BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/measurement/r4;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    .line 3
    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/measurement/b7;->w(II)I

    move-result v0

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/measurement/b7;->v(I)I

    move-result v0

    :goto_2
    move v2, v0

    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v20, v5

    move-object/from16 v28, v9

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_12

    .line 5
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v1, v2, 0x1

    .line 6
    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v0

    and-int v10, v1, v8

    move-object/from16 v19, v9

    int-to-long v8, v10

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_d

    iget-object v10, v15, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v21, v2, 0x2

    .line 7
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-eq v10, v7, :cond_5

    move/from16 v23, v1

    move/from16 v20, v2

    if-eq v7, v13, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v19

    .line 8
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, v19

    :goto_3
    if-eq v10, v13, :cond_4

    int-to-long v1, v10

    .line 9
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_4
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_4

    :cond_5
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v10, v19

    :goto_4
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    goto/16 :goto_b

    :pswitch_0
    if-nez v3, :cond_6

    .line 10
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v17

    iget-wide v0, v11, Lcom/google/android/gms/internal/measurement/r4;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/c5;->b(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v20

    move-wide v2, v8

    move/from16 v20, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_9

    :cond_6
    move/from16 v13, v20

    move/from16 v20, p3

    goto :goto_5

    :pswitch_1
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_9

    .line 12
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/r4;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/c5;->a(I)I

    move-result v1

    .line 13
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_2
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_9

    .line 14
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 15
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_3
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_9

    .line 16
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->h([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 17
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_4
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_8

    .line 18
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    move/from16 v2, p4

    const v19, 0xfffff

    .line 19
    invoke-static {v0, v12, v4, v2, v11}, Lcom/google/android/gms/internal/measurement/s4;->i(Lcom/google/android/gms/internal/measurement/k7;[BIILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    .line 20
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 21
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_7
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 22
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/f6;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_8
    move/from16 v2, p4

    :cond_9
    :goto_5
    const v19, 0xfffff

    goto/16 :goto_b

    :pswitch_5
    move/from16 v2, p4

    move/from16 v13, v20

    const/4 v0, 0x2

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v0, :cond_c

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_a

    .line 24
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->f([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    goto :goto_6

    .line 25
    :cond_a
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->g([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    .line 26
    :goto_6
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 27
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_6
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 28
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/r4;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    .line 29
    :goto_7
    invoke-static {v14, v8, v9, v5}, Lcom/google/android/gms/internal/measurement/i8;->n(Ljava/lang/Object;JZ)V

    goto :goto_8

    :pswitch_7
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_c

    .line 30
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_8
    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :pswitch_8
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_c

    .line 31
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_a

    :pswitch_9
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 32
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 33
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 34
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/measurement/r4;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 35
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_9
    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    goto/16 :goto_e

    :pswitch_b
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_c

    .line 36
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 37
    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/measurement/i8;->p(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_a

    :pswitch_c
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_c

    .line 38
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 39
    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->r(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_a
    or-int v6, v6, v21

    goto :goto_d

    :cond_c
    :goto_b
    move v2, v4

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_12

    :cond_d
    move/from16 v20, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v19

    const v19, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_11

    const/4 v1, 0x2

    if-ne v3, v1, :cond_10

    .line 40
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/e6;

    .line 41
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/e6;->zza()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xa

    goto :goto_c

    :cond_e
    add-int/2addr v1, v1

    .line 43
    :goto_c
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/e6;->a(I)Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v0

    .line 44
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v5, v0

    .line 45
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    .line 46
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/s4;->m(Lcom/google/android/gms/internal/measurement/k7;I[BIILcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    move v6, v8

    :goto_d
    move-object v9, v10

    move v2, v13

    :goto_e
    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_10
    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_10

    :cond_11
    const/16 v1, 0x31

    if-gt v0, v1, :cond_13

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v19, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    .line 47
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/b7;->K(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    if-eq v0, v15, :cond_12

    :goto_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_13

    :cond_12
    move v2, v0

    goto :goto_11

    :cond_13
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v19, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_15

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    .line 48
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/b7;->L(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    if-eq v0, v15, :cond_12

    goto :goto_f

    :cond_14
    :goto_10
    move v2, v15

    :goto_11
    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_12

    :cond_15
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v20

    move-wide/from16 v10, v26

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 49
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/b7;->M(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    if-eq v0, v15, :cond_12

    goto :goto_f

    .line 50
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/b7;->B(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/y7;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/s4;->n(I[BIILcom/google/android/gms/internal/measurement/y7;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    :goto_13
    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_16
    move/from16 v24, v6

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_17

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    .line 52
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_17
    move/from16 v1, p4

    if-ne v0, v1, :cond_18

    return v0

    .line 53
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zze()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static R(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/k7;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/k7;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final h(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 p1, p1, 0x1

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method private final i(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 p1, p1, 0x2

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method private static j(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static k(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static l(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static m(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static n(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static o(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final p(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final q(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final r(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/b7;->i(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 6
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    .line 7
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 8
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    .line 9
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 10
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 11
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 12
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgr;->d:Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzgr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 13
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 14
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 15
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    .line 17
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/zzgr;

    if-eqz p2, :cond_c

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgr;->d:Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzgr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 19
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 21
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->m(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 22
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 23
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    .line 24
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 25
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    .line 26
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    .line 27
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->o(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 28
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->q(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v5

    :cond_13
    return v4

    .line 29
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final s(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/b7;->i(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/i8;->j(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final t(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/b7;->i(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final u(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/b7;->i(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/i8;->j(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final v(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b7;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b7;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->x(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final w(II)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b7;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b7;->f:I

    if-gt p1, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/b7;->x(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final x(II)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 1
    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final y(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/g5;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    array-length v3, v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    const v5, 0xfffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0xfffff

    :goto_0
    if-ge v7, v3, :cond_4

    .line 1
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 2
    aget v11, v11, v7

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_1

    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v15, v7, 0x2

    .line 3
    aget v13, v13, v15

    and-int v15, v13, v5

    if-eq v15, v9, :cond_0

    int-to-long v8, v15

    .line 4
    invoke-virtual {v4, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v9, v15

    :cond_0
    ushr-int/lit8 v13, v13, 0x14

    shl-int v13, v14, v13

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    and-int/2addr v10, v5

    int-to-long v5, v10

    packed-switch v12, :pswitch_data_0

    :cond_2
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 5
    :pswitch_0
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v6

    .line 7
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)V

    goto :goto_2

    .line 8
    :pswitch_1
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 9
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->B(IJ)V

    goto :goto_2

    .line 10
    :pswitch_2
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 11
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->A(II)V

    goto :goto_2

    .line 12
    :pswitch_3
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 13
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->o(IJ)V

    goto :goto_2

    .line 14
    :pswitch_4
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 15
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->m(II)V

    goto :goto_2

    .line 16
    :pswitch_5
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 17
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->r(II)V

    goto :goto_2

    .line 18
    :pswitch_6
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 19
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->z(II)V

    goto :goto_2

    .line 20
    :pswitch_7
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 21
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->y(ILcom/google/android/gms/internal/measurement/zzgr;)V

    goto :goto_2

    .line 22
    :pswitch_8
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 23
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 24
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v6

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->C(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_2

    .line 25
    :pswitch_9
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 26
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/measurement/b7;->A(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V

    goto/16 :goto_2

    .line 27
    :pswitch_a
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 28
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->o(Ljava/lang/Object;J)Z

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->w(IZ)V

    goto/16 :goto_2

    .line 29
    :pswitch_b
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->v(II)V

    goto/16 :goto_2

    .line 31
    :pswitch_c
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->u(IJ)V

    goto/16 :goto_2

    .line 33
    :pswitch_d
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 34
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->t(II)V

    goto/16 :goto_2

    .line 35
    :pswitch_e
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 36
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->s(IJ)V

    goto/16 :goto_2

    .line 37
    :pswitch_f
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 38
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->n(IJ)V

    goto/16 :goto_2

    .line 39
    :pswitch_10
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 40
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->l(Ljava/lang/Object;J)F

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->p(IF)V

    goto/16 :goto_2

    .line 41
    :pswitch_11
    invoke-direct {v0, v1, v11, v7}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 42
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->k(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->q(ID)V

    goto/16 :goto_2

    .line 43
    :pswitch_12
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2, v11, v5, v7}, Lcom/google/android/gms/internal/measurement/b7;->z(Lcom/google/android/gms/internal/measurement/g5;ILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 44
    :pswitch_13
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 45
    aget v10, v10, v7

    .line 46
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 47
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v6

    .line 48
    invoke-static {v10, v5, v2, v6}, Lcom/google/android/gms/internal/measurement/m7;->B(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_2

    .line 49
    :pswitch_14
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 50
    aget v10, v10, v7

    .line 51
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 52
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 53
    :pswitch_15
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 54
    aget v10, v10, v7

    .line 55
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 56
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 57
    :pswitch_16
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 58
    aget v10, v10, v7

    .line 59
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 60
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 61
    :pswitch_17
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 62
    aget v10, v10, v7

    .line 63
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 64
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 65
    :pswitch_18
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 66
    aget v10, v10, v7

    .line 67
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 68
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->v(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 69
    :pswitch_19
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 70
    aget v10, v10, v7

    .line 71
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 72
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 73
    :pswitch_1a
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 74
    aget v10, v10, v7

    .line 75
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 76
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 77
    :pswitch_1b
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 78
    aget v10, v10, v7

    .line 79
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 80
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 81
    :pswitch_1c
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 82
    aget v10, v10, v7

    .line 83
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 84
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 85
    :pswitch_1d
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 86
    aget v10, v10, v7

    .line 87
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 88
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 89
    :pswitch_1e
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 90
    aget v10, v10, v7

    .line 91
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 92
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 93
    :pswitch_1f
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 94
    aget v10, v10, v7

    .line 95
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 96
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 97
    :pswitch_20
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 98
    aget v10, v10, v7

    .line 99
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 100
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 101
    :pswitch_21
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 102
    aget v10, v10, v7

    .line 103
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 104
    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/m7;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 105
    :pswitch_22
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 106
    aget v10, v10, v7

    .line 107
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v11, 0x0

    .line 108
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/m7;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    :pswitch_23
    const/4 v11, 0x0

    .line 109
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 110
    aget v10, v10, v7

    .line 111
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 112
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/m7;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    :pswitch_24
    const/4 v11, 0x0

    .line 113
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 114
    aget v10, v10, v7

    .line 115
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/m7;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    :pswitch_25
    const/4 v11, 0x0

    .line 117
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 118
    aget v10, v10, v7

    .line 119
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 120
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/m7;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    :pswitch_26
    const/4 v11, 0x0

    .line 121
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 122
    aget v10, v10, v7

    .line 123
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 124
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/m7;->v(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    :pswitch_27
    const/4 v11, 0x0

    .line 125
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 126
    aget v10, v10, v7

    .line 127
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 128
    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/m7;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_2

    .line 129
    :pswitch_28
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 130
    aget v10, v10, v7

    .line 131
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 132
    invoke-static {v10, v5, v2}, Lcom/google/android/gms/internal/measurement/m7;->y(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;)V

    goto/16 :goto_2

    .line 133
    :pswitch_29
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 134
    aget v10, v10, v7

    .line 135
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 136
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v6

    .line 137
    invoke-static {v10, v5, v2, v6}, Lcom/google/android/gms/internal/measurement/m7;->z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_2

    .line 138
    :pswitch_2a
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 139
    aget v10, v10, v7

    .line 140
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 141
    invoke-static {v10, v5, v2}, Lcom/google/android/gms/internal/measurement/m7;->x(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;)V

    goto/16 :goto_2

    .line 142
    :pswitch_2b
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 143
    aget v10, v10, v7

    .line 144
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    .line 145
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/m7;->w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_3

    :pswitch_2c
    const/4 v12, 0x0

    .line 146
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 147
    aget v10, v10, v7

    .line 148
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 149
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/m7;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_3

    :pswitch_2d
    const/4 v12, 0x0

    .line 150
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 151
    aget v10, v10, v7

    .line 152
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 153
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/m7;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_3

    :pswitch_2e
    const/4 v12, 0x0

    .line 154
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 155
    aget v10, v10, v7

    .line 156
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 157
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/m7;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_3

    :pswitch_2f
    const/4 v12, 0x0

    .line 158
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 159
    aget v10, v10, v7

    .line 160
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 161
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/m7;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_3

    :pswitch_30
    const/4 v12, 0x0

    .line 162
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 163
    aget v10, v10, v7

    .line 164
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 165
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/m7;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_3

    :pswitch_31
    const/4 v12, 0x0

    .line 166
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 167
    aget v10, v10, v7

    .line 168
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 169
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/m7;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_3

    :pswitch_32
    const/4 v12, 0x0

    .line 170
    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 171
    aget v10, v10, v7

    .line 172
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 173
    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/m7;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_3

    :pswitch_33
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 174
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v6

    .line 175
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_3

    :pswitch_34
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 176
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->B(IJ)V

    goto/16 :goto_3

    :pswitch_35
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 177
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->A(II)V

    goto/16 :goto_3

    :pswitch_36
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 178
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->o(IJ)V

    goto/16 :goto_3

    :pswitch_37
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 179
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->m(II)V

    goto/16 :goto_3

    :pswitch_38
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 180
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->r(II)V

    goto/16 :goto_3

    :pswitch_39
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 181
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->z(II)V

    goto/16 :goto_3

    :pswitch_3a
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 182
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->y(ILcom/google/android/gms/internal/measurement/zzgr;)V

    goto/16 :goto_3

    :pswitch_3b
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 183
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 184
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v6

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->C(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_3

    :pswitch_3c
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 185
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/measurement/b7;->A(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V

    goto/16 :goto_3

    :pswitch_3d
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 186
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->m(Ljava/lang/Object;J)Z

    move-result v5

    .line 187
    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->w(IZ)V

    goto :goto_3

    :pswitch_3e
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 188
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->v(II)V

    goto :goto_3

    :pswitch_3f
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 189
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->u(IJ)V

    goto :goto_3

    :pswitch_40
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 190
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->t(II)V

    goto :goto_3

    :pswitch_41
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 191
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->s(IJ)V

    goto :goto_3

    :pswitch_42
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 192
    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->n(IJ)V

    goto :goto_3

    :pswitch_43
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 193
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->o(Ljava/lang/Object;J)F

    move-result v5

    .line 194
    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/g5;->p(IF)V

    goto :goto_3

    :pswitch_44
    const/4 v12, 0x0

    and-int v10, v8, v13

    if-eqz v10, :cond_3

    .line 195
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->q(Ljava/lang/Object;J)D

    move-result-wide v5

    .line 196
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->q(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x3

    const v5, 0xfffff

    goto/16 :goto_0

    .line 197
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 198
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/x7;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V

    return-void

    .line 199
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 200
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 v1, 0x0

    .line 201
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final z(Lcom/google/android/gms/internal/measurement/g5;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/g5;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/b7;->O(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/s6;

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method final C(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/r4;)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/measurement/r4;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_1b

    add-int/lit8 v1, v0, 0x1

    .line 1
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/measurement/s4;->b(I[BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/r4;->a:I

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v2, :cond_1

    div-int/2addr v3, v8

    .line 3
    invoke-direct {v15, v0, v3}, Lcom/google/android/gms/internal/measurement/b7;->w(II)I

    move-result v2

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/measurement/b7;->v(I)I

    move-result v2

    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move/from16 p3, v0

    move v2, v1

    move v8, v4

    move/from16 v20, v5

    move-object/from16 v26, v10

    move v7, v11

    const/16 v18, 0x0

    const/16 v25, -0x1

    goto/16 :goto_12

    .line 5
    :cond_2
    iget-object v3, v15, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v20, v2, 0x1

    .line 6
    aget v3, v3, v20

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v8

    move/from16 v20, v0

    const v18, 0xfffff

    and-int v0, v3, v18

    move/from16 v22, v3

    move/from16 v21, v4

    int-to-long v3, v0

    const/16 v0, 0x11

    if-gt v8, v0, :cond_e

    iget-object v0, v15, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v23, v2, 0x2

    .line 7
    aget v0, v0, v23

    ushr-int/lit8 v23, v0, 0x14

    const/4 v11, 0x1

    shl-int v23, v11, v23

    const v11, 0xfffff

    and-int/2addr v0, v11

    if-eq v0, v6, :cond_4

    if-eq v6, v11, :cond_3

    int-to-long v11, v6

    .line 8
    invoke-virtual {v10, v14, v11, v12, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v5, v0

    .line 9
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v11, v0

    goto :goto_3

    :cond_4
    move v11, v6

    :goto_3
    move v6, v5

    const/4 v0, 0x5

    packed-switch v8, :pswitch_data_0

    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x3

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_d

    .line 10
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    shl-int/lit8 v1, v20, 0x3

    or-int/lit8 v5, v1, 0x4

    move-object/from16 v1, p2

    move-wide v12, v3

    move/from16 v3, p4

    move v4, v5

    move-object/from16 v5, p6

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/s4;->j(Lcom/google/android/gms/internal/measurement/k7;[BIIILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_c

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 12
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_0
    if-nez v7, :cond_5

    move-object/from16 v12, p2

    .line 13
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v7

    iget-wide v0, v9, Lcom/google/android/gms/internal/measurement/r4;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/c5;->b(J)J

    move-result-wide v24

    move/from16 v8, v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v5, v2

    const/16 v19, -0x1

    move-wide v2, v3

    move/from16 p3, v11

    move/from16 v11, v21

    move v8, v5

    move-wide/from16 v4, v24

    .line 14
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_8

    :cond_5
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_b

    .line 15
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/r4;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/c5;->a(I)I

    move-result v1

    .line 16
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_2
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_b

    .line 17
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 18
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/b7;->P(I)Lcom/google/android/gms/internal/measurement/b6;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 19
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/b6;->B(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 20
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/b7;->B(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/y7;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Lcom/google/android/gms/internal/measurement/y7;->h(ILjava/lang/Object;)V

    move v5, v6

    move v3, v8

    move v1, v11

    move/from16 v2, v20

    move/from16 v6, p3

    goto/16 :goto_e

    .line 21
    :cond_7
    :goto_4
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    .line 22
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/s4;->h([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 23
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_4
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    .line 24
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    .line 25
    invoke-static {v0, v12, v1, v13, v9}, Lcom/google/android/gms/internal/measurement/s4;->i(Lcom/google/android/gms/internal/measurement/k7;[BIILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_8

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 26
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 27
    :cond_8
    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 28
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/f6;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    const/high16 v0, 0x20000000

    and-int v0, v22, v0

    if-nez v0, :cond_9

    .line 30
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/s4;->f([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    goto :goto_5

    .line 31
    :cond_9
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/s4;->g([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    .line 32
    :goto_5
    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 33
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_6
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_b

    .line 34
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/measurement/r4;->b:J

    const-wide/16 v21, 0x0

    cmp-long v5, v1, v21

    if-eqz v5, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 35
    :goto_6
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/i8;->n(Ljava/lang/Object;JZ)V

    goto/16 :goto_9

    :pswitch_7
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    .line 36
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v1, 0x4

    goto/16 :goto_9

    :pswitch_8
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x1

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    .line 37
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v21

    move-object v0, v10

    move v7, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_9

    :cond_b
    :goto_7
    move v2, v1

    goto/16 :goto_c

    :pswitch_9
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-nez v7, :cond_d

    .line 38
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/measurement/s4;->a([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/r4;->a:I

    .line 39
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_a
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-nez v7, :cond_d

    .line 40
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/measurement/s4;->c([BILcom/google/android/gms/internal/measurement/r4;)I

    move-result v7

    iget-wide v1, v9, Lcom/google/android/gms/internal/measurement/r4;->b:J

    move-object v0, v10

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v21

    .line 41
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_8
    or-int v5, v6, v23

    move/from16 v6, p3

    move v0, v7

    goto :goto_a

    :pswitch_b
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_d

    .line 42
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/measurement/s4;->d([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 43
    invoke-static {v14, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/i8;->p(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_9

    :pswitch_c
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x1

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_d

    .line 44
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/measurement/s4;->e([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 45
    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->r(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v2, 0x8

    :goto_9
    or-int v5, v6, v23

    move/from16 v6, p3

    :goto_a
    move v3, v8

    move v1, v11

    move/from16 v2, v20

    goto/16 :goto_e

    .line 46
    :cond_c
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/r4;->c:Ljava/lang/Object;

    .line 47
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/f6;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_b
    or-int v5, v6, v23

    move-object/from16 v12, p2

    move/from16 v6, p3

    move/from16 v13, p4

    goto :goto_a

    :cond_d
    :goto_c
    move/from16 v7, p5

    move/from16 v18, v8

    move-object/from16 v26, v10

    move v8, v11

    const/16 v25, -0x1

    move/from16 v27, v6

    move/from16 v6, p3

    move/from16 p3, v20

    move/from16 v20, v27

    goto/16 :goto_12

    :cond_e
    move-wide v12, v3

    move v3, v8

    move/from16 v4, v20

    move/from16 v11, v21

    const/16 v19, -0x1

    move v8, v2

    move v2, v1

    const/16 v0, 0x1b

    if-ne v3, v0, :cond_12

    const/4 v0, 0x2

    if-ne v7, v0, :cond_11

    .line 49
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/e6;

    .line 50
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/e6;->zza()Z

    move-result v1

    if-nez v1, :cond_10

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xa

    goto :goto_d

    :cond_f
    add-int/2addr v1, v1

    .line 52
    :goto_d
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/e6;->a(I)Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v0

    .line 53
    invoke-virtual {v10, v14, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_10
    move-object v7, v0

    .line 54
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    move v1, v11

    move v3, v2

    move-object/from16 v2, p2

    move v12, v4

    move/from16 v4, p4

    move/from16 v20, v5

    move-object v5, v7

    move/from16 v21, v6

    move-object/from16 v6, p6

    .line 55
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/s4;->m(Lcom/google/android/gms/internal/measurement/k7;I[BIILcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    move/from16 v13, p4

    move v3, v8

    move v2, v12

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v12, p2

    :goto_e
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_11
    move/from16 v20, v5

    move/from16 v21, v6

    move v15, v2

    move/from16 p3, v4

    move/from16 v18, v8

    move-object/from16 v26, v10

    move/from16 v22, v11

    const/16 v25, -0x1

    goto/16 :goto_10

    :cond_12
    move/from16 v20, v5

    move/from16 v21, v6

    move v5, v2

    move v6, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_14

    move/from16 v4, v22

    int-to-long v1, v4

    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v24, v3

    move v3, v5

    move/from16 v4, p4

    move v15, v5

    move v5, v11

    move/from16 p3, v6

    move/from16 v18, v8

    move/from16 v19, v24

    const/16 v25, -0x1

    move-object/from16 v26, v10

    move-wide/from16 v9, v22

    move/from16 v22, v11

    move/from16 v11, v19

    move-object/from16 v14, p6

    .line 56
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/b7;->K(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    if-eq v0, v15, :cond_13

    :goto_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v18

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v1, v22

    move-object/from16 v10, v26

    goto/16 :goto_0

    :cond_13
    move/from16 v7, p5

    move v2, v0

    goto :goto_11

    :cond_14
    move/from16 v19, v3

    move v15, v5

    move/from16 p3, v6

    move/from16 v18, v8

    move-object/from16 v26, v10

    move/from16 v4, v22

    const/16 v25, -0x1

    move/from16 v22, v11

    const/16 v0, 0x32

    move/from16 v9, v19

    if-ne v9, v0, :cond_16

    const/4 v0, 0x2

    if-ne v7, v0, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide v6, v12

    move-object/from16 v8, p6

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/b7;->L(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    if-eq v0, v15, :cond_13

    goto :goto_f

    :cond_15
    :goto_10
    move/from16 v7, p5

    move v2, v15

    :goto_11
    move/from16 v6, v21

    move/from16 v8, v22

    goto :goto_12

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v4

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v6, p3

    move-wide v10, v12

    move/from16 v12, v18

    move-object/from16 v13, p6

    .line 58
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/b7;->M(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    if-eq v0, v15, :cond_13

    goto :goto_f

    :goto_12
    if-ne v8, v7, :cond_17

    if-eqz v7, :cond_17

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move v0, v2

    move v1, v8

    move/from16 v5, v20

    goto/16 :goto_15

    :cond_17
    move-object/from16 v9, p0

    .line 59
    iget-boolean v0, v9, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-eqz v0, :cond_1a

    move-object/from16 v10, p6

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/r4;->d:Lcom/google/android/gms/internal/measurement/l5;

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l5;->a()Lcom/google/android/gms/internal/measurement/l5;

    move-result-object v1

    if-eq v0, v1, :cond_19

    iget-object v0, v9, Lcom/google/android/gms/internal/measurement/b7;->g:Lcom/google/android/gms/internal/measurement/y6;

    iget-object v1, v10, Lcom/google/android/gms/internal/measurement/r4;->d:Lcom/google/android/gms/internal/measurement/l5;

    move/from16 v11, p3

    .line 61
    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/measurement/l5;->c(Lcom/google/android/gms/internal/measurement/y6;I)Lcom/google/android/gms/internal/measurement/w5;

    move-result-object v0

    if-nez v0, :cond_18

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/b7;->B(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/y7;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/s4;->n(I[BIILcom/google/android/gms/internal/measurement/y7;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    move-object/from16 v12, p1

    goto :goto_14

    :cond_18
    move-object/from16 v12, p1

    .line 64
    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/measurement/v5;

    throw v17

    :cond_19
    move-object/from16 v12, p1

    move/from16 v11, p3

    goto :goto_13

    :cond_1a
    move-object/from16 v12, p1

    move/from16 v11, p3

    move-object/from16 v10, p6

    .line 65
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/b7;->B(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/y7;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/s4;->n(I[BIILcom/google/android/gms/internal/measurement/y7;Lcom/google/android/gms/internal/measurement/r4;)I

    move-result v0

    :goto_14
    move/from16 v13, p4

    move v1, v8

    move-object v15, v9

    move-object v9, v10

    move v2, v11

    move-object v14, v12

    move/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v10, v26

    move-object/from16 v12, p2

    move v11, v7

    goto/16 :goto_0

    :cond_1b
    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v26, v10

    move v7, v11

    move-object v12, v14

    move-object v9, v15

    :goto_15
    const v2, 0xfffff

    if-eq v6, v2, :cond_1c

    int-to-long v3, v6

    move-object/from16 v6, v26

    .line 67
    invoke-virtual {v6, v12, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1c
    iget v3, v9, Lcom/google/android/gms/internal/measurement/b7;->k:I

    :goto_16
    iget v4, v9, Lcom/google/android/gms/internal/measurement/b7;->l:I

    if-ge v3, v4, :cond_1f

    iget-object v4, v9, Lcom/google/android/gms/internal/measurement/b7;->j:[I

    .line 68
    aget v4, v4, v3

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 69
    aget v5, v5, v4

    .line 70
    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v5

    and-int/2addr v5, v2

    int-to-long v5, v5

    .line 71
    invoke-static {v12, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1d

    goto :goto_17

    .line 72
    :cond_1d
    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/measurement/b7;->P(I)Lcom/google/android/gms/internal/measurement/b6;

    move-result-object v6

    if-nez v6, :cond_1e

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 73
    :cond_1e
    check-cast v5, Lcom/google/android/gms/internal/measurement/zziq;

    .line 74
    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/measurement/b7;->O(I)Ljava/lang/Object;

    move-result-object v0

    .line 75
    check-cast v0, Lcom/google/android/gms/internal/measurement/s6;

    throw v17

    :cond_1f
    if-nez v7, :cond_21

    move/from16 v2, p4

    if-ne v0, v2, :cond_20

    goto :goto_18

    .line 76
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zze()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    throw v0

    :cond_21
    move/from16 v2, p4

    if-gt v0, v2, :cond_22

    if-ne v1, v7, :cond_22

    :goto_18
    return v0

    .line 77
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zze()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->i:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/b7;->J(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/b7;->I(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 4
    aget v4, v4, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 6
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/b7;->u(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 10
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/b7;->u(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b7;->q:Lcom/google/android/gms/internal/measurement/t6;

    .line 13
    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/m7;->i(Lcom/google/android/gms/internal/measurement/t6;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b7;->m:Lcom/google/android/gms/internal/measurement/n6;

    .line 14
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/n6;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 15
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->G(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 16
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/i8;->l(Ljava/lang/Object;JJ)V

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 19
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->j(Ljava/lang/Object;JI)V

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 22
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/i8;->l(Ljava/lang/Object;JJ)V

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 25
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->j(Ljava/lang/Object;JI)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 28
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->j(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 31
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->j(Ljava/lang/Object;JI)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 34
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->G(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 38
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 41
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->m(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->n(Ljava/lang/Object;JZ)V

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 44
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->j(Ljava/lang/Object;JI)V

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto :goto_1

    .line 47
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/i8;->l(Ljava/lang/Object;JJ)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto :goto_1

    .line 50
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->j(Ljava/lang/Object;JI)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto :goto_1

    .line 53
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/i8;->l(Ljava/lang/Object;JJ)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto :goto_1

    .line 56
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/i8;->l(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto :goto_1

    .line 59
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->o(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/i8;->p(Ljava/lang/Object;JF)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    goto :goto_1

    .line 62
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->q(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/i8;->r(Ljava/lang/Object;JD)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/b7;->s(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 65
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/m7;->f(Lcom/google/android/gms/internal/measurement/x7;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 66
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/m7;->e(Lcom/google/android/gms/internal/measurement/m5;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 2
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 4
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 7
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto/16 :goto_2

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto/16 :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->o(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/f6;->f(Z)I

    move-result v3

    goto/16 :goto_2

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 32
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->l(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->k(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 43
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 52
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->m(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/f6;->f(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->o(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->q(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/f6;->e(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/measurement/b7;->k:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/b7;->j:[I

    .line 1
    aget v12, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 2
    aget v13, v2, v12

    .line 3
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    add-int/lit8 v4, v12, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/b7;->b:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 5
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/b7;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v9

    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/measurement/zziq;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 10
    :cond_5
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/b7;->O(I)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/measurement/s6;

    throw v11

    .line 12
    :cond_6
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/b7;->R(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/k7;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_7
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 14
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 16
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v1

    const/4 v2, 0x0

    .line 17
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/k7;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/b7;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/b7;->R(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/k7;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-nez v0, :cond_c

    return v3

    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 22
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    throw v11
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->i(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 3
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v7

    .line 4
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/m7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/m7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/m7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/m7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/m7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 31
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/m7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/m7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->m(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->m(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->o(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 49
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->o(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/b7;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->q(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 52
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->q(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 54
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 56
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    .line 58
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e0(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b7;->k:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/b7;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b7;->j:[I

    .line 1
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zziq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zziq;->zzd()V

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/i8;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->j:[I

    .line 5
    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b7;->m:Lcom/google/android/gms/internal/measurement/n6;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/b7;->j:[I

    .line 6
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/measurement/n6;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->e(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/r4;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/r4;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->i:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/measurement/b7;->Q(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/r4;)I

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/b7;->C(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/r4;)I

    return-void
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/g5;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b7;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->h(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 2
    aget v4, v4, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/b7;->j(I)I

    move-result v5

    const/4 v6, 0x1

    const v7, 0xfffff

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 4
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    .line 6
    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/g5;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_1

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->B(IJ)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->A(II)V

    goto/16 :goto_1

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->o(IJ)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->m(II)V

    goto/16 :goto_1

    .line 15
    :pswitch_5
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->r(II)V

    goto/16 :goto_1

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->z(II)V

    goto/16 :goto_1

    .line 19
    :pswitch_7
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgr;

    .line 21
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->y(ILcom/google/android/gms/internal/measurement/zzgr;)V

    goto/16 :goto_1

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 23
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 24
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/g5;->C(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_1

    .line 25
    :pswitch_9
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/measurement/b7;->A(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V

    goto/16 :goto_1

    .line 27
    :pswitch_a
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->o(Ljava/lang/Object;J)Z

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->w(IZ)V

    goto/16 :goto_1

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->v(II)V

    goto/16 :goto_1

    .line 31
    :pswitch_c
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 32
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->u(IJ)V

    goto/16 :goto_1

    .line 33
    :pswitch_d
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->m(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->t(II)V

    goto/16 :goto_1

    .line 35
    :pswitch_e
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->s(IJ)V

    goto/16 :goto_1

    .line 37
    :pswitch_f
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->n(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->n(IJ)V

    goto/16 :goto_1

    .line 39
    :pswitch_10
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->l(Ljava/lang/Object;J)F

    move-result v3

    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->p(IF)V

    goto/16 :goto_1

    .line 41
    :pswitch_11
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/internal/measurement/b7;->t(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/b7;->k(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->q(ID)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v4, v3, v2}, Lcom/google/android/gms/internal/measurement/b7;->z(Lcom/google/android/gms/internal/measurement/g5;ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 44
    :pswitch_13
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 45
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 47
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    .line 48
    invoke-static {v4, v3, p2, v5}, Lcom/google/android/gms/internal/measurement/m7;->B(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_1

    .line 49
    :pswitch_14
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 50
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 51
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 52
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 53
    :pswitch_15
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 54
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 55
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 56
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 57
    :pswitch_16
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 58
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 59
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 60
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 61
    :pswitch_17
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 62
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 63
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 64
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 65
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 66
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 67
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 68
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->v(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 69
    :pswitch_19
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 70
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 71
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 72
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 73
    :pswitch_1a
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 74
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 75
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 76
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 77
    :pswitch_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 78
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 79
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 80
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 81
    :pswitch_1c
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 82
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 83
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 84
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 85
    :pswitch_1d
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 86
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 87
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 88
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 89
    :pswitch_1e
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 90
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 91
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 92
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 93
    :pswitch_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 94
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 95
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 96
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 97
    :pswitch_20
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 98
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 99
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 100
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 101
    :pswitch_21
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 102
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v7, v3

    .line 103
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 104
    invoke-static {v4, v3, p2, v6}, Lcom/google/android/gms/internal/measurement/m7;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 105
    :pswitch_22
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 106
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 107
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 108
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 109
    :pswitch_23
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 110
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 111
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 112
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 113
    :pswitch_24
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 114
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 115
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 116
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 117
    :pswitch_25
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 118
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 119
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 120
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 121
    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 122
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 123
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 124
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->v(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 125
    :pswitch_27
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 126
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 127
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 128
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 129
    :pswitch_28
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 130
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 131
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 132
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/measurement/m7;->y(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;)V

    goto/16 :goto_1

    .line 133
    :pswitch_29
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 134
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 135
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 136
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    .line 137
    invoke-static {v4, v3, p2, v5}, Lcom/google/android/gms/internal/measurement/m7;->z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_1

    .line 138
    :pswitch_2a
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 139
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 140
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 141
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/measurement/m7;->x(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;)V

    goto/16 :goto_1

    .line 142
    :pswitch_2b
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 143
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 144
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 145
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 146
    :pswitch_2c
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 147
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 148
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 149
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 150
    :pswitch_2d
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 151
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 152
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 153
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 154
    :pswitch_2e
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 155
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 156
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 157
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 158
    :pswitch_2f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 159
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 160
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 161
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 162
    :pswitch_30
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 163
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 164
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 165
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 166
    :pswitch_31
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 167
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 168
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 169
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 170
    :pswitch_32
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b7;->c:[I

    .line 171
    aget v4, v4, v2

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 172
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 173
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/measurement/m7;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/g5;Z)V

    goto/16 :goto_1

    .line 174
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 175
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 176
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    .line 177
    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/g5;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_1

    .line 178
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 179
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 180
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->B(IJ)V

    goto/16 :goto_1

    .line 181
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 182
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    .line 183
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->A(II)V

    goto/16 :goto_1

    .line 184
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 185
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 186
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->o(IJ)V

    goto/16 :goto_1

    .line 187
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 188
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    .line 189
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->m(II)V

    goto/16 :goto_1

    .line 190
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 191
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    .line 192
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->r(II)V

    goto/16 :goto_1

    .line 193
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 194
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    .line 195
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->z(II)V

    goto/16 :goto_1

    .line 196
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 197
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgr;

    .line 198
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->y(ILcom/google/android/gms/internal/measurement/zzgr;)V

    goto/16 :goto_1

    .line 199
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 200
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 201
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/b7;->N(I)Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v5

    invoke-virtual {p2, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/g5;->C(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/k7;)V

    goto/16 :goto_1

    .line 202
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 203
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/measurement/b7;->A(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V

    goto/16 :goto_1

    .line 204
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 205
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->m(Ljava/lang/Object;J)Z

    move-result v3

    .line 206
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->w(IZ)V

    goto/16 :goto_1

    .line 207
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 208
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    .line 209
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->v(II)V

    goto :goto_1

    .line 210
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 211
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 212
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->u(IJ)V

    goto :goto_1

    .line 213
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 214
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->i(Ljava/lang/Object;J)I

    move-result v3

    .line 215
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->t(II)V

    goto :goto_1

    .line 216
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 217
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 218
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->s(IJ)V

    goto :goto_1

    .line 219
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 220
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 221
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->n(IJ)V

    goto :goto_1

    .line 222
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 223
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->o(Ljava/lang/Object;J)F

    move-result v3

    .line 224
    invoke-virtual {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/g5;->p(IF)V

    goto :goto_1

    .line 225
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/b7;->r(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v3, v7

    int-to-long v5, v3

    .line 226
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/i8;->q(Ljava/lang/Object;J)D

    move-result-wide v5

    .line 227
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/g5;->q(ID)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->n:Lcom/google/android/gms/internal/measurement/x7;

    .line 228
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/x7;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/b7;->o:Lcom/google/android/gms/internal/measurement/m5;

    .line 229
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/m5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q5;

    const/4 p1, 0x0

    .line 230
    throw p1

    .line 231
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/b7;->y(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g5;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b7;->g:Lcom/google/android/gms/internal/measurement/y6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x5;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/x5;->y(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
