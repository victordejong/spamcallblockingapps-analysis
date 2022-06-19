.class public Lcom/dropbox/core/v2/sharing/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/bb$a;
    }
.end annotation


# instance fields
.field protected final c:Lcom/dropbox/core/v2/sharing/b;

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/z;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/dropbox/core/v2/sharing/i;

.field protected final f:Lcom/dropbox/core/v2/sharing/z;

.field protected final g:Ljava/util/Date;

.field protected final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/aa;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/z;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/z;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/aa;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 110
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/bb;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/b;Lcom/dropbox/core/v2/sharing/i;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/b;Lcom/dropbox/core/v2/sharing/i;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/z;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/z;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/aa;",
            ">;Z",
            "Lcom/dropbox/core/v2/sharing/b;",
            "Lcom/dropbox/core/v2/sharing/i;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/bb;->c:Lcom/dropbox/core/v2/sharing/b;

    if-eqz p1, :cond_6

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/z;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'audienceOptions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/bb;->d:Ljava/util/List;

    .line 70
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/bb;->e:Lcom/dropbox/core/v2/sharing/i;

    if-eqz p2, :cond_5

    .line 74
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/bb;->f:Lcom/dropbox/core/v2/sharing/z;

    .line 75
    invoke-static {p7}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/bb;->g:Ljava/util/Date;

    if-eqz p3, :cond_4

    .line 79
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/sharing/aa;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'linkPermissions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/bb;->h:Ljava/util/List;

    .line 85
    iput-boolean p4, p0, Lcom/dropbox/core/v2/sharing/bb;->i:Z

    return-void

    .line 77
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'linkPermissions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'currentAudience\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'audienceOptions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 352
    sget-object v0, Lcom/dropbox/core/v2/sharing/bb$a;->a:Lcom/dropbox/core/v2/sharing/bb$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bb$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

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

    .line 322
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 323
    check-cast p1, Lcom/dropbox/core/v2/sharing/bb;

    .line 324
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bb;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bb;->d:Ljava/util/List;

    if-eq v2, v3, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bb;->f:Lcom/dropbox/core/v2/sharing/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bb;->f:Lcom/dropbox/core/v2/sharing/z;

    if-eq v2, v3, :cond_3

    .line 325
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bb;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bb;->h:Ljava/util/List;

    if-eq v2, v3, :cond_4

    .line 326
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/bb;->i:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/bb;->i:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bb;->c:Lcom/dropbox/core/v2/sharing/b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bb;->c:Lcom/dropbox/core/v2/sharing/b;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_8

    .line 328
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bb;->e:Lcom/dropbox/core/v2/sharing/i;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/bb;->e:Lcom/dropbox/core/v2/sharing/i;

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_8

    .line 329
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/bb;->g:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bb;->g:Ljava/util/Date;

    if-eq v2, p1, :cond_7

    if-eqz v2, :cond_8

    .line 330
    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    return v0

    :cond_8
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bb;->c:Lcom/dropbox/core/v2/sharing/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bb;->d:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bb;->e:Lcom/dropbox/core/v2/sharing/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bb;->f:Lcom/dropbox/core/v2/sharing/z;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bb;->g:Ljava/util/Date;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/bb;->h:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/bb;->i:Z

    .line 308
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 301
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 340
    sget-object v0, Lcom/dropbox/core/v2/sharing/bb$a;->a:Lcom/dropbox/core/v2/sharing/bb$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/bb$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
