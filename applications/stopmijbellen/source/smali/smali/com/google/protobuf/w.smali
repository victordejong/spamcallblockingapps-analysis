.class public final Lcom/google/protobuf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx6/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx6/w<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:[I

.field public static final s:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/protobuf/u;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[I

.field public final k:I

.field public final l:I

.field public final m:Lx6/q;

.field public final n:Lcom/google/protobuf/o;

.field public final o:Lcom/google/protobuf/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/d0<",
            "**>;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/protobuf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/f<",
            "*>;"
        }
    .end annotation
.end field

.field public final q:Lcom/google/protobuf/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/protobuf/w;->r:[I

    .line 2
    invoke-static {}, Lx6/b0;->o()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/w;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/u;ZZ[IIILx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/protobuf/u;",
            "ZZ[III",
            "Lx6/q;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/d0<",
            "**>;",
            "Lcom/google/protobuf/f<",
            "*>;",
            "Lcom/google/protobuf/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/w;->a:[I

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/w;->b:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/protobuf/w;->c:I

    .line 5
    iput p4, p0, Lcom/google/protobuf/w;->d:I

    .line 6
    instance-of p1, p5, Lcom/google/protobuf/i;

    iput-boolean p1, p0, Lcom/google/protobuf/w;->g:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/protobuf/w;->h:Z

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/protobuf/f;->d(Lcom/google/protobuf/u;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/w;->f:Z

    .line 9
    iput-boolean p7, p0, Lcom/google/protobuf/w;->i:Z

    .line 10
    iput-object p8, p0, Lcom/google/protobuf/w;->j:[I

    .line 11
    iput p9, p0, Lcom/google/protobuf/w;->k:I

    .line 12
    iput p10, p0, Lcom/google/protobuf/w;->l:I

    .line 13
    iput-object p11, p0, Lcom/google/protobuf/w;->m:Lx6/q;

    .line 14
    iput-object p12, p0, Lcom/google/protobuf/w;->n:Lcom/google/protobuf/o;

    .line 15
    iput-object p13, p0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    .line 16
    iput-object p14, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    .line 17
    iput-object p5, p0, Lcom/google/protobuf/w;->e:Lcom/google/protobuf/u;

    .line 18
    iput-object p15, p0, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    return-void
.end method

.method public static A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
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

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static D(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static p(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static s(Lx6/n;Lx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)Lcom/google/protobuf/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lx6/n;",
            "Lx6/q;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/d0<",
            "**>;",
            "Lcom/google/protobuf/f<",
            "*>;",
            "Lcom/google/protobuf/s;",
            ")",
            "Lcom/google/protobuf/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lx6/v;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p0

    check-cast v1, Lx6/v;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/w;->t(Lx6/v;Lx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)Lcom/google/protobuf/w;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    check-cast p0, Lx6/y;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static t(Lx6/v;Lx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)Lcom/google/protobuf/w;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx6/v;",
            "Lx6/q;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/d0<",
            "**>;",
            "Lcom/google/protobuf/f<",
            "*>;",
            "Lcom/google/protobuf/s;",
            ")",
            "Lcom/google/protobuf/w<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lx6/v;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 2
    :goto_1
    iget-object v1, v0, Lx6/v;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xd800

    if-lt v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v8, v6, 0x1

    .line 5
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_3

    move v6, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    :cond_3
    add-int/lit8 v6, v8, 0x1

    .line 6
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_5

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v6, 0x1

    .line 7
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v10

    or-int/2addr v8, v6

    add-int/lit8 v10, v10, 0xd

    move v6, v12

    goto :goto_3

    :cond_4
    shl-int/2addr v6, v10

    or-int/2addr v8, v6

    move v6, v12

    :cond_5
    if-nez v8, :cond_6

    .line 8
    sget-object v8, Lcom/google/protobuf/w;->r:[I

    move-object v14, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_6
    add-int/lit8 v8, v6, 0x1

    .line 9
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_8

    and-int/lit16 v6, v6, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v8, 0x1

    .line 10
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v6, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_4

    :cond_7
    shl-int/2addr v8, v10

    or-int/2addr v6, v8

    move v8, v12

    :cond_8
    add-int/lit8 v10, v8, 0x1

    .line 11
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    .line 12
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v8, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_9
    shl-int/2addr v10, v12

    or-int/2addr v8, v10

    move v10, v13

    :cond_a
    add-int/lit8 v12, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 14
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_b
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_c
    add-int/lit8 v13, v12, 0x1

    .line 15
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 16
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_e
    add-int/lit8 v14, v13, 0x1

    .line 17
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 18
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_f
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_10
    add-int/lit8 v15, v14, 0x1

    .line 19
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 20
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_11

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_11
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_12
    add-int/lit8 v16, v15, 0x1

    .line 21
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v18, v4, 0x1

    .line 22
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_13

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v18

    goto :goto_a

    :cond_13
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v4, v18

    goto :goto_b

    :cond_14
    move/from16 v4, v16

    :goto_b
    add-int/lit8 v16, v4, 0x1

    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v9, v16

    const/16 v16, 0xd

    :goto_c
    add-int/lit8 v19, v9, 0x1

    .line 24
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_15

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v16

    or-int/2addr v4, v9

    add-int/lit8 v16, v16, 0xd

    move/from16 v9, v19

    goto :goto_c

    :cond_15
    shl-int v9, v9, v16

    or-int/2addr v4, v9

    move/from16 v16, v19

    :cond_16
    add-int v9, v4, v14

    add-int/2addr v9, v15

    .line 25
    new-array v9, v9, [I

    mul-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v8

    move v8, v10

    move v10, v14

    move-object v14, v9

    move v9, v12

    move v12, v15

    move v15, v4

    move v4, v6

    move/from16 v6, v16

    .line 26
    :goto_d
    sget-object v2, Lcom/google/protobuf/w;->s:Lsun/misc/Unsafe;

    .line 27
    iget-object v7, v0, Lx6/v;->c:[Ljava/lang/Object;

    .line 28
    iget-object v3, v0, Lx6/v;->a:Lcom/google/protobuf/u;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move/from16 v21, v6

    mul-int/lit8 v6, v13, 0x3

    .line 30
    new-array v6, v6, [I

    const/16 v20, 0x2

    mul-int/lit8 v13, v13, 0x2

    .line 31
    new-array v13, v13, [Ljava/lang/Object;

    add-int v22, v15, v10

    move/from16 v24, v15

    move/from16 v10, v21

    move/from16 v25, v22

    const/16 v21, 0x0

    const/16 v23, 0x0

    :goto_e
    if-ge v10, v5, :cond_34

    add-int/lit8 v26, v10, 0x1

    .line 32
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v27, v5

    const v5, 0xd800

    if-lt v10, v5, :cond_18

    and-int/lit16 v10, v10, 0x1fff

    move/from16 v5, v26

    const/16 v26, 0xd

    :goto_f
    add-int/lit8 v28, v5, 0x1

    .line 33
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v29, v15

    const v15, 0xd800

    if-lt v5, v15, :cond_17

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v26

    or-int/2addr v10, v5

    add-int/lit8 v26, v26, 0xd

    move/from16 v5, v28

    move/from16 v15, v29

    goto :goto_f

    :cond_17
    shl-int v5, v5, v26

    or-int/2addr v10, v5

    move/from16 v5, v28

    goto :goto_10

    :cond_18
    move/from16 v29, v15

    move/from16 v5, v26

    :goto_10
    add-int/lit8 v15, v5, 0x1

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v26, v15

    const v15, 0xd800

    if-lt v5, v15, :cond_1a

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v15, v26

    const/16 v26, 0xd

    :goto_11
    add-int/lit8 v28, v15, 0x1

    .line 35
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v30, v9

    const v9, 0xd800

    if-lt v15, v9, :cond_19

    and-int/lit16 v9, v15, 0x1fff

    shl-int v9, v9, v26

    or-int/2addr v5, v9

    add-int/lit8 v26, v26, 0xd

    move/from16 v15, v28

    move/from16 v9, v30

    goto :goto_11

    :cond_19
    shl-int v9, v15, v26

    or-int/2addr v5, v9

    move/from16 v15, v28

    goto :goto_12

    :cond_1a
    move/from16 v30, v9

    move/from16 v15, v26

    :goto_12
    and-int/lit16 v9, v5, 0xff

    move/from16 v26, v8

    and-int/lit16 v8, v5, 0x400

    if-eqz v8, :cond_1b

    add-int/lit8 v8, v21, 0x1

    .line 36
    aput v23, v14, v21

    move/from16 v21, v8

    :cond_1b
    const/16 v8, 0x33

    if-lt v9, v8, :cond_23

    add-int/lit8 v8, v15, 0x1

    .line 37
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v8

    const v8, 0xd800

    if-lt v15, v8, :cond_1d

    and-int/lit16 v15, v15, 0x1fff

    const/16 v34, 0xd

    move/from16 v36, v28

    move/from16 v28, v15

    move/from16 v15, v36

    :goto_13
    add-int/lit8 v35, v15, 0x1

    .line 38
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v8, :cond_1c

    and-int/lit16 v8, v15, 0x1fff

    shl-int v8, v8, v34

    or-int v28, v28, v8

    add-int/lit8 v34, v34, 0xd

    move/from16 v15, v35

    const v8, 0xd800

    goto :goto_13

    :cond_1c
    shl-int v8, v15, v34

    or-int v15, v28, v8

    move/from16 v8, v35

    goto :goto_14

    :cond_1d
    move/from16 v8, v28

    :goto_14
    move/from16 v28, v8

    add-int/lit8 v8, v9, -0x33

    const/16 v0, 0x9

    if-eq v8, v0, :cond_20

    const/16 v0, 0x11

    if-ne v8, v0, :cond_1e

    goto :goto_15

    :cond_1e
    const/16 v0, 0xc

    if-ne v8, v0, :cond_1f

    if-nez v11, :cond_1f

    .line 39
    div-int/lit8 v0, v23, 0x3

    const/4 v8, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/4 v8, 0x1

    add-int/2addr v0, v8

    add-int/lit8 v8, v12, 0x1

    aget-object v12, v7, v12

    aput-object v12, v13, v0

    move v12, v8

    :cond_1f
    const/4 v8, 0x2

    goto :goto_16

    .line 40
    :cond_20
    :goto_15
    div-int/lit8 v0, v23, 0x3

    const/4 v8, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v20, v12, 0x1

    aget-object v12, v7, v12

    aput-object v12, v13, v0

    move/from16 v12, v20

    :goto_16
    mul-int/lit8 v15, v15, 0x2

    .line 41
    aget-object v0, v7, v15

    .line 42
    instance-of v8, v0, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_21

    .line 43
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 44
    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/protobuf/w;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 45
    aput-object v0, v7, v15

    :goto_17
    move-object v8, v1

    .line 46
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v15, v15, 0x1

    .line 47
    aget-object v0, v7, v15

    move/from16 v31, v1

    .line 48
    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_22

    .line 49
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_18

    .line 50
    :cond_22
    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/protobuf/w;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 51
    aput-object v0, v7, v15

    .line 52
    :goto_18
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    move-object/from16 v32, v3

    move v0, v4

    move/from16 v15, v28

    const/16 v16, 0x1

    const/16 v19, 0x2

    move v4, v1

    move/from16 v1, v31

    move/from16 v31, v12

    const/4 v12, 0x0

    goto/16 :goto_23

    :cond_23
    move-object v8, v1

    add-int/lit8 v0, v12, 0x1

    .line 53
    aget-object v1, v7, v12

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/protobuf/w;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v12, 0x9

    if-eq v9, v12, :cond_2b

    const/16 v12, 0x11

    if-ne v9, v12, :cond_24

    goto/16 :goto_1c

    :cond_24
    const/16 v12, 0x1b

    if-eq v9, v12, :cond_2a

    const/16 v12, 0x31

    if-ne v9, v12, :cond_25

    goto :goto_1b

    :cond_25
    const/16 v12, 0xc

    if-eq v9, v12, :cond_28

    const/16 v12, 0x1e

    if-eq v9, v12, :cond_28

    const/16 v12, 0x2c

    if-ne v9, v12, :cond_26

    goto :goto_19

    :cond_26
    const/16 v12, 0x32

    if-ne v9, v12, :cond_29

    add-int/lit8 v12, v24, 0x1

    .line 54
    aput v23, v14, v24

    .line 55
    div-int/lit8 v24, v23, 0x3

    const/16 v20, 0x2

    mul-int/lit8 v24, v24, 0x2

    add-int/lit8 v31, v0, 0x1

    aget-object v0, v7, v0

    aput-object v0, v13, v24

    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v0, v31, 0x1

    .line 56
    aget-object v31, v7, v31

    aput-object v31, v13, v24

    move/from16 v24, v12

    goto :goto_1a

    :cond_27
    move/from16 v24, v12

    move/from16 v0, v31

    goto :goto_1a

    :cond_28
    :goto_19
    if-nez v11, :cond_29

    .line 57
    div-int/lit8 v12, v23, 0x3

    const/16 v20, 0x2

    mul-int/lit8 v12, v12, 0x2

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v31, v0, 0x1

    aget-object v0, v7, v0

    aput-object v0, v13, v12

    const/16 v16, 0x1

    const/16 v20, 0x2

    goto :goto_1e

    :cond_29
    :goto_1a
    const/16 v16, 0x1

    goto :goto_1d

    .line 58
    :cond_2a
    :goto_1b
    div-int/lit8 v12, v23, 0x3

    const/16 v20, 0x2

    mul-int/lit8 v12, v12, 0x2

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v31, v0, 0x1

    aget-object v0, v7, v0

    aput-object v0, v13, v12

    goto :goto_1e

    :cond_2b
    :goto_1c
    const/16 v16, 0x1

    const/16 v20, 0x2

    .line 59
    div-int/lit8 v12, v23, 0x3

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v31

    aput-object v31, v13, v12

    :goto_1d
    move/from16 v31, v0

    .line 60
    :goto_1e
    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    and-int/lit16 v0, v5, 0x1000

    const/16 v12, 0x1000

    if-ne v0, v12, :cond_2c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_2c
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_30

    const/16 v0, 0x11

    if-gt v9, v0, :cond_30

    add-int/lit8 v0, v15, 0x1

    .line 61
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v15, 0xd800

    if-lt v12, v15, :cond_2e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v19, 0xd

    :goto_20
    add-int/lit8 v32, v0, 0x1

    .line 62
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v15, :cond_2d

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v19

    or-int/2addr v12, v0

    add-int/lit8 v19, v19, 0xd

    move/from16 v0, v32

    goto :goto_20

    :cond_2d
    shl-int v0, v0, v19

    or-int/2addr v12, v0

    move/from16 v0, v32

    :cond_2e
    const/16 v19, 0x2

    mul-int/lit8 v20, v4, 0x2

    .line 63
    div-int/lit8 v32, v12, 0x20

    add-int v32, v32, v20

    .line 64
    aget-object v15, v7, v32

    move/from16 v33, v0

    .line 65
    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2f

    .line 66
    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_21

    .line 67
    :cond_2f
    check-cast v15, Ljava/lang/String;

    invoke-static {v3, v15}, Lcom/google/protobuf/w;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 68
    aput-object v15, v7, v32

    :goto_21
    move-object/from16 v32, v3

    move v0, v4

    .line 69
    invoke-virtual {v2, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 70
    rem-int/lit8 v12, v12, 0x20

    move/from16 v15, v33

    goto :goto_22

    :cond_30
    move-object/from16 v32, v3

    move v0, v4

    const v3, 0xd800

    const/16 v19, 0x2

    const v4, 0xfffff

    const/4 v12, 0x0

    :goto_22
    const/16 v3, 0x12

    if-lt v9, v3, :cond_31

    const/16 v3, 0x31

    if-gt v9, v3, :cond_31

    add-int/lit8 v3, v25, 0x1

    .line 71
    aput v1, v14, v25

    move/from16 v25, v3

    :cond_31
    :goto_23
    add-int/lit8 v3, v23, 0x1

    .line 72
    aput v10, v6, v23

    add-int/lit8 v10, v3, 0x1

    move/from16 v23, v0

    and-int/lit16 v0, v5, 0x200

    if-eqz v0, :cond_32

    const/high16 v0, 0x20000000

    goto :goto_24

    :cond_32
    const/4 v0, 0x0

    :goto_24
    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_33

    const/high16 v5, 0x10000000

    goto :goto_25

    :cond_33
    const/4 v5, 0x0

    :goto_25
    or-int/2addr v0, v5

    shl-int/lit8 v5, v9, 0x14

    or-int/2addr v0, v5

    or-int/2addr v0, v1

    .line 73
    aput v0, v6, v3

    add-int/lit8 v0, v10, 0x1

    shl-int/lit8 v1, v12, 0x14

    or-int/2addr v1, v4

    .line 74
    aput v1, v6, v10

    move-object v1, v8

    move v10, v15

    move/from16 v4, v23

    move/from16 v8, v26

    move/from16 v5, v27

    move/from16 v15, v29

    move/from16 v9, v30

    move/from16 v12, v31

    move-object/from16 v3, v32

    move/from16 v23, v0

    move-object/from16 v0, p0

    goto/16 :goto_e

    :cond_34
    move/from16 v26, v8

    move/from16 v30, v9

    move/from16 v29, v15

    .line 75
    new-instance v0, Lcom/google/protobuf/w;

    move-object/from16 v1, p0

    .line 76
    iget-object v10, v1, Lx6/v;->a:Lcom/google/protobuf/u;

    const/4 v12, 0x0

    move-object v5, v0

    move-object v7, v13

    move-object v13, v14

    move/from16 v14, v29

    move/from16 v15, v22

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 77
    invoke-direct/range {v5 .. v20}, Lcom/google/protobuf/w;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/u;ZZ[IIILx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)V

    return-object v0
.end method

.method public static u(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static v(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static x(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static y(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static z(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final B(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v2, p2

    .line 2
    invoke-static {p1, v0, v1}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 3
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v0, v1, p2}, Lx6/b0$e;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final C(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    sget-object p3, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {p3, p1, v0, v1, p2}, Lx6/b0$e;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final E(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final F(Ljava/lang/Object;Lcom/google/protobuf/g0;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/g0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lcom/google/protobuf/w;->f:Z

    if-eqz v3, :cond_0

    .line 2
    iget-object v3, v0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/f;->b(Ljava/lang/Object;)Lcom/google/protobuf/h;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/protobuf/h;->h()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/google/protobuf/h;->k()Ljava/util/Iterator;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    iget-object v6, v0, Lcom/google/protobuf/w;->a:[I

    array-length v6, v6

    .line 7
    sget-object v7, Lcom/google/protobuf/w;->s:Lsun/misc/Unsafe;

    const v8, 0xfffff

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    .line 8
    invoke-virtual {v0, v10}, Lcom/google/protobuf/w;->E(I)I

    move-result v13

    .line 9
    iget-object v14, v0, Lcom/google/protobuf/w;->a:[I

    aget v14, v14, v10

    .line 10
    invoke-static {v13}, Lcom/google/protobuf/w;->D(I)I

    move-result v15

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    .line 11
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v16, v10, 0x2

    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_1

    int-to-long v11, v9

    .line 12
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 13
    iget-object v9, v0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v9, v5}, Lcom/google/protobuf/f;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 14
    iget-object v9, v0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v9, v2, v5}, Lcom/google/protobuf/f;->f(Lcom/google/protobuf/g0;Ljava/util/Map$Entry;)V

    .line 15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {v13}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 17
    :pswitch_0
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    .line 19
    move-object v9, v2

    check-cast v9, Lcom/google/protobuf/e;

    invoke-virtual {v9, v14, v4, v8}, Lcom/google/protobuf/e;->c(ILjava/lang/Object;Lx6/w;)V

    goto :goto_3

    .line 20
    :pswitch_1
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/e;->g(IJ)V

    goto :goto_3

    .line 22
    :pswitch_2
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 23
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/e;->f(II)V

    goto :goto_3

    .line 24
    :pswitch_3
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 25
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    .line 26
    iget-object v4, v4, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 27
    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    goto :goto_3

    .line 28
    :pswitch_4
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 30
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 31
    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    goto :goto_3

    .line 32
    :pswitch_5
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 33
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 34
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 35
    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->y0(II)V

    goto :goto_3

    .line 36
    :pswitch_6
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 37
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 38
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    goto/16 :goto_3

    .line 39
    :pswitch_7
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx6/c;

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 41
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->s0(ILx6/c;)V

    goto/16 :goto_3

    .line 42
    :pswitch_8
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 43
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 44
    invoke-virtual {v0, v10}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Lcom/google/protobuf/e;

    invoke-virtual {v9, v14, v4, v8}, Lcom/google/protobuf/e;->d(ILjava/lang/Object;Lx6/w;)V

    goto/16 :goto_3

    .line 45
    :pswitch_9
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 46
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v14, v4, v2}, Lcom/google/protobuf/w;->H(ILjava/lang/Object;Lcom/google/protobuf/g0;)V

    goto/16 :goto_3

    .line 47
    :pswitch_a
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 48
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->v(Ljava/lang/Object;J)Z

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 49
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->q0(IZ)V

    goto/16 :goto_3

    .line 50
    :pswitch_b
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 51
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 52
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    goto/16 :goto_3

    .line 53
    :pswitch_c
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 54
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    .line 55
    iget-object v4, v4, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    goto/16 :goto_3

    .line 56
    :pswitch_d
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 57
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 58
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->y0(II)V

    goto/16 :goto_3

    .line 59
    :pswitch_e
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 60
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    .line 61
    iget-object v4, v4, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    goto/16 :goto_3

    .line 62
    :pswitch_f
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 63
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    .line 64
    iget-object v4, v4, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 65
    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    goto/16 :goto_3

    .line 66
    :pswitch_10
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 67
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->x(Ljava/lang/Object;J)F

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/e;->b(IF)V

    goto/16 :goto_3

    .line 68
    :pswitch_11
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/w;->w(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/e;->a(ID)V

    goto/16 :goto_3

    .line 70
    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v14, v4, v10}, Lcom/google/protobuf/w;->G(Lcom/google/protobuf/g0;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 71
    :pswitch_13
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 72
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 73
    invoke-virtual {v0, v10}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v9

    .line 74
    invoke-static {v4, v8, v2, v9}, Lcom/google/protobuf/a0;->I(ILjava/util/List;Lcom/google/protobuf/g0;Lx6/w;)V

    goto/16 :goto_3

    .line 75
    :pswitch_14
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 76
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x1

    .line 77
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->P(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    .line 78
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 79
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 80
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->O(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    .line 81
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 82
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 83
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->N(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    .line 84
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 85
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 86
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->M(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    .line 87
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 88
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 89
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->E(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    .line 90
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 91
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 92
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->R(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    .line 93
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 94
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 95
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->B(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    .line 96
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 97
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 98
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->F(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    .line 99
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 100
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 101
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->G(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    .line 102
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 103
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 104
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->J(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    .line 105
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 106
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 107
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->S(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    .line 108
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 109
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 110
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->K(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    .line 111
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 112
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 113
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->H(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    .line 114
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 115
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 116
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->D(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 117
    :pswitch_22
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 118
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 119
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->P(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    .line 120
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 121
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 122
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->O(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    .line 123
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 124
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 125
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->N(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    .line 126
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 127
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 128
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->M(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    .line 129
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 130
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 131
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->E(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    .line 132
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 133
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 134
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->R(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    .line 135
    :pswitch_28
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 136
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 137
    invoke-static {v4, v8, v2}, Lcom/google/protobuf/a0;->C(ILjava/util/List;Lcom/google/protobuf/g0;)V

    goto/16 :goto_3

    .line 138
    :pswitch_29
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 139
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 140
    invoke-virtual {v0, v10}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v9

    .line 141
    invoke-static {v4, v8, v2, v9}, Lcom/google/protobuf/a0;->L(ILjava/util/List;Lcom/google/protobuf/g0;Lx6/w;)V

    goto/16 :goto_3

    .line 142
    :pswitch_2a
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 143
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 144
    invoke-static {v4, v8, v2}, Lcom/google/protobuf/a0;->Q(ILjava/util/List;Lcom/google/protobuf/g0;)V

    goto/16 :goto_3

    .line 145
    :pswitch_2b
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 146
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 147
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->B(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    .line 148
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 149
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 150
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->F(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    .line 151
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 152
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 153
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->G(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    .line 154
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 155
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 156
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->J(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    .line 157
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 158
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 159
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->S(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    .line 160
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 161
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 162
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->K(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    .line 163
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 164
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 165
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->H(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    .line 166
    iget-object v4, v0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v10

    .line 167
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 168
    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/a0;->D(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 169
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    .line 170
    move-object v9, v2

    check-cast v9, Lcom/google/protobuf/e;

    invoke-virtual {v9, v14, v4, v8}, Lcom/google/protobuf/e;->c(ILjava/lang/Object;Lx6/w;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 171
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/e;->g(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 172
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/e;->f(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 173
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    .line 174
    iget-object v4, v4, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 175
    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 176
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 177
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 178
    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 179
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 180
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 181
    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->y0(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 182
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 183
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 184
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx6/c;

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 185
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->s0(ILx6/c;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 186
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 187
    invoke-virtual {v0, v10}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Lcom/google/protobuf/e;

    invoke-virtual {v9, v14, v4, v8}, Lcom/google/protobuf/e;->d(ILjava/lang/Object;Lx6/w;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 188
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v14, v4, v2}, Lcom/google/protobuf/w;->H(ILjava/lang/Object;Lcom/google/protobuf/g0;)V

    goto/16 :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 189
    invoke-static {v1, v8, v9}, Lx6/b0;->f(Ljava/lang/Object;J)Z

    move-result v4

    .line 190
    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 191
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->q0(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 192
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 193
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 194
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    .line 195
    iget-object v4, v4, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 196
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    .line 197
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/CodedOutputStream;->y0(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 198
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    .line 199
    iget-object v4, v4, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 200
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    .line 201
    iget-object v4, v4, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 202
    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 203
    invoke-static {v1, v8, v9}, Lx6/b0;->k(Ljava/lang/Object;J)F

    move-result v4

    .line 204
    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/e;

    invoke-virtual {v8, v14, v4}, Lcom/google/protobuf/e;->b(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 205
    invoke-static {v1, v8, v9}, Lx6/b0;->j(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 206
    move-object v4, v2

    check-cast v4, Lcom/google/protobuf/e;

    invoke-virtual {v4, v14, v8, v9}, Lcom/google/protobuf/e;->a(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 207
    iget-object v4, v0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v4, v2, v5}, Lcom/google/protobuf/f;->f(Lcom/google/protobuf/g0;Ljava/util/Map$Entry;)V

    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 209
    :cond_9
    iget-object v3, v0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    .line 210
    invoke-virtual {v3, v1}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/protobuf/d0;->h(Ljava/lang/Object;Lcom/google/protobuf/g0;)V

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

.method public final G(Lcom/google/protobuf/g0;ILjava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/g0;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/w;->b:[Ljava/lang/Object;

    div-int/lit8 p4, p4, 0x3

    const/4 v2, 0x2

    mul-int/lit8 p4, p4, 0x2

    aget-object p4, v1, p4

    .line 3
    invoke-interface {v0, p4}, Lcom/google/protobuf/s;->d(Ljava/lang/Object;)Lcom/google/protobuf/q$a;

    move-result-object p4

    iget-object v0, p0, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    .line 4
    invoke-interface {v0, p3}, Lcom/google/protobuf/s;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 5
    check-cast p1, Lcom/google/protobuf/e;

    .line 6
    iget-object v0, p1, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    iget-object v1, p1, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v1, p2, v2}, Lcom/google/protobuf/CodedOutputStream;->G0(II)V

    .line 9
    iget-object v1, p1, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p4, v3, v4}, Lcom/google/protobuf/q;->a(Lcom/google/protobuf/q$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 11
    invoke-virtual {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->I0(I)V

    .line 12
    iget-object v1, p1, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p4, v3, v0}, Lcom/google/protobuf/q;->b(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/q$a;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final H(ILjava/lang/Object;Lcom/google/protobuf/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/google/protobuf/e;

    .line 3
    iget-object p3, p3, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p3, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->E0(ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    check-cast p2, Lx6/c;

    check-cast p3, Lcom/google/protobuf/e;

    .line 5
    iget-object p3, p3, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p3, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->s0(ILx6/c;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
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
    iget-object v1, p0, Lcom/google/protobuf/w;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 3
    aget v1, v1, v2

    .line 4
    invoke-static {v1}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v4

    .line 5
    iget-object v2, p0, Lcom/google/protobuf/w;->a:[I

    aget v2, v2, v0

    .line 6
    invoke-static {v1}, Lcom/google/protobuf/w;->D(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 7
    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/w;->r(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0, p2, v2, v0}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p2, v4, v5}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 10
    sget-object v3, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v3, p1, v4, v5, v1}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/protobuf/w;->C(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 12
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/w;->r(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 13
    :pswitch_3
    invoke-virtual {p0, p2, v2, v0}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-static {p2, v4, v5}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 15
    sget-object v3, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v3, p1, v4, v5, v1}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/protobuf/w;->C(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 17
    :pswitch_4
    iget-object v1, p0, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    sget-object v2, Lcom/google/protobuf/a0;->a:Ljava/lang/Class;

    .line 18
    invoke-static {p1, v4, v5}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-interface {v1, v2, v3}, Lcom/google/protobuf/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 21
    :pswitch_5
    iget-object v1, p0, Lcom/google/protobuf/w;->n:Lcom/google/protobuf/o;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/protobuf/o;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 22
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/w;->q(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 23
    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {p2, v4, v5}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lx6/b0;->s(Ljava/lang/Object;JJ)V

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 26
    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {p2, v4, v5}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 28
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->o(Ljava/lang/Object;JI)V

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 30
    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p2, v4, v5}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lx6/b0;->s(Ljava/lang/Object;JJ)V

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 33
    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p2, v4, v5}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 35
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->o(Ljava/lang/Object;JI)V

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {p2, v4, v5}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 39
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->o(Ljava/lang/Object;JI)V

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 41
    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p2, v4, v5}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 43
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->o(Ljava/lang/Object;JI)V

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 45
    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p2, v4, v5}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 47
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 49
    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/w;->q(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 50
    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p2, v4, v5}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 52
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 54
    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p2, v4, v5}, Lx6/b0;->f(Ljava/lang/Object;J)Z

    move-result v1

    .line 56
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->k(Ljava/lang/Object;JZ)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 58
    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p2, v4, v5}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 60
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->o(Ljava/lang/Object;JI)V

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 62
    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p2, v4, v5}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lx6/b0;->s(Ljava/lang/Object;JJ)V

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto :goto_1

    .line 65
    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {p2, v4, v5}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 67
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->o(Ljava/lang/Object;JI)V

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto :goto_1

    .line 69
    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {p2, v4, v5}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lx6/b0;->s(Ljava/lang/Object;JJ)V

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto :goto_1

    .line 72
    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {p2, v4, v5}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lx6/b0;->s(Ljava/lang/Object;JJ)V

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto :goto_1

    .line 75
    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p2, v4, v5}, Lx6/b0;->k(Ljava/lang/Object;J)F

    move-result v1

    .line 77
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v4, v5, v1}, Lx6/b0$e;->n(Ljava/lang/Object;JF)V

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto :goto_1

    .line 79
    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {p2, v4, v5}, Lx6/b0;->j(Ljava/lang/Object;J)D

    move-result-wide v6

    .line 81
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lx6/b0$e;->m(Ljava/lang/Object;JD)V

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    sget-object v1, Lcom/google/protobuf/a0;->a:Ljava/lang/Class;

    .line 84
    invoke-virtual {v0, p1}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-virtual {v0, p2}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/d0;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/d0;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    iget-boolean v0, p0, Lcom/google/protobuf/w;->f:Z

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/a0;->z(Lcom/google/protobuf/f;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

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

.method public b(Ljava/lang/Object;Lcom/google/protobuf/g0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/g0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/google/protobuf/w;->h:Z

    if-eqz v0, :cond_7

    .line 3
    iget-boolean v0, p0, Lcom/google/protobuf/w;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/f;->b(Ljava/lang/Object;)Lcom/google/protobuf/h;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/h;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/h;->k()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/w;->a:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 9
    invoke-virtual {p0, v5}, Lcom/google/protobuf/w;->E(I)I

    move-result v6

    .line 10
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    :goto_2
    if-eqz v2, :cond_2

    .line 11
    iget-object v8, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v8, v2}, Lcom/google/protobuf/f;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    .line 12
    iget-object v8, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/f;->f(Lcom/google/protobuf/g0;Ljava/util/Map$Entry;)V

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {v6}, Lcom/google/protobuf/w;->D(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 15
    :pswitch_0
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 16
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 17
    invoke-virtual {p0, v5}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    .line 18
    move-object v9, p2

    check-cast v9, Lcom/google/protobuf/e;

    invoke-virtual {v9, v7, v6, v8}, Lcom/google/protobuf/e;->c(ILjava/lang/Object;Lx6/w;)V

    goto/16 :goto_3

    .line 19
    :pswitch_1
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 20
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/e;->g(IJ)V

    goto/16 :goto_3

    .line 21
    :pswitch_2
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 22
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/e;->f(II)V

    goto/16 :goto_3

    .line 23
    :pswitch_3
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 24
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    .line 25
    iget-object v6, v6, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 26
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    goto/16 :goto_3

    .line 27
    :pswitch_4
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 28
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 29
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 30
    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    goto/16 :goto_3

    .line 31
    :pswitch_5
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 32
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 33
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 34
    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->y0(II)V

    goto/16 :goto_3

    .line 35
    :pswitch_6
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 36
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 37
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    goto/16 :goto_3

    .line 38
    :pswitch_7
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 39
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx6/c;

    .line 40
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 41
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->s0(ILx6/c;)V

    goto/16 :goto_3

    .line 42
    :pswitch_8
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 43
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 44
    invoke-virtual {p0, v5}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/google/protobuf/e;

    invoke-virtual {v9, v7, v6, v8}, Lcom/google/protobuf/e;->d(ILjava/lang/Object;Lx6/w;)V

    goto/16 :goto_3

    .line 45
    :pswitch_9
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 46
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lcom/google/protobuf/w;->H(ILjava/lang/Object;Lcom/google/protobuf/g0;)V

    goto/16 :goto_3

    .line 47
    :pswitch_a
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 48
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->v(Ljava/lang/Object;J)Z

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 49
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->q0(IZ)V

    goto/16 :goto_3

    .line 50
    :pswitch_b
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 51
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 52
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    goto/16 :goto_3

    .line 53
    :pswitch_c
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 54
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    .line 55
    iget-object v6, v6, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    goto/16 :goto_3

    .line 56
    :pswitch_d
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 57
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 58
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->y0(II)V

    goto/16 :goto_3

    .line 59
    :pswitch_e
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    .line 61
    iget-object v6, v6, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    goto/16 :goto_3

    .line 62
    :pswitch_f
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 63
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    .line 64
    iget-object v6, v6, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 65
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    goto/16 :goto_3

    .line 66
    :pswitch_10
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 67
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->x(Ljava/lang/Object;J)F

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/e;->b(IF)V

    goto/16 :goto_3

    .line 68
    :pswitch_11
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 69
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/w;->w(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/e;->a(ID)V

    goto/16 :goto_3

    .line 70
    :pswitch_12
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p2, v7, v6, v5}, Lcom/google/protobuf/w;->G(Lcom/google/protobuf/g0;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 71
    :pswitch_13
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 72
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 73
    invoke-virtual {p0, v5}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    .line 74
    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/a0;->I(ILjava/util/List;Lcom/google/protobuf/g0;Lx6/w;)V

    goto/16 :goto_3

    .line 75
    :pswitch_14
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 76
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 77
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->P(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 78
    :pswitch_15
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 79
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 80
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->O(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 81
    :pswitch_16
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 82
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 83
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->N(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 84
    :pswitch_17
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 85
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 86
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->M(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 87
    :pswitch_18
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 88
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 89
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->E(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 90
    :pswitch_19
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 91
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 92
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->R(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 93
    :pswitch_1a
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 94
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 95
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->B(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 96
    :pswitch_1b
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 97
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 98
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->F(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 99
    :pswitch_1c
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 100
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 101
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->G(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 102
    :pswitch_1d
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 103
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 104
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->J(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 105
    :pswitch_1e
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 106
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 107
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->S(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 108
    :pswitch_1f
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 109
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 110
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->K(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 111
    :pswitch_20
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 112
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 113
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->H(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 114
    :pswitch_21
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 115
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 116
    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/a0;->D(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 117
    :pswitch_22
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 118
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 119
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->P(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 120
    :pswitch_23
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 121
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 122
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->O(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 123
    :pswitch_24
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 124
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 125
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->N(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 126
    :pswitch_25
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 127
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 128
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->M(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 129
    :pswitch_26
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 130
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 131
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->E(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 132
    :pswitch_27
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 133
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 134
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->R(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 135
    :pswitch_28
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 136
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 137
    invoke-static {v7, v6, p2}, Lcom/google/protobuf/a0;->C(ILjava/util/List;Lcom/google/protobuf/g0;)V

    goto/16 :goto_3

    .line 138
    :pswitch_29
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 139
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 140
    invoke-virtual {p0, v5}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    .line 141
    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/a0;->L(ILjava/util/List;Lcom/google/protobuf/g0;Lx6/w;)V

    goto/16 :goto_3

    .line 142
    :pswitch_2a
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 143
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 144
    invoke-static {v7, v6, p2}, Lcom/google/protobuf/a0;->Q(ILjava/util/List;Lcom/google/protobuf/g0;)V

    goto/16 :goto_3

    .line 145
    :pswitch_2b
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 146
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 147
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->B(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 148
    :pswitch_2c
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 149
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 150
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->F(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 151
    :pswitch_2d
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 152
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 153
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->G(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 154
    :pswitch_2e
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 155
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 156
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->J(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 157
    :pswitch_2f
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 158
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 159
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->S(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 160
    :pswitch_30
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 161
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 162
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->K(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 163
    :pswitch_31
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 164
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 165
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->H(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 166
    :pswitch_32
    iget-object v7, p0, Lcom/google/protobuf/w;->a:[I

    aget v7, v7, v5

    .line 167
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 168
    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/a0;->D(ILjava/util/List;Lcom/google/protobuf/g0;Z)V

    goto/16 :goto_3

    .line 169
    :pswitch_33
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 170
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 171
    invoke-virtual {p0, v5}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    .line 172
    move-object v9, p2

    check-cast v9, Lcom/google/protobuf/e;

    invoke-virtual {v9, v7, v6, v8}, Lcom/google/protobuf/e;->c(ILjava/lang/Object;Lx6/w;)V

    goto/16 :goto_3

    .line 173
    :pswitch_34
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 175
    invoke-static {p1, v8, v9}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 176
    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/e;->g(IJ)V

    goto/16 :goto_3

    .line 177
    :pswitch_35
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 178
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 179
    invoke-static {p1, v8, v9}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 180
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/e;->f(II)V

    goto/16 :goto_3

    .line 181
    :pswitch_36
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 182
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 183
    invoke-static {p1, v8, v9}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 184
    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    .line 185
    iget-object v6, v6, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 186
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    goto/16 :goto_3

    .line 187
    :pswitch_37
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 188
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 189
    invoke-static {p1, v8, v9}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 190
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 191
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 192
    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    goto/16 :goto_3

    .line 193
    :pswitch_38
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 194
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 195
    invoke-static {p1, v8, v9}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 196
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 197
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 198
    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->y0(II)V

    goto/16 :goto_3

    .line 199
    :pswitch_39
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 201
    invoke-static {p1, v8, v9}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 202
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 203
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    goto/16 :goto_3

    .line 204
    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 205
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx6/c;

    .line 206
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 207
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->s0(ILx6/c;)V

    goto/16 :goto_3

    .line 208
    :pswitch_3b
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 209
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 210
    invoke-virtual {p0, v5}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/google/protobuf/e;

    invoke-virtual {v9, v7, v6, v8}, Lcom/google/protobuf/e;->d(ILjava/lang/Object;Lx6/w;)V

    goto/16 :goto_3

    .line 211
    :pswitch_3c
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 212
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lcom/google/protobuf/w;->H(ILjava/lang/Object;Lcom/google/protobuf/g0;)V

    goto/16 :goto_3

    .line 213
    :pswitch_3d
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 214
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 215
    invoke-static {p1, v8, v9}, Lx6/b0;->f(Ljava/lang/Object;J)Z

    move-result v6

    .line 216
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 217
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->q0(IZ)V

    goto/16 :goto_3

    .line 218
    :pswitch_3e
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 219
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 220
    invoke-static {p1, v8, v9}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 221
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 222
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    goto/16 :goto_3

    .line 223
    :pswitch_3f
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 225
    invoke-static {p1, v8, v9}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 226
    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    .line 227
    iget-object v6, v6, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->w0(IJ)V

    goto :goto_3

    .line 228
    :pswitch_40
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 229
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 230
    invoke-static {p1, v8, v9}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 231
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    .line 232
    iget-object v8, v8, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->y0(II)V

    goto :goto_3

    .line 233
    :pswitch_41
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 234
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 235
    invoke-static {p1, v8, v9}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 236
    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    .line 237
    iget-object v6, v6, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    goto :goto_3

    .line 238
    :pswitch_42
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 239
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 240
    invoke-static {p1, v8, v9}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 241
    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    .line 242
    iget-object v6, v6, Lcom/google/protobuf/e;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 243
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    goto :goto_3

    .line 244
    :pswitch_43
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 246
    invoke-static {p1, v8, v9}, Lx6/b0;->k(Ljava/lang/Object;J)F

    move-result v6

    .line 247
    move-object v8, p2

    check-cast v8, Lcom/google/protobuf/e;

    invoke-virtual {v8, v7, v6}, Lcom/google/protobuf/e;->b(IF)V

    goto :goto_3

    .line 248
    :pswitch_44
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 249
    invoke-static {v6}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v8

    .line 250
    invoke-static {p1, v8, v9}, Lx6/b0;->j(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 251
    move-object v6, p2

    check-cast v6, Lcom/google/protobuf/e;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/protobuf/e;->a(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 252
    iget-object v3, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v3, p2, v2}, Lcom/google/protobuf/f;->f(Lcom/google/protobuf/g0;Ljava/util/Map$Entry;)V

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    .line 255
    invoke-virtual {v0, p1}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/d0;->h(Ljava/lang/Object;Lcom/google/protobuf/g0;)V

    goto :goto_5

    .line 256
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w;->F(Ljava/lang/Object;Lcom/google/protobuf/g0;)V

    :goto_5
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

.method public c(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/w;->k:I

    :goto_0
    iget v1, p0, Lcom/google/protobuf/w;->l:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/w;->j:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/w;->E(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v1

    .line 3
    invoke-static {p1, v1, v2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    invoke-interface {v4, v3}, Lcom/google/protobuf/s;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    sget-object v4, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v4, p1, v1, v2, v3}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/w;->j:[I

    array-length v0, v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 7
    iget-object v2, p0, Lcom/google/protobuf/w;->n:Lcom/google/protobuf/o;

    iget-object v3, p0, Lcom/google/protobuf/w;->j:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/protobuf/o;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d0;->d(Ljava/lang/Object;)V

    .line 9
    iget-boolean v0, p0, Lcom/google/protobuf/w;->f:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/f;->e(Ljava/lang/Object;)V

    :cond_3
    return-void
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

    .line 1
    :goto_0
    iget v2, v6, Lcom/google/protobuf/w;->k:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_11

    .line 2
    iget-object v2, v6, Lcom/google/protobuf/w;->j:[I

    aget v12, v2, v10

    .line 3
    iget-object v2, v6, Lcom/google/protobuf/w;->a:[I

    aget v13, v2, v12

    .line 4
    invoke-virtual {v6, v12}, Lcom/google/protobuf/w;->E(I)I

    move-result v14

    .line 5
    iget-object v2, v6, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_1

    if-eq v3, v8, :cond_0

    .line 6
    sget-object v0, Lcom/google/protobuf/w;->s:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v3

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/w;->n(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    .line 8
    :cond_3
    invoke-static {v14}, Lcom/google/protobuf/w;->D(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_f

    const/16 v1, 0x11

    if-eq v0, v1, :cond_f

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_a

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    const/16 v1, 0x31

    if-eq v0, v1, :cond_b

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_6

    .line 9
    :cond_4
    iget-object v0, v6, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    invoke-static {v14}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v1

    invoke-static {v7, v1, v2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/s;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    iget-object v1, v6, Lcom/google/protobuf/w;->b:[Ljava/lang/Object;

    div-int/lit8 v12, v12, 0x3

    mul-int/lit8 v12, v12, 0x2

    aget-object v1, v1, v12

    .line 12
    iget-object v2, v6, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    invoke-interface {v2, v1}, Lcom/google/protobuf/s;->d(Ljava/lang/Object;)Lcom/google/protobuf/q$a;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/google/protobuf/q$a;->c:Lx6/c0;

    .line 14
    iget-object v1, v1, Lx6/c0;->a:Lx6/d0;

    .line 15
    sget-object v2, Lx6/d0;->j:Lx6/d0;

    if-eq v1, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_8

    .line 17
    sget-object v1, Lx6/u;->c:Lx6/u;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lx6/u;->a(Ljava/lang/Class;)Lx6/w;

    move-result-object v1

    .line 19
    :cond_8
    invoke-interface {v1, v2}, Lx6/w;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v11, 0x0

    :cond_9
    :goto_3
    if-nez v11, :cond_10

    return v9

    .line 20
    :cond_a
    invoke-virtual {v6, v7, v13, v12}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 21
    invoke-virtual {v6, v12}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v0

    .line 22
    invoke-static {v14}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v1

    invoke-static {v7, v1, v2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lx6/w;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v9

    .line 24
    :cond_b
    invoke-static {v14}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    .line 26
    :cond_c
    invoke-virtual {v6, v12}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v1

    const/4 v2, 0x0

    .line 27
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 29
    invoke-interface {v1, v3}, Lx6/w;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v11, 0x0

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    if-nez v11, :cond_10

    return v9

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/w;->n(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 31
    invoke-virtual {v6, v12}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v0

    .line 32
    invoke-static {v14}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v1

    invoke-static {v7, v1, v2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lx6/w;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v9

    :cond_10
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 34
    :cond_11
    iget-boolean v0, v6, Lcom/google/protobuf/w;->f:Z

    if-eqz v0, :cond_12

    .line 35
    iget-object v0, v6, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/f;->b(Ljava/lang/Object;)Lcom/google/protobuf/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/h;->i()Z

    move-result v0

    if-nez v0, :cond_12

    return v9

    :cond_12
    return v11
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 2
    iget-object v4, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 3
    invoke-static {v4}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v5

    .line 4
    invoke-static {v4}, Lcom/google/protobuf/w;->D(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 5
    :pswitch_0
    iget-object v4, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v7, v2, 0x2

    aget v4, v4, v7

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    .line 6
    invoke-static {p1, v7, v8}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    .line 7
    invoke-static {p2, v7, v8}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v7

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 8
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 9
    invoke-static {v4, v5}, Lcom/google/protobuf/a0;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 10
    :pswitch_1
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/protobuf/a0;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 12
    :pswitch_2
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Lcom/google/protobuf/a0;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 14
    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 16
    invoke-static {v4, v5}, Lcom/google/protobuf/a0;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 17
    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 18
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 19
    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 21
    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 23
    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 25
    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 27
    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 29
    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 31
    invoke-static {v4, v5}, Lcom/google/protobuf/a0;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 32
    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34
    invoke-static {v4, v5}, Lcom/google/protobuf/a0;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 35
    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 37
    invoke-static {v4, v5}, Lcom/google/protobuf/a0;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 38
    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    invoke-static {p1, v5, v6}, Lx6/b0;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v5, v6}, Lx6/b0;->f(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 40
    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 42
    :pswitch_f
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 44
    :pswitch_10
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 46
    :pswitch_11
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto :goto_2

    .line 48
    :pswitch_12
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto :goto_2

    .line 50
    :pswitch_13
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    invoke-static {p1, v5, v6}, Lx6/b0;->k(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 52
    invoke-static {p2, v5, v6}, Lx6/b0;->k(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 53
    :pswitch_14
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/w;->h(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    invoke-static {p1, v5, v6}, Lx6/b0;->j(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 55
    invoke-static {p2, v5, v6}, Lx6/b0;->j(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    invoke-virtual {v2, p2}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 59
    :cond_4
    iget-boolean v0, p0, Lcom/google/protobuf/w;->f:Z

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/f;->b(Ljava/lang/Object;)Lcom/google/protobuf/h;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/f;->b(Ljava/lang/Object;)Lcom/google/protobuf/h;

    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Lcom/google/protobuf/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    nop

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

.method public f(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/w;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w;->l(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w;->k(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public g(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/protobuf/w;->E(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/google/protobuf/w;->a:[I

    aget v4, v4, v1

    .line 4
    invoke-static {v3}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v5

    .line 5
    invoke-static {v3}, Lcom/google/protobuf/w;->D(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 6
    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 9
    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 23
    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 28
    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->v(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/k;->a(Z)I

    move-result v3

    goto/16 :goto_2

    .line 30
    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 32
    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->x(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 42
    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/w;->w(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 44
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 46
    :pswitch_14
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 53
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 55
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lx6/b0;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/k;->a(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 64
    invoke-static {p1, v5, v6}, Lx6/b0;->k(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 65
    invoke-static {p1, v5, v6}, Lx6/b0;->j(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 66
    invoke-static {v3, v4}, Lcom/google/protobuf/k;->b(J)I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    move v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 67
    iget-object v0, p0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 68
    iget-boolean v1, p0, Lcom/google/protobuf/w;->f:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    .line 69
    iget-object v1, p0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/f;->b(Ljava/lang/Object;)Lcom/google/protobuf/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/h;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0

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

.method public final h(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final j(I)Lx6/w;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/w;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lx6/w;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    sget-object v1, Lx6/u;->c:Lx6/u;

    add-int/lit8 v2, p1, 0x1

    .line 4
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lx6/u;->a(Ljava/lang/Class;)Lx6/w;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/w;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final k(Ljava/lang/Object;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/google/protobuf/w;->s:Lsun/misc/Unsafe;

    const v3, 0xfffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v7, 0x0

    .line 2
    :goto_0
    iget-object v8, v0, Lcom/google/protobuf/w;->a:[I

    array-length v8, v8

    if-ge v4, v8, :cond_14

    .line 3
    invoke-virtual {v0, v4}, Lcom/google/protobuf/w;->E(I)I

    move-result v8

    .line 4
    iget-object v9, v0, Lcom/google/protobuf/w;->a:[I

    aget v9, v9, v4

    .line 5
    invoke-static {v8}, Lcom/google/protobuf/w;->D(I)I

    move-result v10

    const/16 v11, 0x11

    const/4 v12, 0x1

    if-gt v10, v11, :cond_0

    .line 6
    iget-object v11, v0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v13, v4, 0x2

    aget v11, v11, v13

    and-int/2addr v3, v11

    ushr-int/lit8 v13, v11, 0x14

    shl-int/2addr v12, v13

    if-eq v3, v6, :cond_2

    int-to-long v6, v3

    .line 7
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v6

    move v6, v3

    goto :goto_2

    .line 8
    :cond_0
    iget-boolean v11, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v11, :cond_1

    sget-object v11, Lx6/g;->c:Lx6/g;

    .line 9
    iget v11, v11, Lx6/g;->a:I

    if-lt v10, v11, :cond_1

    .line 10
    sget-object v11, Lx6/g;->d:Lx6/g;

    .line 11
    iget v11, v11, Lx6/g;->a:I

    if-gt v10, v11, :cond_1

    .line 12
    iget-object v11, v0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v12, v4, 0x2

    aget v11, v11, v12

    and-int/2addr v3, v11

    move v11, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x0

    .line 13
    :cond_2
    :goto_2
    invoke-static {v8}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v13

    const/4 v3, 0x0

    move v8, v6

    move v15, v7

    const-wide/16 v6, 0x0

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_6

    .line 14
    :pswitch_0
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 15
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/u;

    .line 16
    invoke-virtual {v0, v4}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v6

    .line 17
    invoke-static {v9, v3, v6}, Lcom/google/protobuf/CodedOutputStream;->U(ILcom/google/protobuf/u;Lx6/w;)I

    move-result v3

    goto/16 :goto_5

    .line 18
    :pswitch_1
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 19
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->e0(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 20
    :pswitch_2
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 21
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->c0(II)I

    move-result v3

    goto/16 :goto_5

    .line 22
    :pswitch_3
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v6, 0x0

    .line 23
    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->b0(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 24
    :pswitch_4
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 25
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(II)I

    move-result v3

    goto/16 :goto_5

    .line 26
    :pswitch_5
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 27
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->Q(II)I

    move-result v3

    goto/16 :goto_5

    .line 28
    :pswitch_6
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 29
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->j0(II)I

    move-result v3

    goto/16 :goto_5

    .line 30
    :pswitch_7
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 31
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx6/c;

    .line 32
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->N(ILx6/c;)I

    move-result v3

    goto/16 :goto_5

    .line 33
    :pswitch_8
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 34
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 35
    invoke-virtual {v0, v4}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v6

    invoke-static {v9, v3, v6}, Lcom/google/protobuf/a0;->n(ILjava/lang/Object;Lx6/w;)I

    move-result v3

    goto/16 :goto_5

    .line 36
    :pswitch_9
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 37
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v6, v3, Lx6/c;

    if-eqz v6, :cond_3

    .line 39
    check-cast v3, Lx6/c;

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->N(ILx6/c;)I

    move-result v3

    goto/16 :goto_4

    .line 40
    :cond_3
    check-cast v3, Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->g0(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    .line 41
    :pswitch_a
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    .line 42
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->M(IZ)I

    move-result v3

    goto/16 :goto_5

    .line 43
    :pswitch_b
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 44
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->R(II)I

    move-result v3

    goto/16 :goto_5

    .line 45
    :pswitch_c
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v6, 0x0

    .line 46
    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->S(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 47
    :pswitch_d
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 48
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->V(II)I

    move-result v3

    goto/16 :goto_5

    .line 49
    :pswitch_e
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 50
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->l0(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 51
    :pswitch_f
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 52
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->X(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 53
    :pswitch_10
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 54
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->T(IF)I

    move-result v3

    goto/16 :goto_5

    .line 55
    :pswitch_11
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 56
    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->P(ID)I

    move-result v3

    goto/16 :goto_5

    .line 57
    :pswitch_12
    iget-object v3, v0, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    .line 58
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/google/protobuf/w;->i(I)Ljava/lang/Object;

    move-result-object v7

    .line 59
    invoke-interface {v3, v9, v6, v7}, Lcom/google/protobuf/s;->b(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_5

    .line 60
    :pswitch_13
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 61
    invoke-virtual {v0, v4}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v6

    .line 62
    invoke-static {v9, v3, v6}, Lcom/google/protobuf/a0;->i(ILjava/util/List;Lx6/w;)I

    move-result v3

    goto/16 :goto_5

    .line 63
    :pswitch_14
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 64
    invoke-static {v3}, Lcom/google/protobuf/a0;->s(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 65
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_4

    int-to-long v6, v11

    .line 66
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 67
    :cond_4
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 68
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 69
    :pswitch_15
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 70
    invoke-static {v3}, Lcom/google/protobuf/a0;->q(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 71
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_5

    int-to-long v6, v11

    .line 72
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 73
    :cond_5
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 74
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 75
    :pswitch_16
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 76
    invoke-static {v3}, Lcom/google/protobuf/a0;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 77
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_6

    int-to-long v6, v11

    .line 78
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 79
    :cond_6
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 80
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 81
    :pswitch_17
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 82
    invoke-static {v3}, Lcom/google/protobuf/a0;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 83
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_7

    int-to-long v6, v11

    .line 84
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 85
    :cond_7
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 86
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 87
    :pswitch_18
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 88
    invoke-static {v3}, Lcom/google/protobuf/a0;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 89
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_8

    int-to-long v6, v11

    .line 90
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 91
    :cond_8
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 92
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 93
    :pswitch_19
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 94
    invoke-static {v3}, Lcom/google/protobuf/a0;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 95
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_9

    int-to-long v6, v11

    .line 96
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 97
    :cond_9
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 98
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 99
    :pswitch_1a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 100
    sget-object v6, Lcom/google/protobuf/a0;->a:Ljava/lang/Class;

    .line 101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 102
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_a

    int-to-long v6, v11

    .line 103
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 104
    :cond_a
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 105
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 106
    :pswitch_1b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 107
    invoke-static {v3}, Lcom/google/protobuf/a0;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 108
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_b

    int-to-long v6, v11

    .line 109
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 110
    :cond_b
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 111
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 112
    :pswitch_1c
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 113
    invoke-static {v3}, Lcom/google/protobuf/a0;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 114
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_c

    int-to-long v6, v11

    .line 115
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 116
    :cond_c
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 117
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 118
    :pswitch_1d
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 119
    invoke-static {v3}, Lcom/google/protobuf/a0;->k(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 120
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_d

    int-to-long v6, v11

    .line 121
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 122
    :cond_d
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 123
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto/16 :goto_3

    .line 124
    :pswitch_1e
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 125
    invoke-static {v3}, Lcom/google/protobuf/a0;->x(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 126
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_e

    int-to-long v6, v11

    .line 127
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 128
    :cond_e
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 129
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto :goto_3

    .line 130
    :pswitch_1f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 131
    invoke-static {v3}, Lcom/google/protobuf/a0;->m(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 132
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_f

    int-to-long v6, v11

    .line 133
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 134
    :cond_f
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 135
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto :goto_3

    .line 136
    :pswitch_20
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 137
    invoke-static {v3}, Lcom/google/protobuf/a0;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 138
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_10

    int-to-long v6, v11

    .line 139
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 140
    :cond_10
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 141
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    goto :goto_3

    .line 142
    :pswitch_21
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 143
    invoke-static {v3}, Lcom/google/protobuf/a0;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 144
    iget-boolean v6, v0, Lcom/google/protobuf/w;->i:Z

    if-eqz v6, :cond_11

    int-to-long v6, v11

    .line 145
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 146
    :cond_11
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v6

    .line 147
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v7

    :goto_3
    invoke-static {v7, v6, v3, v5}, La6/h;->g(IIII)I

    move-result v5

    goto/16 :goto_6

    .line 148
    :pswitch_22
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v6, 0x0

    .line 149
    invoke-static {v9, v3, v6}, Lcom/google/protobuf/a0;->r(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_23
    const/4 v3, 0x0

    .line 150
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 151
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->p(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_24
    const/4 v3, 0x0

    .line 152
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 153
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_25
    const/4 v3, 0x0

    .line 154
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 155
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->e(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_26
    const/4 v3, 0x0

    .line 156
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 157
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_27
    const/4 v3, 0x0

    .line 158
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 159
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->u(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    .line 160
    :pswitch_28
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 161
    invoke-static {v9, v3}, Lcom/google/protobuf/a0;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    .line 162
    :pswitch_29
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v6

    .line 163
    invoke-static {v9, v3, v6}, Lcom/google/protobuf/a0;->o(ILjava/util/List;Lx6/w;)I

    move-result v3

    goto/16 :goto_5

    .line 164
    :pswitch_2a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v9, v3}, Lcom/google/protobuf/a0;->t(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    .line 165
    :pswitch_2b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v6, 0x0

    .line 166
    invoke-static {v9, v3, v6}, Lcom/google/protobuf/a0;->a(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2c
    const/4 v3, 0x0

    .line 167
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 168
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->e(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2d
    const/4 v3, 0x0

    .line 169
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 170
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2e
    const/4 v3, 0x0

    .line 171
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 172
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->j(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2f
    const/4 v3, 0x0

    .line 173
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 174
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->w(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_30
    const/4 v3, 0x0

    .line 175
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 176
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->l(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_31
    const/4 v3, 0x0

    .line 177
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 178
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->e(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_32
    const/4 v3, 0x0

    .line 179
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 180
    invoke-static {v9, v6, v3}, Lcom/google/protobuf/a0;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_33
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 181
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/u;

    .line 182
    invoke-virtual {v0, v4}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v6

    .line 183
    invoke-static {v9, v3, v6}, Lcom/google/protobuf/CodedOutputStream;->U(ILcom/google/protobuf/u;Lx6/w;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_34
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 184
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->e0(IJ)I

    move-result v3

    goto/16 :goto_5

    :pswitch_35
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 185
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->c0(II)I

    move-result v3

    goto/16 :goto_5

    :pswitch_36
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const-wide/16 v6, 0x0

    .line 186
    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->b0(IJ)I

    move-result v3

    goto/16 :goto_5

    :pswitch_37
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 187
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(II)I

    move-result v3

    goto/16 :goto_5

    :pswitch_38
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 188
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->Q(II)I

    move-result v3

    goto/16 :goto_5

    :pswitch_39
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 189
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->j0(II)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3a
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 190
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx6/c;

    .line 191
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->N(ILx6/c;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3b
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 192
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 193
    invoke-virtual {v0, v4}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v6

    invoke-static {v9, v3, v6}, Lcom/google/protobuf/a0;->n(ILjava/lang/Object;Lx6/w;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3c
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 194
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 195
    instance-of v6, v3, Lx6/c;

    if-eqz v6, :cond_12

    .line 196
    check-cast v3, Lx6/c;

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->N(ILx6/c;)I

    move-result v3

    goto :goto_4

    .line 197
    :cond_12
    check-cast v3, Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->g0(ILjava/lang/String;)I

    move-result v3

    :goto_4
    add-int/2addr v5, v3

    goto :goto_6

    :pswitch_3d
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    .line 198
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->M(IZ)I

    move-result v3

    goto :goto_5

    :pswitch_3e
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 199
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->R(II)I

    move-result v3

    goto :goto_5

    :pswitch_3f
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const-wide/16 v6, 0x0

    .line 200
    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->S(IJ)I

    move-result v3

    goto :goto_5

    :pswitch_40
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 201
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->V(II)I

    move-result v3

    goto :goto_5

    :pswitch_41
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 202
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->l0(IJ)I

    move-result v3

    goto :goto_5

    :pswitch_42
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 203
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->X(IJ)I

    move-result v3

    goto :goto_5

    :pswitch_43
    and-int v6, v15, v12

    if-eqz v6, :cond_13

    .line 204
    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->T(IF)I

    move-result v3

    goto :goto_5

    :pswitch_44
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 205
    invoke-static {v9, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->P(ID)I

    move-result v3

    :goto_5
    add-int/2addr v5, v3

    :cond_13
    :goto_6
    add-int/lit8 v4, v4, 0x3

    const v3, 0xfffff

    move v6, v8

    move v7, v15

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    .line 206
    iget-object v3, v0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    .line 207
    invoke-virtual {v3, v1}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Lcom/google/protobuf/d0;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v5

    .line 209
    iget-boolean v4, v0, Lcom/google/protobuf/w;->f:Z

    if-eqz v4, :cond_17

    .line 210
    iget-object v4, v0, Lcom/google/protobuf/w;->p:Lcom/google/protobuf/f;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/f;->b(Ljava/lang/Object;)Lcom/google/protobuf/h;

    move-result-object v1

    const/4 v4, 0x0

    .line 211
    :goto_7
    iget-object v5, v1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v5}, Lcom/google/protobuf/c0;->d()I

    move-result v5

    if-ge v4, v5, :cond_15

    .line 212
    iget-object v5, v1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v5, v4}, Lcom/google/protobuf/c0;->c(I)Ljava/util/Map$Entry;

    move-result-object v5

    .line 213
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/h$a;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/protobuf/h;->e(Lcom/google/protobuf/h$a;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 214
    :cond_15
    iget-object v1, v1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v1}, Lcom/google/protobuf/c0;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/h$a;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/h;->e(Lcom/google/protobuf/h$a;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_8

    :cond_16
    add-int/2addr v3, v2

    :cond_17
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

.method public final l(Ljava/lang/Object;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/w;->s:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/w;->a:[I

    array-length v4, v4

    if-ge v2, v4, :cond_12

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/protobuf/w;->E(I)I

    move-result v4

    .line 4
    invoke-static {v4}, Lcom/google/protobuf/w;->D(I)I

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/google/protobuf/w;->a:[I

    aget v6, v6, v2

    .line 6
    invoke-static {v4}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v7

    .line 7
    sget-object v4, Lx6/g;->c:Lx6/g;

    .line 8
    iget v4, v4, Lx6/g;->a:I

    if-lt v5, v4, :cond_0

    .line 9
    sget-object v4, Lx6/g;->d:Lx6/g;

    .line 10
    iget v4, v4, Lx6/g;->a:I

    if-gt v5, v4, :cond_0

    .line 11
    iget-object v4, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v9, v2, 0x2

    aget v4, v4, v9

    const v9, 0xfffff

    and-int/2addr v4, v9

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 12
    :pswitch_0
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 13
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/u;

    .line 14
    invoke-virtual {p0, v2}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v5

    .line 15
    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->U(ILcom/google/protobuf/u;Lx6/w;)I

    move-result v4

    goto/16 :goto_3

    .line 16
    :pswitch_1
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 17
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->e0(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 18
    :pswitch_2
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 19
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->c0(II)I

    move-result v4

    goto/16 :goto_3

    .line 20
    :pswitch_3
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 21
    invoke-static {v6, v9, v10}, Lcom/google/protobuf/CodedOutputStream;->b0(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 22
    :pswitch_4
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 23
    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(II)I

    move-result v4

    goto/16 :goto_3

    .line 24
    :pswitch_5
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 25
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->Q(II)I

    move-result v4

    goto/16 :goto_3

    .line 26
    :pswitch_6
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 27
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->j0(II)I

    move-result v4

    goto/16 :goto_3

    .line 28
    :pswitch_7
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 29
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx6/c;

    .line 30
    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->N(ILx6/c;)I

    move-result v4

    goto/16 :goto_3

    .line 31
    :pswitch_8
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 32
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 33
    invoke-virtual {p0, v2}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/a0;->n(ILjava/lang/Object;Lx6/w;)I

    move-result v4

    goto/16 :goto_3

    .line 34
    :pswitch_9
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 35
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 36
    instance-of v5, v4, Lx6/c;

    if-eqz v5, :cond_1

    .line 37
    check-cast v4, Lx6/c;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->N(ILx6/c;)I

    move-result v4

    goto/16 :goto_3

    .line 38
    :cond_1
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->g0(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    .line 39
    :pswitch_a
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    .line 40
    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->M(IZ)I

    move-result v4

    goto/16 :goto_3

    .line 41
    :pswitch_b
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 42
    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->R(II)I

    move-result v4

    goto/16 :goto_3

    .line 43
    :pswitch_c
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 44
    invoke-static {v6, v9, v10}, Lcom/google/protobuf/CodedOutputStream;->S(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 45
    :pswitch_d
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 46
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->y(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->V(II)I

    move-result v4

    goto/16 :goto_3

    .line 47
    :pswitch_e
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 48
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->l0(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 49
    :pswitch_f
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 50
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->z(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->X(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 51
    :pswitch_10
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    .line 52
    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->T(IF)I

    move-result v4

    goto/16 :goto_3

    .line 53
    :pswitch_11
    invoke-virtual {p0, p1, v6, v2}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 54
    invoke-static {v6, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->P(ID)I

    move-result v4

    goto/16 :goto_3

    .line 55
    :pswitch_12
    iget-object v4, p0, Lcom/google/protobuf/w;->q:Lcom/google/protobuf/s;

    .line 56
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/google/protobuf/w;->i(I)Ljava/lang/Object;

    move-result-object v7

    .line 57
    invoke-interface {v4, v6, v5, v7}, Lcom/google/protobuf/s;->b(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    .line 58
    :pswitch_13
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v5

    .line 59
    invoke-static {v6, v4, v5}, Lcom/google/protobuf/a0;->i(ILjava/util/List;Lx6/w;)I

    move-result v4

    goto/16 :goto_3

    .line 60
    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 61
    invoke-static {v5}, Lcom/google/protobuf/a0;->s(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 62
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_2

    int-to-long v7, v4

    .line 63
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 64
    :cond_2
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 65
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 66
    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 67
    invoke-static {v5}, Lcom/google/protobuf/a0;->q(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 68
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_3

    int-to-long v7, v4

    .line 69
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 70
    :cond_3
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 71
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 72
    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 73
    invoke-static {v5}, Lcom/google/protobuf/a0;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 74
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_4

    int-to-long v7, v4

    .line 75
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 76
    :cond_4
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 77
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 78
    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 79
    invoke-static {v5}, Lcom/google/protobuf/a0;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 80
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_5

    int-to-long v7, v4

    .line 81
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 82
    :cond_5
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 83
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 84
    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 85
    invoke-static {v5}, Lcom/google/protobuf/a0;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 86
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_6

    int-to-long v7, v4

    .line 87
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 88
    :cond_6
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 89
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 90
    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 91
    invoke-static {v5}, Lcom/google/protobuf/a0;->v(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 92
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_7

    int-to-long v7, v4

    .line 93
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 94
    :cond_7
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 95
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 96
    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    sget-object v7, Lcom/google/protobuf/a0;->a:Ljava/lang/Class;

    .line 98
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 99
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_8

    int-to-long v7, v4

    .line 100
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 101
    :cond_8
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 102
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 103
    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 104
    invoke-static {v5}, Lcom/google/protobuf/a0;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 105
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_9

    int-to-long v7, v4

    .line 106
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 107
    :cond_9
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 108
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 109
    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 110
    invoke-static {v5}, Lcom/google/protobuf/a0;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 111
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_a

    int-to-long v7, v4

    .line 112
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 113
    :cond_a
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 114
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 115
    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    invoke-static {v5}, Lcom/google/protobuf/a0;->k(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 117
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_b

    int-to-long v7, v4

    .line 118
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 119
    :cond_b
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 120
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto/16 :goto_2

    .line 121
    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 122
    invoke-static {v5}, Lcom/google/protobuf/a0;->x(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 123
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_c

    int-to-long v7, v4

    .line 124
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 125
    :cond_c
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 126
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto :goto_2

    .line 127
    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 128
    invoke-static {v5}, Lcom/google/protobuf/a0;->m(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 129
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_d

    int-to-long v7, v4

    .line 130
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 131
    :cond_d
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 132
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto :goto_2

    .line 133
    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 134
    invoke-static {v5}, Lcom/google/protobuf/a0;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 135
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_e

    int-to-long v7, v4

    .line 136
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 137
    :cond_e
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 138
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    goto :goto_2

    .line 139
    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 140
    invoke-static {v5}, Lcom/google/protobuf/a0;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 141
    iget-boolean v7, p0, Lcom/google/protobuf/w;->i:Z

    if-eqz v7, :cond_f

    int-to-long v7, v4

    .line 142
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 143
    :cond_f
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v4

    .line 144
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result v6

    :goto_2
    invoke-static {v6, v4, v5, v3}, La6/h;->g(IIII)I

    move-result v3

    goto/16 :goto_4

    .line 145
    :pswitch_22
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->r(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 146
    :pswitch_23
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 147
    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->p(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 148
    :pswitch_24
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 149
    :pswitch_25
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->e(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 150
    :pswitch_26
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 151
    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 152
    :pswitch_27
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 153
    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->u(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 154
    :pswitch_28
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 155
    invoke-static {v6, v4}, Lcom/google/protobuf/a0;->b(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_3

    .line 156
    :pswitch_29
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v5

    .line 157
    invoke-static {v6, v4, v5}, Lcom/google/protobuf/a0;->o(ILjava/util/List;Lx6/w;)I

    move-result v4

    goto/16 :goto_3

    .line 158
    :pswitch_2a
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/a0;->t(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_3

    .line 159
    :pswitch_2b
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->a(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 160
    :pswitch_2c
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->e(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 161
    :pswitch_2d
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 162
    :pswitch_2e
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 163
    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->j(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 164
    :pswitch_2f
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->w(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 165
    :pswitch_30
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->l(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 166
    :pswitch_31
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->e(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 167
    :pswitch_32
    invoke-static {p1, v7, v8}, Lcom/google/protobuf/w;->p(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lcom/google/protobuf/a0;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 168
    :pswitch_33
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 169
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/u;

    .line 170
    invoke-virtual {p0, v2}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v5

    .line 171
    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->U(ILcom/google/protobuf/u;Lx6/w;)I

    move-result v4

    goto/16 :goto_3

    .line 172
    :pswitch_34
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 173
    invoke-static {p1, v7, v8}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->e0(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 174
    :pswitch_35
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 175
    invoke-static {p1, v7, v8}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->c0(II)I

    move-result v4

    goto/16 :goto_3

    .line 176
    :pswitch_36
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 177
    invoke-static {v6, v9, v10}, Lcom/google/protobuf/CodedOutputStream;->b0(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 178
    :pswitch_37
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 179
    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(II)I

    move-result v4

    goto/16 :goto_3

    .line 180
    :pswitch_38
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 181
    invoke-static {p1, v7, v8}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->Q(II)I

    move-result v4

    goto/16 :goto_3

    .line 182
    :pswitch_39
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 183
    invoke-static {p1, v7, v8}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->j0(II)I

    move-result v4

    goto/16 :goto_3

    .line 184
    :pswitch_3a
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 185
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx6/c;

    .line 186
    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->N(ILx6/c;)I

    move-result v4

    goto/16 :goto_3

    .line 187
    :pswitch_3b
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 188
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 189
    invoke-virtual {p0, v2}, Lcom/google/protobuf/w;->j(I)Lx6/w;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/a0;->n(ILjava/lang/Object;Lx6/w;)I

    move-result v4

    goto/16 :goto_3

    .line 190
    :pswitch_3c
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 191
    invoke-static {p1, v7, v8}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 192
    instance-of v5, v4, Lx6/c;

    if-eqz v5, :cond_10

    .line 193
    check-cast v4, Lx6/c;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->N(ILx6/c;)I

    move-result v4

    goto/16 :goto_3

    .line 194
    :cond_10
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->g0(ILjava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 195
    :pswitch_3d
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    .line 196
    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->M(IZ)I

    move-result v4

    goto :goto_3

    .line 197
    :pswitch_3e
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 198
    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->R(II)I

    move-result v4

    goto :goto_3

    .line 199
    :pswitch_3f
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 200
    invoke-static {v6, v9, v10}, Lcom/google/protobuf/CodedOutputStream;->S(IJ)I

    move-result v4

    goto :goto_3

    .line 201
    :pswitch_40
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 202
    invoke-static {p1, v7, v8}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->V(II)I

    move-result v4

    goto :goto_3

    .line 203
    :pswitch_41
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 204
    invoke-static {p1, v7, v8}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->l0(IJ)I

    move-result v4

    goto :goto_3

    .line 205
    :pswitch_42
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 206
    invoke-static {p1, v7, v8}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->X(IJ)I

    move-result v4

    goto :goto_3

    .line 207
    :pswitch_43
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    .line 208
    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->T(IF)I

    move-result v4

    goto :goto_3

    .line 209
    :pswitch_44
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 210
    invoke-static {v6, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->P(ID)I

    move-result v4

    :goto_3
    add-int/2addr v3, v4

    :cond_11
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 211
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/w;->o:Lcom/google/protobuf/d0;

    .line 212
    invoke-virtual {v0, p1}, Lcom/google/protobuf/d0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 213
    invoke-virtual {v0, p1}, Lcom/google/protobuf/d0;->b(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    return p1

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

.method public final m(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v1, p2, 0x2

    aget v1, v0, v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_11

    add-int/2addr p2, v7

    .line 2
    aget p2, v0, p2

    .line 3
    invoke-static {p2}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v0

    .line 4
    invoke-static {p2}, Lcom/google/protobuf/w;->D(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6
    :pswitch_0
    invoke-static {p1, v0, v1}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6

    .line 7
    :pswitch_1
    invoke-static {p1, v0, v1}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6

    .line 8
    :pswitch_2
    invoke-static {p1, v0, v1}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v6, 0x1

    :cond_2
    return v6

    .line 9
    :pswitch_3
    invoke-static {p1, v0, v1}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6

    .line 10
    :pswitch_4
    invoke-static {p1, v0, v1}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v6, 0x1

    :cond_4
    return v6

    .line 11
    :pswitch_5
    invoke-static {p1, v0, v1}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v6, 0x1

    :cond_5
    return v6

    .line 12
    :pswitch_6
    invoke-static {p1, v0, v1}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v6, 0x1

    :cond_6
    return v6

    .line 13
    :pswitch_7
    sget-object p2, Lx6/c;->b:Lx6/c;

    invoke-static {p1, v0, v1}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lx6/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v7

    return p1

    .line 14
    :pswitch_8
    invoke-static {p1, v0, v1}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v6, 0x1

    :cond_7
    return v6

    .line 15
    :pswitch_9
    invoke-static {p1, v0, v1}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 16
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v7

    return p1

    .line 18
    :cond_8
    instance-of p2, p1, Lx6/c;

    if-eqz p2, :cond_9

    .line 19
    sget-object p2, Lx6/c;->b:Lx6/c;

    invoke-virtual {p2, p1}, Lx6/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v7

    return p1

    .line 20
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 21
    :pswitch_a
    invoke-static {p1, v0, v1}, Lx6/b0;->f(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 22
    :pswitch_b
    invoke-static {p1, v0, v1}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v6, 0x1

    :cond_a
    return v6

    .line 23
    :pswitch_c
    invoke-static {p1, v0, v1}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_b

    const/4 v6, 0x1

    :cond_b
    return v6

    .line 24
    :pswitch_d
    invoke-static {p1, v0, v1}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c

    const/4 v6, 0x1

    :cond_c
    return v6

    .line 25
    :pswitch_e
    invoke-static {p1, v0, v1}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_d

    const/4 v6, 0x1

    :cond_d
    return v6

    .line 26
    :pswitch_f
    invoke-static {p1, v0, v1}, Lx6/b0;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    const/4 v6, 0x1

    :cond_e
    return v6

    .line 27
    :pswitch_10
    invoke-static {p1, v0, v1}, Lx6/b0;->k(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_f

    const/4 v6, 0x1

    :cond_f
    return v6

    .line 28
    :pswitch_11
    invoke-static {p1, v0, v1}, Lx6/b0;->j(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_10

    const/4 v6, 0x1

    :cond_10
    return v6

    :cond_11
    ushr-int/lit8 p2, v1, 0x14

    shl-int p2, v7, p2

    .line 29
    invoke-static {p1, v2, v3}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_12

    const/4 v6, 0x1

    :cond_12
    return v6

    nop

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

.method public final n(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lx6/b0;->l(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v0, v0, v1

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/w;->m(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1, v0, v1}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-static {p2, v0, v1}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v2, p2}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v0, v1, p2}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    sget-object v2, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v2, p1, v0, v1, p2}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/w;->B(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v1, v0, v1

    .line 2
    aget v0, v0, p3

    .line 3
    invoke-static {v1}, Lcom/google/protobuf/w;->u(I)J

    move-result-wide v1

    .line 4
    invoke-virtual {p0, p2, v0, p3}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/w;->o(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {p1, v1, v2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 7
    :cond_1
    invoke-static {p2, v1, v2}, Lx6/b0;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 8
    invoke-static {v3, p2}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    sget-object v3, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v3, p1, v1, v2, p2}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/w;->C(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 11
    sget-object v3, Lx6/b0;->e:Lx6/b0$e;

    invoke-virtual {v3, p1, v1, v2, p2}, Lx6/b0$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/w;->C(Ljava/lang/Object;II)V

    :cond_3
    :goto_0
    return-void
.end method
