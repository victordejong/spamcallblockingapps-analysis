.class public final Lcom/dropbox/core/v2/sharing/m;
.super Lcom/dropbox/core/v2/sharing/bj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/m$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/Date;

.field protected final b:Ljava/util/Date;

.field protected final c:Ljava/lang/String;

.field protected final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)V
    .locals 14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    .line 127
    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/sharing/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V
    .locals 11

    move-object v9, p0

    move-object/from16 v10, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    .line 77
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/bj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V

    if-eqz p4, :cond_4

    .line 81
    invoke-static {p4}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v9, Lcom/dropbox/core/v2/sharing/m;->a:Ljava/util/Date;

    if-eqz p5, :cond_3

    .line 85
    invoke-static/range {p5 .. p5}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v9, Lcom/dropbox/core/v2/sharing/m;->b:Ljava/util/Date;

    if-eqz v10, :cond_2

    .line 89
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 92
    invoke-static {v0, v10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-object v10, v9, Lcom/dropbox/core/v2/sharing/m;->c:Ljava/lang/String;

    move-wide/from16 v0, p7

    .line 96
    iput-wide v0, v9, Lcom/dropbox/core/v2/sharing/m;->d:J

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'rev\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'rev\' is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'rev\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'serverModified\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'clientModified\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 451
    sget-object v0, Lcom/dropbox/core/v2/sharing/m$a;->a:Lcom/dropbox/core/v2/sharing/m$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/m$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 416
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 417
    check-cast p1, Lcom/dropbox/core/v2/sharing/m;

    .line 418
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->e:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->g:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->g:Ljava/lang/String;

    .line 419
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->j:Lcom/dropbox/core/v2/sharing/ab;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->j:Lcom/dropbox/core/v2/sharing/ab;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->j:Lcom/dropbox/core/v2/sharing/ab;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->j:Lcom/dropbox/core/v2/sharing/ab;

    .line 420
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->a:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->a:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    .line 421
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->b:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->b:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    .line 422
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    .line 423
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_7
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/m;->d:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/m;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->f:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->f:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->f:Ljava/lang/String;

    .line 425
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->h:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->h:Ljava/util/Date;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->h:Ljava/util/Date;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->h:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->h:Ljava/util/Date;

    .line 426
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->i:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->i:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->i:Ljava/lang/String;

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->k:Lcom/dropbox/core/v2/sharing/bo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->k:Lcom/dropbox/core/v2/sharing/bo;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->k:Lcom/dropbox/core/v2/sharing/bo;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->k:Lcom/dropbox/core/v2/sharing/bo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->k:Lcom/dropbox/core/v2/sharing/bo;

    .line 428
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/bo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->l:Lcom/dropbox/core/v2/users/d;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/m;->l:Lcom/dropbox/core/v2/users/d;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->l:Lcom/dropbox/core/v2/users/d;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/m;->l:Lcom/dropbox/core/v2/users/d;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/m;->l:Lcom/dropbox/core/v2/users/d;

    .line 429
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/users/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    return v0

    :cond_d
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 397
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/m;->a:Ljava/util/Date;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/m;->b:Ljava/util/Date;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/m;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/sharing/m;->d:J

    .line 401
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 397
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 403
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/bj;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 439
    sget-object v0, Lcom/dropbox/core/v2/sharing/m$a;->a:Lcom/dropbox/core/v2/sharing/m$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/m$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
