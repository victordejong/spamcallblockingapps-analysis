.class public final Lcom/dropbox/core/v2/files/t;
.super Lcom/dropbox/core/v2/files/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/t$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Lcom/dropbox/core/v2/files/u;

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 104
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/files/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/u;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/u;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/u;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/j;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/files/al;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 72
    iput-object p2, p0, Lcom/dropbox/core/v2/files/t;->a:Ljava/lang/String;

    if-eqz p6, :cond_1

    const-string p1, "[-_0-9a-zA-Z:]+"

    .line 74
    invoke-static {p1, p6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    :goto_0
    iput-object p6, p0, Lcom/dropbox/core/v2/files/t;->b:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/dropbox/core/v2/files/t;->c:Lcom/dropbox/core/v2/files/u;

    if-eqz p8, :cond_3

    .line 81
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/fileproperties/j;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'propertyGroups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_3
    iput-object p8, p0, Lcom/dropbox/core/v2/files/t;->d:Ljava/util/List;

    return-void

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'id\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'id\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/files/t;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/files/t;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 408
    sget-object v0, Lcom/dropbox/core/v2/files/t$a;->a:Lcom/dropbox/core/v2/files/t$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/t$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

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

    .line 377
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 378
    check-cast p1, Lcom/dropbox/core/v2/files/t;

    .line 379
    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->o:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->p:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->p:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->p:Ljava/lang/String;

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->q:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->q:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->q:Ljava/lang/String;

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->r:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->r:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->r:Ljava/lang/String;

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_9

    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->c:Lcom/dropbox/core/v2/files/u;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/t;->c:Lcom/dropbox/core/v2/files/u;

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_9

    .line 385
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/files/t;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/t;->d:Ljava/util/List;

    if-eq v2, p1, :cond_a

    if-eqz v2, :cond_9

    .line 386
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/dropbox/core/v2/files/t;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/t;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/t;->c:Lcom/dropbox/core/v2/files/u;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/t;->d:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 364
    invoke-super {p0}, Lcom/dropbox/core/v2/files/al;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 396
    sget-object v0, Lcom/dropbox/core/v2/files/t$a;->a:Lcom/dropbox/core/v2/files/t$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/t$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
