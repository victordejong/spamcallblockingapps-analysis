.class public Lcom/dropbox/core/v2/sharing/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/bj$a;
    }
.end annotation


# instance fields
.field protected final e:Ljava/lang/String;

.field protected final f:Ljava/lang/String;

.field protected final g:Ljava/lang/String;

.field protected final h:Ljava/util/Date;

.field protected final i:Ljava/lang/String;

.field protected final j:Lcom/dropbox/core/v2/sharing/ab;

.field protected final k:Lcom/dropbox/core/v2/sharing/bo;

.field protected final l:Lcom/dropbox/core/v2/users/d;


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

    .line 106
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/bj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 70
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/bj;->e:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 72
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'id\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    :goto_0
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/bj;->f:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 80
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/bj;->g:Ljava/lang/String;

    .line 81
    invoke-static {p5}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/bj;->h:Ljava/util/Date;

    .line 82
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/bj;->i:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 86
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/bj;->j:Lcom/dropbox/core/v2/sharing/ab;

    .line 87
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/bj;->k:Lcom/dropbox/core/v2/sharing/bo;

    .line 88
    iput-object p8, p0, Lcom/dropbox/core/v2/sharing/bj;->l:Lcom/dropbox/core/v2/users/d;

    return-void

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'linkPermissions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'name\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'url\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 381
    sget-object v0, Lcom/dropbox/core/v2/sharing/bj$a;->a:Lcom/dropbox/core/v2/sharing/bj$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bj$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 350
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 351
    check-cast p1, Lcom/dropbox/core/v2/sharing/bj;

    .line 352
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bj;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bj;->e:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bj;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bj;->g:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bj;->j:Lcom/dropbox/core/v2/sharing/ab;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bj;->j:Lcom/dropbox/core/v2/sharing/ab;

    if-eq v2, v3, :cond_4

    .line 354
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bj;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bj;->f:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_9

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bj;->h:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bj;->h:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_9

    .line 356
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bj;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bj;->i:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_9

    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bj;->k:Lcom/dropbox/core/v2/sharing/bo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bj;->k:Lcom/dropbox/core/v2/sharing/bo;

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_9

    .line 358
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/bo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bj;->l:Lcom/dropbox/core/v2/users/d;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bj;->l:Lcom/dropbox/core/v2/users/d;

    if-eq v2, p1, :cond_a

    if-eqz v2, :cond_9

    .line 359
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

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 328
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bj;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bj;->f:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bj;->g:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bj;->h:Ljava/util/Date;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bj;->i:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bj;->j:Lcom/dropbox/core/v2/sharing/ab;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bj;->k:Lcom/dropbox/core/v2/sharing/bo;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bj;->l:Lcom/dropbox/core/v2/users/d;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 369
    sget-object v0, Lcom/dropbox/core/v2/sharing/bj$a;->a:Lcom/dropbox/core/v2/sharing/bj$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bj$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
