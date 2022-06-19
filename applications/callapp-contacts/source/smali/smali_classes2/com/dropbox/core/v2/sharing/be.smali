.class public final Lcom/dropbox/core/v2/sharing/be;
.super Lcom/dropbox/core/v2/sharing/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/be$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/sharing/ba;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/q;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Lcom/dropbox/core/v2/sharing/r;

.field protected final e:Ljava/lang/String;

.field protected final f:Ljava/lang/String;

.field protected final g:Ljava/util/Date;

.field protected final h:Lcom/dropbox/core/v2/sharing/a;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/b;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/r;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 151
    sget-object v16, Lcom/dropbox/core/v2/sharing/a;->INHERIT:Lcom/dropbox/core/v2/sharing/a;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/dropbox/core/v2/sharing/be;-><init>(Lcom/dropbox/core/v2/sharing/b;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/r;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ba;Ljava/util/List;Lcom/dropbox/core/v2/sharing/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/b;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/r;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ba;Ljava/util/List;Lcom/dropbox/core/v2/sharing/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/b;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/r;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dropbox/core/v2/users/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/ba;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/q;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/a;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    .line 86
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/bf;-><init>(Lcom/dropbox/core/v2/sharing/b;ZZLjava/util/List;Lcom/dropbox/core/v2/users/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p14

    .line 87
    iput-object v0, v9, Lcom/dropbox/core/v2/sharing/be;->a:Lcom/dropbox/core/v2/sharing/ba;

    if-eqz v10, :cond_8

    .line 91
    iput-object v10, v9, Lcom/dropbox/core/v2/sharing/be;->b:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 93
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/q;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An item in list \'permissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iput-object v14, v9, Lcom/dropbox/core/v2/sharing/be;->c:Ljava/util/List;

    if-eqz v11, :cond_7

    .line 103
    iput-object v11, v9, Lcom/dropbox/core/v2/sharing/be;->d:Lcom/dropbox/core/v2/sharing/r;

    if-eqz v12, :cond_6

    .line 107
    iput-object v12, v9, Lcom/dropbox/core/v2/sharing/be;->e:Ljava/lang/String;

    if-eqz v13, :cond_5

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 111
    invoke-static {v0, v13}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    iput-object v13, v9, Lcom/dropbox/core/v2/sharing/be;->f:Ljava/lang/String;

    if-eqz p8, :cond_3

    .line 118
    invoke-static/range {p8 .. p8}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v9, Lcom/dropbox/core/v2/sharing/be;->g:Ljava/util/Date;

    if-eqz v15, :cond_2

    .line 122
    iput-object v15, v9, Lcom/dropbox/core/v2/sharing/be;->h:Lcom/dropbox/core/v2/sharing/a;

    return-void

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accessInheritance\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'timeInvited\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'previewUrl\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'policy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 594
    sget-object v0, Lcom/dropbox/core/v2/sharing/be$a;->a:Lcom/dropbox/core/v2/sharing/be$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/be$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 555
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 556
    check-cast p1, Lcom/dropbox/core/v2/sharing/be;

    .line 557
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->i:Lcom/dropbox/core/v2/sharing/b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->i:Lcom/dropbox/core/v2/sharing/b;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->i:Lcom/dropbox/core/v2/sharing/b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->i:Lcom/dropbox/core/v2/sharing/b;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/be;->j:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/be;->j:Z

    if-ne v2, v3, :cond_10

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/be;->k:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/be;->k:Z

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    .line 560
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->d:Lcom/dropbox/core/v2/sharing/r;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->d:Lcom/dropbox/core/v2/sharing/r;

    if-eq v2, v3, :cond_4

    .line 561
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->e:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 562
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->f:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    .line 563
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->g:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->g:Ljava/util/Date;

    if-eq v2, v3, :cond_7

    .line 564
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->l:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->l:Ljava/util/List;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->l:Ljava/util/List;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->l:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->l:Ljava/util/List;

    .line 565
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->m:Lcom/dropbox/core/v2/users/d;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->m:Lcom/dropbox/core/v2/users/d;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->m:Lcom/dropbox/core/v2/users/d;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->m:Lcom/dropbox/core/v2/users/d;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->m:Lcom/dropbox/core/v2/users/d;

    .line 566
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->n:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->n:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->n:Ljava/lang/String;

    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->o:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->o:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->o:Ljava/lang/String;

    .line 568
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->p:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->p:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->p:Ljava/lang/String;

    .line 569
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->a:Lcom/dropbox/core/v2/sharing/ba;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->a:Lcom/dropbox/core/v2/sharing/ba;

    if-eq v2, v3, :cond_d

    if-eqz v2, :cond_10

    .line 570
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ba;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_d
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/be;->c:Ljava/util/List;

    if-eq v2, v3, :cond_e

    if-eqz v2, :cond_10

    .line 571
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/be;->h:Lcom/dropbox/core/v2/sharing/a;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/be;->h:Lcom/dropbox/core/v2/sharing/a;

    if-eq v2, p1, :cond_f

    .line 572
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    return v0

    :cond_10
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->a:Lcom/dropbox/core/v2/sharing/ba;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->c:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->d:Lcom/dropbox/core/v2/sharing/r;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->e:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->g:Ljava/util/Date;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->h:Lcom/dropbox/core/v2/sharing/a;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 542
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/bf;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 582
    sget-object v0, Lcom/dropbox/core/v2/sharing/be$a;->a:Lcom/dropbox/core/v2/sharing/be$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/be$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
