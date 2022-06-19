.class public Lcom/dropbox/core/v2/sharing/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/bf$a;
    }
.end annotation


# instance fields
.field protected final i:Lcom/dropbox/core/v2/sharing/b;

.field protected final j:Z

.field protected final k:Z

.field protected final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final m:Lcom/dropbox/core/v2/users/d;

.field protected final n:Ljava/lang/String;

.field protected final o:Ljava/lang/String;

.field protected final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/b;ZZ)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 106
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/bf;-><init>(Lcom/dropbox/core/v2/sharing/b;ZZLjava/util/List;Lcom/dropbox/core/v2/users/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/b;ZZLjava/util/List;Lcom/dropbox/core/v2/users/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/b;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dropbox/core/v2/users/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 68
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/bf;->i:Lcom/dropbox/core/v2/sharing/b;

    .line 69
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/bf;->j:Z

    .line 70
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/bf;->k:Z

    if-eqz p4, :cond_1

    .line 72
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'ownerDisplayNames\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/bf;->l:Ljava/util/List;

    .line 79
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/bf;->m:Lcom/dropbox/core/v2/users/d;

    if-eqz p6, :cond_3

    const-string p1, "[-_0-9a-zA-Z:]+"

    .line 81
    invoke-static {p1, p6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    :goto_1
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/bf;->n:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/bf;->o:Ljava/lang/String;

    .line 87
    iput-object p8, p0, Lcom/dropbox/core/v2/sharing/bf;->p:Ljava/lang/String;

    return-void

    .line 66
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'accessType\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 385
    sget-object v0, Lcom/dropbox/core/v2/sharing/bf$a;->a:Lcom/dropbox/core/v2/sharing/bf$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bf$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

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

    .line 354
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 355
    check-cast p1, Lcom/dropbox/core/v2/sharing/bf;

    .line 356
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bf;->i:Lcom/dropbox/core/v2/sharing/b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bf;->i:Lcom/dropbox/core/v2/sharing/b;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/bf;->j:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/bf;->j:Z

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/bf;->k:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/bf;->k:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bf;->l:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bf;->l:Ljava/util/List;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_8

    .line 359
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bf;->m:Lcom/dropbox/core/v2/users/d;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bf;->m:Lcom/dropbox/core/v2/users/d;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_8

    .line 360
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bf;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bf;->n:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_8

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bf;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bf;->o:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_8

    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bf;->p:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bf;->p:Ljava/lang/String;

    if-eq v2, p1, :cond_7

    if-eqz v2, :cond_8

    .line 363
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    return v0

    :cond_8
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bf;->i:Lcom/dropbox/core/v2/sharing/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/bf;->j:Z

    .line 334
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/bf;->k:Z

    .line 335
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bf;->l:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bf;->m:Lcom/dropbox/core/v2/users/d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bf;->n:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bf;->o:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bf;->p:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 332
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 373
    sget-object v0, Lcom/dropbox/core/v2/sharing/bf$a;->a:Lcom/dropbox/core/v2/sharing/bf$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bf$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
