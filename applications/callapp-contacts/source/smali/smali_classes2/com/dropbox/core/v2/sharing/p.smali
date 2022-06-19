.class public final Lcom/dropbox/core/v2/sharing/p;
.super Lcom/dropbox/core/v2/sharing/bj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/p$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 76
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p8}, Lcom/dropbox/core/v2/sharing/bj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 312
    sget-object v0, Lcom/dropbox/core/v2/sharing/p$a;->a:Lcom/dropbox/core/v2/sharing/p$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/p$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

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

    .line 281
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 282
    check-cast p1, Lcom/dropbox/core/v2/sharing/p;

    .line 283
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->e:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->g:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->g:Ljava/lang/String;

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->j:Lcom/dropbox/core/v2/sharing/ab;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->j:Lcom/dropbox/core/v2/sharing/ab;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->j:Lcom/dropbox/core/v2/sharing/ab;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->j:Lcom/dropbox/core/v2/sharing/ab;

    .line 285
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->f:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->f:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->f:Ljava/lang/String;

    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->h:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->h:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->h:Ljava/util/Date;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->h:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->h:Ljava/util/Date;

    .line 287
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->i:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->i:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->i:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->k:Lcom/dropbox/core/v2/sharing/bo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->k:Lcom/dropbox/core/v2/sharing/bo;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->k:Lcom/dropbox/core/v2/sharing/bo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->k:Lcom/dropbox/core/v2/sharing/bo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->k:Lcom/dropbox/core/v2/sharing/bo;

    .line 289
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/bo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->l:Lcom/dropbox/core/v2/users/d;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/p;->l:Lcom/dropbox/core/v2/users/d;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->l:Lcom/dropbox/core/v2/users/d;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/p;->l:Lcom/dropbox/core/v2/users/d;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/p;->l:Lcom/dropbox/core/v2/users/d;

    .line 290
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/users/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    return v1

    :cond_a
    :goto_0
    return v0

    :cond_b
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 300
    sget-object v0, Lcom/dropbox/core/v2/sharing/p$a;->a:Lcom/dropbox/core/v2/sharing/p$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/p$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
