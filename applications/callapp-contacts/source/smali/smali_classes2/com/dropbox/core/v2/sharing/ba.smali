.class public final Lcom/dropbox/core/v2/sharing/ba;
.super Lcom/dropbox/core/v2/sharing/bb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ba$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/sharing/h;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;ZLjava/lang/String;)V
    .locals 10
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 96
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/ba;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;ZLjava/lang/String;Lcom/dropbox/core/v2/sharing/b;Lcom/dropbox/core/v2/sharing/i;Ljava/util/Date;Lcom/dropbox/core/v2/sharing/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;ZLjava/lang/String;Lcom/dropbox/core/v2/sharing/b;Lcom/dropbox/core/v2/sharing/i;Ljava/util/Date;Lcom/dropbox/core/v2/sharing/h;)V
    .locals 10
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
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/b;",
            "Lcom/dropbox/core/v2/sharing/i;",
            "Ljava/util/Date;",
            "Lcom/dropbox/core/v2/sharing/h;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 65
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/bb;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/b;Lcom/dropbox/core/v2/sharing/i;Ljava/util/Date;)V

    move-object/from16 v0, p9

    .line 66
    iput-object v0, v8, Lcom/dropbox/core/v2/sharing/ba;->a:Lcom/dropbox/core/v2/sharing/h;

    if-eqz v9, :cond_0

    .line 70
    iput-object v9, v8, Lcom/dropbox/core/v2/sharing/ba;->b:Ljava/lang/String;

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 347
    sget-object v0, Lcom/dropbox/core/v2/sharing/ba$a;->a:Lcom/dropbox/core/v2/sharing/ba$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ba$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

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

    .line 315
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 316
    check-cast p1, Lcom/dropbox/core/v2/sharing/ba;

    .line 317
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->d:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->f:Lcom/dropbox/core/v2/sharing/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->f:Lcom/dropbox/core/v2/sharing/z;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->f:Lcom/dropbox/core/v2/sharing/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->f:Lcom/dropbox/core/v2/sharing/z;

    .line 318
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->h:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->h:Ljava/util/List;

    .line 319
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ba;->i:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ba;->i:Z

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->c:Lcom/dropbox/core/v2/sharing/b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->c:Lcom/dropbox/core/v2/sharing/b;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->c:Lcom/dropbox/core/v2/sharing/b;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->c:Lcom/dropbox/core/v2/sharing/b;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->c:Lcom/dropbox/core/v2/sharing/b;

    .line 322
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->e:Lcom/dropbox/core/v2/sharing/i;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->e:Lcom/dropbox/core/v2/sharing/i;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->e:Lcom/dropbox/core/v2/sharing/i;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->e:Lcom/dropbox/core/v2/sharing/i;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->e:Lcom/dropbox/core/v2/sharing/i;

    .line 323
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->g:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->g:Ljava/util/Date;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->g:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->g:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ba;->g:Ljava/util/Date;

    .line 324
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ba;->a:Lcom/dropbox/core/v2/sharing/h;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ba;->a:Lcom/dropbox/core/v2/sharing/h;

    if-eq v2, p1, :cond_9

    if-eqz v2, :cond_a

    .line 325
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    return v0

    :cond_a
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 298
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ba;->a:Lcom/dropbox/core/v2/sharing/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ba;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 302
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/bb;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/sharing/ba$a;->a:Lcom/dropbox/core/v2/sharing/ba$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ba$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
