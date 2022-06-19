.class public Lcom/googlecode/mp4parser/a/b;
.super Lcom/googlecode/mp4parser/a/e;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/a/d/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/a/b$a;
    }
.end annotation


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mp4parser/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/b/a/a/ag;[Lcom/b/a/d;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 42
    invoke-direct/range {p0 .. p3}, Lcom/googlecode/mp4parser/a/e;-><init>(Ljava/lang/String;Lcom/b/a/a/ag;[Lcom/b/a/d;)V

    const-string v2, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]"

    .line 44
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/z;

    .line 45
    sget-boolean v3, Lcom/googlecode/mp4parser/a/b;->d:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/b/a/a/z;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cenc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/b/a/a/z;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cbc1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Track must be CENC (cenc or cbc1) encrypted"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 47
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/googlecode/mp4parser/a/b;->h:Ljava/util/List;

    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->a()Lcom/b/a/a/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/a/ah;->a()J

    move-result-wide v2

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->getParent()Lcom/b/a/a/e;

    move-result-object v4

    const-class v5, Lcom/b/a/a/a/a;

    invoke-interface {v4, v5}, Lcom/b/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]"

    if-lez v4, :cond_f

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->getParent()Lcom/b/a/a/e;

    move-result-object v4

    check-cast v4, Lcom/b/a/a/b;

    invoke-interface {v4}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object v4

    const-class v9, Lcom/b/a/a/a/b;

    invoke-interface {v4, v9}, Lcom/b/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/b/a/a/a/b;

    .line 53
    const-class v10, Lcom/b/a/a/a/e;

    invoke-virtual {v9, v10}, Lcom/b/a/a/a/b;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 54
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/b/a/a/a/e;

    .line 55
    invoke-virtual {v11}, Lcom/b/a/a/a/e;->a()Lcom/b/a/a/a/f;

    move-result-object v12

    invoke-virtual {v12}, Lcom/b/a/a/a/f;->b()J

    move-result-wide v12

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    .line 56
    invoke-static {v1, v5}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v12

    check-cast v12, Lcom/mp4parser/a/a/b;

    .line 57
    invoke-virtual {v12}, Lcom/mp4parser/a/a/b;->b()Ljava/util/UUID;

    move-result-object v13

    iput-object v13, v0, Lcom/googlecode/mp4parser/a/b;->i:Ljava/util/UUID;

    .line 60
    invoke-virtual {v11}, Lcom/b/a/a/a/e;->a()Lcom/b/a/a/a/f;

    move-result-object v13

    invoke-virtual {v13}, Lcom/b/a/a/a/f;->a()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->getParent()Lcom/b/a/a/e;

    move-result-object v13

    check-cast v13, Lcom/b/a/a/b;

    invoke-interface {v13}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object v13

    .line 62
    invoke-virtual {v11}, Lcom/b/a/a/a/e;->a()Lcom/b/a/a/a/f;

    move-result-object v14

    invoke-virtual {v14}, Lcom/b/a/a/a/f;->c()J

    move-result-wide v14

    goto :goto_3

    :cond_5
    move-object v13, v9

    const-wide/16 v14, 0x0

    .line 68
    :goto_3
    new-instance v6, Lcom/googlecode/mp4parser/a/b$a;

    invoke-direct {v6, v0, v11}, Lcom/googlecode/mp4parser/a/b$a;-><init>(Lcom/googlecode/mp4parser/a/b;Lcom/b/a/a/e;)V

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/a/b$a;->a()Lcom/googlecode/mp4parser/a/b$a;

    move-result-object v6

    .line 1221
    iget-object v7, v6, Lcom/googlecode/mp4parser/a/b$a;->b:Lcom/mp4parser/iso14496/a/a;

    .line 2217
    iget-object v6, v6, Lcom/googlecode/mp4parser/a/b$a;->a:Lcom/mp4parser/iso14496/a/b;

    .line 72
    sget-boolean v16, Lcom/googlecode/mp4parser/a/b;->d:Z

    if-nez v16, :cond_7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 73
    :cond_7
    :goto_4
    invoke-virtual {v7}, Lcom/mp4parser/iso14496/a/a;->b()[J

    move-result-object v7

    if-nez v16, :cond_9

    .line 74
    array-length v8, v7

    move-wide/from16 v17, v2

    const-class v2, Lcom/b/a/a/a/g;

    invoke-virtual {v11, v2}, Lcom/b/a/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v8, v2, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    move-wide/from16 v17, v2

    :goto_5
    if-nez v16, :cond_b

    if-eqz v6, :cond_a

    goto :goto_6

    .line 75
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 77
    :cond_b
    :goto_6
    const-class v2, Lcom/b/a/a/a/g;

    invoke-virtual {v11, v2}, Lcom/b/a/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 79
    :goto_7
    array-length v11, v7

    if-lt v3, v11, :cond_c

    move-wide/from16 v2, v17

    goto/16 :goto_2

    .line 80
    :cond_c
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/b/a/a/a/g;

    invoke-virtual {v11}, Lcom/b/a/a/a/g;->a()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 81
    aget-wide v19, v7, v3

    move-object/from16 p3, v2

    move-object/from16 v22, v4

    move v2, v8

    move-object/from16 v16, v9

    move-object/from16 v21, v10

    const-wide/16 v9, 0x0

    :goto_8
    add-int v4, v8, v11

    if-lt v2, v4, :cond_e

    move-object/from16 v23, v7

    move/from16 v24, v8

    add-long v7, v14, v19

    .line 87
    invoke-interface {v13, v7, v8, v9, v10}, Lcom/b/a/a/e;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v7

    move/from16 v8, v24

    :goto_9
    if-lt v8, v4, :cond_d

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p3

    move v8, v4

    move-object/from16 v9, v16

    move-object/from16 v10, v21

    move-object/from16 v4, v22

    move-object/from16 v7, v23

    goto :goto_7

    .line 89
    :cond_d
    invoke-virtual {v6, v8}, Lcom/mp4parser/iso14496/a/b;->a(I)S

    move-result v2

    .line 90
    iget-object v9, v0, Lcom/googlecode/mp4parser/a/b;->h:Ljava/util/List;

    .line 91
    invoke-virtual {v12}, Lcom/mp4parser/a/a/b;->a()I

    move-result v10

    move/from16 v25, v3

    int-to-long v2, v2

    invoke-static {v10, v7, v2, v3}, Lcom/googlecode/mp4parser/a/b;->a(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/a/a/a;

    move-result-object v2

    .line 90
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v25

    goto :goto_9

    :cond_e
    move/from16 v25, v3

    move-object/from16 v23, v7

    move/from16 v24, v8

    .line 85
    invoke-virtual {v6, v2}, Lcom/mp4parser/iso14496/a/b;->a(I)S

    move-result v3

    int-to-long v3, v3

    add-long/2addr v9, v3

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v25

    goto :goto_8

    .line 103
    :cond_f
    invoke-static {v1, v5}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v2

    check-cast v2, Lcom/mp4parser/a/a/b;

    .line 104
    invoke-virtual {v2}, Lcom/mp4parser/a/a/b;->b()Ljava/util/UUID;

    move-result-object v3

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/b;->i:Ljava/util/UUID;

    const-string v3, "mdia[0]/minf[0]/stbl[0]/stco[0]"

    .line 105
    invoke-static {v1, v3}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/c;

    if-nez v3, :cond_10

    const-string v3, "mdia[0]/minf[0]/stbl[0]/co64[0]"

    .line 108
    invoke-static {v1, v3}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/c;

    .line 110
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->c()Lcom/b/a/a/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/a/x;->d()Lcom/b/a/a/y;

    move-result-object v4

    invoke-virtual {v3}, Lcom/b/a/a/c;->a()[J

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v4, v3}, Lcom/b/a/a/y;->a(I)[J

    move-result-object v3

    .line 113
    new-instance v4, Lcom/googlecode/mp4parser/a/b$a;

    const-string v5, "mdia[0]/minf[0]/stbl[0]"

    invoke-static {v1, v5}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v5

    check-cast v5, Lcom/b/a/a/e;

    invoke-direct {v4, v0, v5}, Lcom/googlecode/mp4parser/a/b$a;-><init>(Lcom/googlecode/mp4parser/a/b;Lcom/b/a/a/e;)V

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/a/b$a;->a()Lcom/googlecode/mp4parser/a/b$a;

    move-result-object v4

    .line 114
    invoke-static {v4}, Lcom/googlecode/mp4parser/a/b$a;->a(Lcom/googlecode/mp4parser/a/b$a;)Lcom/mp4parser/iso14496/a/a;

    move-result-object v5

    .line 115
    invoke-static {v4}, Lcom/googlecode/mp4parser/a/b$a;->b(Lcom/googlecode/mp4parser/a/b$a;)Lcom/mp4parser/iso14496/a/b;

    move-result-object v4

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->getParent()Lcom/b/a/a/e;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/r;

    invoke-virtual {v1}, Lcom/b/a/a/r;->getParent()Lcom/b/a/a/e;

    move-result-object v1

    .line 119
    invoke-virtual {v5}, Lcom/mp4parser/iso14496/a/a;->b()[J

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    .line 120
    invoke-virtual {v5}, Lcom/mp4parser/iso14496/a/a;->b()[J

    move-result-object v3

    const/4 v5, 0x0

    aget-wide v6, v3, v5

    .line 122
    invoke-virtual {v4}, Lcom/mp4parser/iso14496/a/b;->b()I

    move-result v3

    if-lez v3, :cond_11

    .line 123
    invoke-virtual {v4}, Lcom/mp4parser/iso14496/a/b;->c()I

    move-result v3

    invoke-virtual {v4}, Lcom/mp4parser/iso14496/a/b;->b()I

    move-result v8

    mul-int v3, v3, v8

    add-int/2addr v3, v5

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 125
    :goto_a
    invoke-virtual {v4}, Lcom/mp4parser/iso14496/a/b;->c()I

    move-result v8

    if-lt v5, v8, :cond_13

    :goto_b
    int-to-long v8, v3

    .line 129
    invoke-interface {v1, v6, v7, v8, v9}, Lcom/b/a/a/e;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v1, 0x0

    .line 130
    :goto_c
    invoke-virtual {v4}, Lcom/mp4parser/iso14496/a/b;->c()I

    move-result v3

    if-lt v1, v3, :cond_12

    return-void

    .line 131
    :cond_12
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/b;->h:Ljava/util/List;

    .line 132
    invoke-virtual {v2}, Lcom/mp4parser/a/a/b;->a()I

    move-result v5

    invoke-virtual {v4, v1}, Lcom/mp4parser/iso14496/a/b;->a(I)S

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v8, v6, v7}, Lcom/googlecode/mp4parser/a/b;->a(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/a/a/a;

    move-result-object v5

    .line 131
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 126
    :cond_13
    sget-object v8, Lcom/mp4parser/iso14496/a/b;->h:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v8, v4, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v8

    .line 3132
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v8}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v8, v4, Lcom/mp4parser/iso14496/a/b;->b:[S

    array-length v8, v8

    new-array v8, v8, [S

    .line 3133
    iget-object v9, v4, Lcom/mp4parser/iso14496/a/b;->b:[S

    iget-object v10, v4, Lcom/mp4parser/iso14496/a/b;->b:[S

    array-length v10, v10

    const/4 v11, 0x0

    invoke-static {v9, v11, v8, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    aget-short v8, v8, v5

    add-int/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_14
    const/4 v11, 0x0

    .line 136
    invoke-virtual {v5}, Lcom/mp4parser/iso14496/a/a;->b()[J

    move-result-object v6

    array-length v6, v6

    array-length v7, v3

    if-ne v6, v7, :cond_19

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 138
    :goto_d
    array-length v8, v3

    if-lt v6, v8, :cond_15

    return-void

    .line 139
    :cond_15
    invoke-virtual {v5}, Lcom/mp4parser/iso14496/a/a;->b()[J

    move-result-object v8

    aget-wide v9, v8, v6

    .line 141
    invoke-virtual {v4}, Lcom/mp4parser/iso14496/a/b;->b()I

    move-result v8

    if-lez v8, :cond_16

    .line 142
    invoke-virtual {v4}, Lcom/mp4parser/iso14496/a/b;->c()I

    move-result v8

    int-to-long v12, v8

    aget-wide v14, v3, v6

    mul-long v12, v12, v14

    const-wide/16 v14, 0x0

    add-long/2addr v12, v14

    goto :goto_f

    :cond_16
    const-wide/16 v14, 0x0

    move-wide v12, v14

    const/4 v8, 0x0

    :goto_e
    int-to-long v14, v8

    .line 144
    aget-wide v16, v3, v6

    cmp-long v18, v14, v16

    if-ltz v18, :cond_18

    .line 149
    :goto_f
    invoke-interface {v1, v9, v10, v12, v13}, Lcom/b/a/a/e;->a(JJ)Ljava/nio/ByteBuffer;

    move-result-object v14

    const/4 v8, 0x0

    :goto_10
    int-to-long v9, v8

    .line 150
    aget-wide v12, v3, v6

    cmp-long v15, v9, v12

    if-ltz v15, :cond_17

    int-to-long v7, v7

    .line 157
    aget-wide v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v7, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_17
    add-int v9, v7, v8

    .line 151
    invoke-virtual {v4, v9}, Lcom/mp4parser/iso14496/a/b;->a(I)S

    move-result v9

    int-to-long v9, v9

    .line 152
    iget-object v12, v0, Lcom/googlecode/mp4parser/a/b;->h:Ljava/util/List;

    .line 154
    invoke-virtual {v2}, Lcom/mp4parser/a/a/b;->a()I

    move-result v13

    invoke-static {v13, v14, v9, v10}, Lcom/googlecode/mp4parser/a/b;->a(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/a/a/a;

    move-result-object v9

    .line 152
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_18
    add-int v14, v7, v8

    .line 145
    invoke-virtual {v4, v14}, Lcom/mp4parser/iso14496/a/b;->a(I)S

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 160
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Number of saio offsets must be either 1 or number of chunks"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/a/a/a;
    .locals 4

    .line 166
    new-instance v0, Lcom/mp4parser/a/a/a;

    invoke-direct {v0}, Lcom/mp4parser/a/a/a;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    .line 168
    new-array v1, p0, [B

    iput-object v1, v0, Lcom/mp4parser/a/a/a;->a:[B

    .line 169
    iget-object v1, v0, Lcom/mp4parser/a/a/a;->a:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    int-to-long v1, p0

    cmp-long p0, p2, v1

    if-lez p0, :cond_1

    .line 171
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 172
    new-array p0, p0, [Lcom/mp4parser/a/a/a$j;

    iput-object p0, v0, Lcom/mp4parser/a/a/a;->b:[Lcom/mp4parser/a/a/a$j;

    const/4 p0, 0x0

    .line 173
    :goto_0
    iget-object p2, v0, Lcom/mp4parser/a/a/a;->b:[Lcom/mp4parser/a/a/a$j;

    array-length p2, p2

    if-lt p0, p2, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    iget-object p2, v0, Lcom/mp4parser/a/a/a;->b:[Lcom/mp4parser/a/a/a$j;

    .line 175
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result p3

    .line 176
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 174
    invoke-virtual {v0, p3, v1, v2}, Lcom/mp4parser/a/a/a;->a(IJ)Lcom/mp4parser/a/a/a$j;

    move-result-object p3

    aput-object p3, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enc("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/googlecode/mp4parser/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mp4parser/a/a/a;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CencMp4TrackImpl{handler=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/a/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
