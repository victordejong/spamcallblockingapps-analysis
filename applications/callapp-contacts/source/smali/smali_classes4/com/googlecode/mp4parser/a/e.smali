.class public Lcom/googlecode/mp4parser/a/e;
.super Lcom/googlecode/mp4parser/a/a;
.source "SourceFile"


# static fields
.field static final synthetic g:Z = true


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/f;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/b/a/a/ag;

.field f:[Lcom/b/a/d;

.field private h:Lcom/b/a/a/v;

.field private i:[J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:[J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/googlecode/mp4parser/a/h;

.field private n:Ljava/lang/String;

.field private o:Lcom/b/a/a/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/b/a/a/ag;[Lcom/b/a/d;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 61
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/a/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 46
    iput-object v3, v0, Lcom/googlecode/mp4parser/a/e;->k:[J

    .line 48
    new-instance v4, Lcom/googlecode/mp4parser/a/h;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/a/h;-><init>()V

    iput-object v4, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    .line 50
    iput-object v3, v0, Lcom/googlecode/mp4parser/a/e;->o:Lcom/b/a/a/ac;

    .line 62
    iput-object v1, v0, Lcom/googlecode/mp4parser/a/e;->e:Lcom/b/a/a/ag;

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->a()Lcom/b/a/a/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/a/ah;->a()J

    move-result-wide v4

    .line 64
    new-instance v6, Lcom/b/a/a/b/a;

    invoke-direct {v6, v1, v2}, Lcom/b/a/a/b/a;-><init>(Lcom/b/a/a/ag;[Lcom/b/a/d;)V

    iput-object v6, v0, Lcom/googlecode/mp4parser/a/e;->d:Ljava/util/List;

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->d()Lcom/b/a/a/o;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/a/o;->a()Lcom/b/a/a/q;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/a/q;->a()Lcom/b/a/a/x;

    move-result-object v6

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->d()Lcom/b/a/a/o;

    move-result-object v7

    .line 1053
    invoke-virtual {v7}, Lcom/b/a/a/o;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/b/a/a/b;

    .line 1054
    instance-of v9, v8, Lcom/b/a/a/m;

    if-eqz v9, :cond_22

    .line 1055
    move-object v3, v8

    check-cast v3, Lcom/b/a/a/m;

    .line 67
    :goto_1
    invoke-virtual {v3}, Lcom/b/a/a/m;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/e;->n:Ljava/lang/String;

    .line 69
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/e;->j:Ljava/util/List;

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/e;->l:Ljava/util/List;

    .line 73
    invoke-virtual {v6}, Lcom/b/a/a/x;->f()Lcom/b/a/a/af;

    move-result-object v3

    sget-object v7, Lcom/b/a/a/af;->d:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v7, v3, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v7

    .line 1080
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v7}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v3, v3, Lcom/b/a/a/af;->a:Ljava/util/List;

    .line 73
    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {v6}, Lcom/b/a/a/x;->h()Lcom/b/a/a/d;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->j:Ljava/util/List;

    invoke-virtual {v6}, Lcom/b/a/a/x;->h()Lcom/b/a/a/d;

    move-result-object v7

    sget-object v9, Lcom/b/a/a/d;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v9, v7, v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v9

    .line 2058
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v9}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v7, v7, Lcom/b/a/a/d;->a:Ljava/util/List;

    .line 75
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_1
    invoke-virtual {v6}, Lcom/b/a/a/x;->i()Lcom/b/a/a/u;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 78
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->l:Ljava/util/List;

    invoke-virtual {v6}, Lcom/b/a/a/x;->i()Lcom/b/a/a/u;

    move-result-object v7

    sget-object v9, Lcom/b/a/a/u;->b:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v9, v7, v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v9

    .line 2140
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v9}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v7, v7, Lcom/b/a/a/u;->a:Ljava/util/List;

    .line 78
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_2
    invoke-virtual {v6}, Lcom/b/a/a/x;->g()Lcom/b/a/a/ae;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {v6}, Lcom/b/a/a/x;->g()Lcom/b/a/a/ae;

    move-result-object v3

    sget-object v7, Lcom/b/a/a/ae;->b:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v7, v3, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v7

    .line 3047
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v7}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v3, v3, Lcom/b/a/a/ae;->a:[J

    .line 81
    iput-object v3, v0, Lcom/googlecode/mp4parser/a/e;->k:[J

    :cond_3
    const-string v9, "subs"

    .line 83
    invoke-static {v6, v9}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/ac;

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/e;->o:Lcom/b/a/a/ac;

    .line 86
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->getParent()Lcom/b/a/a/e;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/b;

    invoke-interface {v3}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object v3

    const-class v7, Lcom/b/a/a/a/b;

    invoke-interface {v3, v7}, Lcom/b/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    array-length v11, v2

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v11, :cond_21

    .line 92
    invoke-virtual {v6}, Lcom/b/a/a/x;->a()Lcom/b/a/a/v;

    move-result-object v2

    iput-object v2, v0, Lcom/googlecode/mp4parser/a/e;->h:Lcom/b/a/a/v;

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->getParent()Lcom/b/a/a/e;

    move-result-object v2

    const-class v3, Lcom/b/a/a/a/a;

    invoke-interface {v2, v3}, Lcom/b/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 95
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 96
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_15

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/a/a;

    .line 97
    const-class v7, Lcom/b/a/a/a/d;

    invoke-virtual {v3, v7}, Lcom/b/a/a/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 98
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/b/a/a/a/d;

    .line 99
    invoke-virtual {v7}, Lcom/b/a/a/a/d;->a()J

    move-result-wide v13

    cmp-long v11, v13, v4

    if-nez v11, :cond_1d

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->getParent()Lcom/b/a/a/e;

    move-result-object v11

    check-cast v11, Lcom/b/a/a/b;

    invoke-interface {v11}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object v11

    const-string v13, "/moof/traf/subs"

    invoke-static {v11, v13}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/b/a/a/e;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 101
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 102
    new-instance v11, Lcom/b/a/a/ac;

    invoke-direct {v11}, Lcom/b/a/a/ac;-><init>()V

    iput-object v11, v0, Lcom/googlecode/mp4parser/a/e;->o:Lcom/b/a/a/ac;

    .line 106
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v15, 0x1

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lcom/b/a/a/a/b;

    .line 107
    const-class v13, Lcom/b/a/a/a/e;

    invoke-virtual {v12, v13}, Lcom/b/a/a/a/b;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    .line 108
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/b/a/a/a/e;

    .line 109
    invoke-virtual {v13}, Lcom/b/a/a/a/e;->a()Lcom/b/a/a/a/f;

    move-result-object v14

    invoke-virtual {v14}, Lcom/b/a/a/a/f;->b()J

    move-result-wide v19

    cmp-long v14, v19, v4

    if-nez v14, :cond_1c

    .line 111
    const-class v14, Lcom/googlecode/mp4parser/b/b/b/e;

    invoke-virtual {v6, v14}, Lcom/b/a/a/x;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v19

    const-string v14, "sgpd"

    .line 112
    invoke-static {v13, v14}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/b/a/a/e;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    const-string v14, "sbgp"

    .line 113
    invoke-static {v13, v14}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/b/a/a/e;Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 114
    iget-object v14, v0, Lcom/googlecode/mp4parser/a/e;->c:Ljava/util/Map;

    const-wide/16 v17, 0x1

    sub-long v23, v15, v17

    move-object/from16 v22, v14

    .line 110
    invoke-static/range {v19 .. v24}, Lcom/googlecode/mp4parser/a/e;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v14

    iput-object v14, v0, Lcom/googlecode/mp4parser/a/e;->c:Ljava/util/Map;

    .line 116
    invoke-static {v13, v9}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v14

    check-cast v14, Lcom/b/a/a/ac;

    if-eqz v14, :cond_b

    const-wide/16 v19, 0x0

    sub-long v21, v15, v19

    const-wide/16 v17, 0x1

    sub-long v21, v21, v17

    .line 119
    invoke-virtual {v14}, Lcom/b/a/a/ac;->a()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_9

    goto :goto_9

    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p3, v2

    move-object/from16 v2, v23

    check-cast v2, Lcom/b/a/a/ac$a;

    move-object/from16 v23, v3

    .line 120
    new-instance v3, Lcom/b/a/a/ac$a;

    invoke-direct {v3}, Lcom/b/a/a/ac$a;-><init>()V

    move-wide/from16 v24, v4

    .line 3148
    iget-object v4, v3, Lcom/b/a/a/ac$a;->b:Ljava/util/List;

    .line 4148
    iget-object v5, v2, Lcom/b/a/a/ac$a;->b:Ljava/util/List;

    .line 121
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    cmp-long v4, v21, v19

    if-eqz v4, :cond_a

    .line 5136
    iget-wide v4, v2, Lcom/b/a/a/ac$a;->a:J

    add-long v4, v21, v4

    .line 5140
    iput-wide v4, v3, Lcom/b/a/a/ac$a;->a:J

    move-wide/from16 v21, v19

    goto :goto_8

    .line 6136
    :cond_a
    iget-wide v4, v2, Lcom/b/a/a/ac$a;->a:J

    .line 6140
    iput-wide v4, v3, Lcom/b/a/a/ac$a;->a:J

    .line 128
    :goto_8
    iget-object v2, v0, Lcom/googlecode/mp4parser/a/e;->o:Lcom/b/a/a/ac;

    invoke-virtual {v2}, Lcom/b/a/a/ac;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p3

    move-object/from16 v3, v23

    move-wide/from16 v4, v24

    goto :goto_7

    :cond_b
    :goto_9
    move-object/from16 p3, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    .line 133
    const-class v2, Lcom/b/a/a/a/g;

    invoke-virtual {v13, v2}, Lcom/b/a/a/a/e;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v2, p3

    move-object/from16 v3, v23

    move-wide/from16 v4, v24

    goto/16 :goto_6

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/a/g;

    .line 135
    invoke-virtual {v3}, Lcom/b/a/a/a/g;->getParent()Lcom/b/a/a/e;

    move-result-object v4

    check-cast v4, Lcom/b/a/a/a/e;

    invoke-virtual {v4}, Lcom/b/a/a/a/e;->a()Lcom/b/a/a/a/f;

    move-result-object v4

    .line 137
    invoke-virtual {v3}, Lcom/b/a/a/a/g;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v14, 0x1

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_d

    goto :goto_a

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Lcom/b/a/a/a/g$a;

    .line 138
    invoke-virtual {v3}, Lcom/b/a/a/a/g;->e()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 139
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_f

    .line 140
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v21, v2

    const/16 v20, 0x1

    add-int/lit8 v2, v19, -0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/af$a;

    move-object/from16 v19, v11

    move-object/from16 v22, v12

    .line 7105
    iget-wide v11, v2, Lcom/b/a/a/af$a;->b:J

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    .line 8078
    iget-wide v9, v13, Lcom/b/a/a/a/g$a;->a:J

    cmp-long v2, v11, v9

    if-eqz v2, :cond_e

    goto :goto_c

    .line 143
    :cond_e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/af$a;

    .line 9101
    iget-wide v9, v2, Lcom/b/a/a/af$a;->a:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 9109
    iput-wide v9, v2, Lcom/b/a/a/af$a;->a:J

    goto :goto_e

    :cond_f
    move-object/from16 v21, v2

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v19, v11

    move-object/from16 v22, v12

    :goto_c
    const-wide/16 v11, 0x1

    .line 141
    new-instance v2, Lcom/b/a/a/af$a;

    .line 9078
    iget-wide v9, v13, Lcom/b/a/a/a/g$a;->a:J

    .line 141
    invoke-direct {v2, v11, v12, v9, v10}, Lcom/b/a/a/af$a;-><init>(JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    move-object/from16 v21, v2

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v19, v11

    move-object/from16 v22, v12

    .line 147
    sget-object v2, Lcom/b/a/a/a/f;->b:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v2, v4, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v2

    .line 9135
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v2}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    invoke-virtual {v4}, Lcom/b/a/a/a/f;->i()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_12

    .line 148
    new-instance v2, Lcom/b/a/a/af$a;

    invoke-virtual {v4}, Lcom/b/a/a/a/f;->d()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    invoke-direct {v2, v11, v12, v9, v10}, Lcom/b/a/a/af$a;-><init>(JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_12
    const-wide/16 v11, 0x1

    .line 150
    new-instance v2, Lcom/b/a/a/af$a;

    sget-object v9, Lcom/b/a/a/a/d;->d:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v9, v7, v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v9

    .line 10081
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v9}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-wide v9, v7, Lcom/b/a/a/a/d;->a:J

    .line 150
    invoke-direct {v2, v11, v12, v9, v10}, Lcom/b/a/a/af$a;-><init>(JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_e
    invoke-virtual {v3}, Lcom/b/a/a/a/g;->g()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 155
    iget-object v2, v0, Lcom/googlecode/mp4parser/a/e;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_14

    .line 156
    iget-object v2, v0, Lcom/googlecode/mp4parser/a/e;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/d$a;

    .line 10103
    iget v2, v2, Lcom/b/a/a/d$a;->b:I

    int-to-long v11, v2

    .line 11090
    iget-wide v1, v13, Lcom/b/a/a/a/g$a;->d:J

    cmp-long v9, v11, v1

    if-eqz v9, :cond_13

    goto :goto_f

    .line 159
    :cond_13
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/e;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/d$a;

    .line 12099
    iget v2, v1, Lcom/b/a/a/d$a;->a:I

    add-int/2addr v2, v10

    .line 12107
    iput v2, v1, Lcom/b/a/a/d$a;->a:I

    goto :goto_10

    :cond_14
    const/4 v10, 0x1

    .line 157
    :goto_f
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/e;->j:Ljava/util/List;

    new-instance v2, Lcom/b/a/a/d$a;

    .line 12090
    iget-wide v11, v13, Lcom/b/a/a/a/g$a;->d:J

    .line 157
    invoke-static {v11, v12}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v9

    invoke-direct {v2, v10, v9}, Lcom/b/a/a/d$a;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_15
    :goto_10
    invoke-virtual {v3}, Lcom/b/a/a/a/g;->f()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 13086
    iget-object v1, v13, Lcom/b/a/a/a/g$a;->c:Lcom/b/a/a/a/c;

    goto :goto_13

    :cond_16
    if-eqz v14, :cond_18

    .line 167
    sget-object v1, Lcom/b/a/a/a/g;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v1, v3, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v1

    .line 13247
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v1}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    invoke-virtual {v3}, Lcom/b/a/a/a/g;->i()I

    move-result v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_11

    :cond_17
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_18

    .line 168
    sget-object v1, Lcom/b/a/a/a/g;->e:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v1, v3, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v1

    .line 13314
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v1}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v1, v3, Lcom/b/a/a/a/g;->b:Lcom/b/a/a/a/c;

    goto :goto_13

    .line 170
    :cond_18
    sget-object v1, Lcom/b/a/a/a/f;->d:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v1, v4, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v1

    .line 14143
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v1}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    invoke-virtual {v4}, Lcom/b/a/a/a/f;->i()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_1a

    .line 171
    sget-object v1, Lcom/b/a/a/a/f;->e:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v1, v4, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v1

    .line 14205
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v1}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v1, v4, Lcom/b/a/a/a/f;->a:Lcom/b/a/a/a/c;

    goto :goto_13

    .line 173
    :cond_1a
    sget-object v1, Lcom/b/a/a/a/d;->f:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v1, v7, v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v1

    .line 15089
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v1}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v1, v7, Lcom/b/a/a/a/d;->c:Lcom/b/a/a/a/c;

    :goto_13
    if-eqz v1, :cond_1b

    .line 15190
    iget-boolean v1, v1, Lcom/b/a/a/a/c;->a:Z

    if-nez v1, :cond_1b

    .line 179
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/e;->k:[J

    const/4 v2, 0x1

    new-array v9, v2, [J

    const/4 v14, 0x0

    aput-wide v15, v9, v14

    invoke-static {v1, v9}, Lcom/googlecode/mp4parser/c/i;->a([J[J)[J

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/mp4parser/a/e;->k:[J

    goto :goto_14

    :cond_1b
    const/4 v2, 0x1

    const/4 v14, 0x0

    :goto_14
    const-wide/16 v9, 0x1

    add-long/2addr v15, v9

    move-object/from16 v1, p2

    move-object/from16 v11, v19

    move-object/from16 v2, v21

    move-object/from16 v12, v22

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    goto/16 :goto_b

    :cond_1c
    move-object/from16 v1, p2

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v1, p2

    goto/16 :goto_4

    .line 193
    :cond_1e
    const-class v1, Lcom/googlecode/mp4parser/b/b/b/e;

    invoke-virtual {v6, v1}, Lcom/b/a/a/x;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const-class v1, Lcom/googlecode/mp4parser/b/b/b/f;

    invoke-virtual {v6, v1}, Lcom/b/a/a/x;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    iget-object v12, v0, Lcom/googlecode/mp4parser/a/e;->c:Ljava/util/Map;

    const-wide/16 v13, 0x0

    invoke-static/range {v9 .. v14}, Lcom/googlecode/mp4parser/a/e;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/mp4parser/a/e;->c:Ljava/util/Map;

    .line 196
    :goto_15
    invoke-static {v8}, Lcom/b/a/a/af;->a(Ljava/util/List;)[J

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/mp4parser/a/e;->i:[J

    .line 198
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->d()Lcom/b/a/a/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/o;->c()Lcom/b/a/a/p;

    move-result-object v1

    .line 199
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/a/ag;->a()Lcom/b/a/a/ah;

    move-result-object v2

    .line 201
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v2}, Lcom/b/a/a/ah;->a()J

    move-result-wide v4

    .line 16098
    iput-wide v4, v3, Lcom/googlecode/mp4parser/a/h;->i:J

    .line 202
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v1}, Lcom/b/a/a/p;->a()Ljava/util/Date;

    move-result-object v4

    .line 17074
    iput-object v4, v3, Lcom/googlecode/mp4parser/a/h;->d:Ljava/util/Date;

    .line 203
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v1}, Lcom/b/a/a/p;->d()Ljava/lang/String;

    move-result-object v4

    .line 18050
    iput-object v4, v3, Lcom/googlecode/mp4parser/a/h;->a:Ljava/lang/String;

    .line 205
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v1}, Lcom/b/a/a/p;->b()Ljava/util/Date;

    move-result-object v4

    .line 18066
    iput-object v4, v3, Lcom/googlecode/mp4parser/a/h;->c:Ljava/util/Date;

    .line 206
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v1}, Lcom/b/a/a/p;->c()J

    move-result-wide v4

    .line 19058
    iput-wide v4, v3, Lcom/googlecode/mp4parser/a/h;->b:J

    .line 207
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v2}, Lcom/b/a/a/ah;->e()D

    move-result-wide v4

    .line 19090
    iput-wide v4, v3, Lcom/googlecode/mp4parser/a/h;->g:D

    .line 208
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v2}, Lcom/b/a/a/ah;->d()D

    move-result-wide v4

    .line 20082
    iput-wide v4, v3, Lcom/googlecode/mp4parser/a/h;->f:D

    .line 209
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v2}, Lcom/b/a/a/ah;->b()I

    move-result v4

    .line 20106
    iput v4, v3, Lcom/googlecode/mp4parser/a/h;->k:I

    .line 210
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    sget-object v4, Lcom/b/a/a/ah;->j:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v2, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 21091
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v4, v2, Lcom/b/a/a/ah;->g:Lcom/googlecode/mp4parser/c/h;

    .line 21130
    iput-object v4, v3, Lcom/googlecode/mp4parser/a/h;->e:Lcom/googlecode/mp4parser/c/h;

    .line 211
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    invoke-virtual {v2}, Lcom/b/a/a/ah;->c()F

    move-result v2

    .line 22114
    iput v2, v3, Lcom/googlecode/mp4parser/a/h;->h:F

    const-string v2, "edts/elst"

    move-object/from16 v4, p2

    .line 212
    invoke-static {v4, v2}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/j;

    const-string v3, "../mvhd"

    .line 213
    invoke-static {v4, v3}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/b/a/a/b;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/s;

    if-eqz v2, :cond_20

    .line 215
    sget-object v4, Lcom/b/a/a/j;->b:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v2, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 23069
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v2, v2, Lcom/b/a/a/j;->a:Ljava/util/List;

    .line 215
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_17

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/a/j$a;

    .line 216
    iget-object v5, v0, Lcom/googlecode/mp4parser/a/e;->b:Ljava/util/List;

    new-instance v15, Lcom/googlecode/mp4parser/a/c;

    .line 23178
    iget-wide v7, v4, Lcom/b/a/a/j$a;->c:J

    .line 216
    invoke-virtual {v1}, Lcom/b/a/a/p;->c()J

    move-result-wide v9

    .line 23199
    iget-wide v11, v4, Lcom/b/a/a/j$a;->d:D

    .line 24156
    iget-wide v13, v4, Lcom/b/a/a/j$a;->b:J

    long-to-double v13, v13

    move-object/from16 p1, v1

    .line 216
    invoke-virtual {v3}, Lcom/b/a/a/s;->a()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v13, v0

    move-object v6, v15

    invoke-direct/range {v6 .. v14}, Lcom/googlecode/mp4parser/a/c;-><init>(JJDD)V

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_16

    :cond_20
    :goto_17
    return-void

    :cond_21
    move-wide/from16 v24, v4

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    const/4 v14, 0x0

    move-object v4, v1

    .line 88
    aget-object v0, v2, v3

    .line 89
    const-class v1, Lcom/b/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object v10, v1

    move-object v1, v4

    move-wide/from16 v4, v24

    goto/16 :goto_2

    :cond_22
    move-object/from16 v0, p0

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/b/b/b/e;",
            ">;",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/b/b/b/e;",
            ">;",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/b/b/b/f;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/b/b/b/b;",
            "[J>;J)",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/b/b/b/b;",
            "[J>;"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 225
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/b/b/b/f;

    .line 227
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/b/f;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/b/b/b/f$a;

    .line 25106
    iget v7, v6, Lcom/googlecode/mp4parser/b/b/b/f$a;->b:I

    if-lez v7, :cond_b

    const/4 v7, 0x0

    .line 26106
    iget v8, v6, Lcom/googlecode/mp4parser/b/b/b/f$a;->b:I

    const v9, 0xffff

    if-le v8, v9, :cond_4

    .line 231
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/b/b/b/e;

    .line 232
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/b/b/b/e;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/b/f;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 233
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/b/b/b/e;->b()Ljava/util/List;

    move-result-object v7

    .line 27106
    iget v10, v6, Lcom/googlecode/mp4parser/b/b/b/f$a;->b:I

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v9

    .line 233
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/b/b/b/b;

    goto :goto_2

    .line 237
    :cond_4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_a

    :goto_4
    move-object v9, v7

    .line 243
    sget-boolean v7, Lcom/googlecode/mp4parser/a/e;->g:Z

    if-nez v7, :cond_7

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 244
    :cond_7
    :goto_5
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    if-nez v7, :cond_8

    new-array v7, v4, [J

    :cond_8
    move-object v10, v7

    .line 29098
    iget-wide v7, v6, Lcom/googlecode/mp4parser/b/b/b/f$a;->a:J

    .line 249
    invoke-static {v7, v8}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v7

    array-length v8, v10

    add-int/2addr v7, v8

    new-array v11, v7, [J

    .line 250
    array-length v7, v10

    invoke-static {v10, v4, v11, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    :goto_6
    int-to-long v12, v7

    .line 30098
    iget-wide v14, v6, Lcom/googlecode/mp4parser/b/b/b/f$a;->a:J

    cmp-long v8, v12, v14

    if-ltz v8, :cond_9

    .line 254
    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 252
    :cond_9
    array-length v8, v10

    add-int/2addr v8, v7

    int-to-long v14, v5

    add-long v14, p4, v14

    add-long/2addr v14, v12

    aput-wide v14, v11, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 237
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/mp4parser/b/b/b/e;

    .line 238
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/b/b/b/e;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/b/f;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 239
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/b/b/b/e;->b()Ljava/util/List;

    move-result-object v7

    .line 28106
    iget v9, v6, Lcom/googlecode/mp4parser/b/b/b/f$a;->b:I

    add-int/lit8 v9, v9, -0x1

    .line 239
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/b/b/b/b;

    goto :goto_3

    :cond_b
    :goto_7
    int-to-long v7, v5

    .line 31098
    iget-wide v5, v6, Lcom/googlecode/mp4parser/b/b/b/f$a;->a:J

    add-long/2addr v7, v5

    long-to-int v5, v7

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/d$a;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->j:Ljava/util/List;

    return-object v0
.end method

.method public final b()[J
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->k:[J

    if-eqz v0, :cond_1

    array-length v0, v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->k:[J

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/u$a;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->l:Ljava/util/List;

    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->e:Lcom/b/a/a/ag;

    invoke-virtual {v0}, Lcom/b/a/a/ag;->getParent()Lcom/b/a/a/e;

    move-result-object v0

    .line 267
    instance-of v1, v0, Lcom/googlecode/mp4parser/d;

    if-eqz v1, :cond_0

    .line 268
    check-cast v0, Lcom/googlecode/mp4parser/d;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/d;->close()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->f:[Lcom/b/a/d;

    if-eqz v0, :cond_2

    .line 271
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    .line 272
    invoke-virtual {v3}, Lcom/b/a/d;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final d()Lcom/b/a/a/ac;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->o:Lcom/b/a/a/ac;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/f;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->d:Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized k()[J
    .locals 1

    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->i:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Lcom/b/a/a/v;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->h:Lcom/b/a/a/v;

    return-object v0
.end method

.method public final m()Lcom/googlecode/mp4parser/a/h;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->m:Lcom/googlecode/mp4parser/a/h;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/e;->n:Ljava/lang/String;

    return-object v0
.end method
