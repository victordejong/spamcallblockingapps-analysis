.class public final Lcom/dropbox/core/v2/files/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/b$b;,
        Lcom/dropbox/core/v2/files/b$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/dropbox/core/v2/files/bm;

.field protected final c:Z

.field protected final d:Ljava/util/Date;

.field protected final e:Z

.field protected final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/j;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 107
    sget-object v2, Lcom/dropbox/core/v2/files/bm;->a:Lcom/dropbox/core/v2/files/bm;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/files/b;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/bm;ZLjava/util/Date;ZLjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/bm;ZLjava/util/Date;ZLjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/bm;",
            "Z",
            "Ljava/util/Date;",
            "Z",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/j;",
            ">;Z)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)"

    .line 72
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iput-object p1, p0, Lcom/dropbox/core/v2/files/b;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 79
    iput-object p2, p0, Lcom/dropbox/core/v2/files/b;->b:Lcom/dropbox/core/v2/files/bm;

    .line 80
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/b;->c:Z

    .line 81
    invoke-static {p4}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/b;->d:Ljava/util/Date;

    .line 82
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/b;->e:Z

    if-eqz p6, :cond_1

    .line 84
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/fileproperties/j;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'propertyGroups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    iput-object p6, p0, Lcom/dropbox/core/v2/files/b;->f:Ljava/util/List;

    .line 91
    iput-boolean p7, p0, Lcom/dropbox/core/v2/files/b;->g:Z

    return-void

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'mode\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/b$a;
    .locals 1

    .line 201
    new-instance v0, Lcom/dropbox/core/v2/files/b$a;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/b$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 404
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 405
    check-cast p1, Lcom/dropbox/core/v2/files/b;

    .line 406
    iget-object v2, p0, Lcom/dropbox/core/v2/files/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/b;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/b;->b:Lcom/dropbox/core/v2/files/bm;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/b;->b:Lcom/dropbox/core/v2/files/bm;

    if-eq v2, v3, :cond_3

    .line 407
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/bm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/b;->c:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/b;->c:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/b;->d:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/b;->d:Ljava/util/Date;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_6

    .line 409
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/b;->e:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/b;->e:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/b;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/b;->f:Ljava/util/List;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_6

    .line 411
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/b;->g:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/b;->g:Z

    if-ne v2, p1, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcom/dropbox/core/v2/files/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/b;->b:Lcom/dropbox/core/v2/files/bm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/b;->c:Z

    .line 386
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/b;->d:Ljava/util/Date;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/b;->e:Z

    .line 388
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/b;->f:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/b;->g:Z

    .line 390
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 383
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 422
    sget-object v0, Lcom/dropbox/core/v2/files/b$b;->a:Lcom/dropbox/core/v2/files/b$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/b$b;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
