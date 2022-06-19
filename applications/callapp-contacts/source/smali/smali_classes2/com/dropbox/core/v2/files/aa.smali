.class public final Lcom/dropbox/core/v2/files/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/aa$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Z

.field protected final c:Z

.field protected final d:Z

.field protected final e:Z

.field protected final f:Z

.field protected final g:Ljava/lang/Long;

.field protected final h:Lcom/dropbox/core/v2/files/au;

.field protected final i:Lcom/dropbox/core/v2/fileproperties/m;

.field protected final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 113
    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/files/aa;-><init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/au;Lcom/dropbox/core/v2/fileproperties/m;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/au;Lcom/dropbox/core/v2/fileproperties/m;Z)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    .line 78
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iput-object p1, p0, Lcom/dropbox/core/v2/files/aa;->a:Ljava/lang/String;

    .line 82
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/aa;->b:Z

    .line 83
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/aa;->c:Z

    .line 84
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/aa;->d:Z

    .line 85
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/aa;->e:Z

    .line 86
    iput-boolean p6, p0, Lcom/dropbox/core/v2/files/aa;->f:Z

    if-eqz p7, :cond_2

    .line 88
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long p5, p1, p3

    if-ltz p5, :cond_1

    .line 91
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x7d0

    cmp-long p5, p1, p3

    if-gtz p5, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 2000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2
    :goto_0
    iput-object p7, p0, Lcom/dropbox/core/v2/files/aa;->g:Ljava/lang/Long;

    .line 96
    iput-object p8, p0, Lcom/dropbox/core/v2/files/aa;->h:Lcom/dropbox/core/v2/files/au;

    .line 97
    iput-object p9, p0, Lcom/dropbox/core/v2/files/aa;->i:Lcom/dropbox/core/v2/fileproperties/m;

    .line 98
    iput-boolean p10, p0, Lcom/dropbox/core/v2/files/aa;->j:Z

    return-void

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 504
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 505
    check-cast p1, Lcom/dropbox/core/v2/files/aa;

    .line 506
    iget-object v2, p0, Lcom/dropbox/core/v2/files/aa;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/aa;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/aa;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/aa;->b:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/aa;->c:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/aa;->c:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/aa;->d:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/aa;->d:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/aa;->e:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/aa;->e:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/aa;->f:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/aa;->f:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/aa;->g:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/aa;->g:Ljava/lang/Long;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_6

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/aa;->h:Lcom/dropbox/core/v2/files/au;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/aa;->h:Lcom/dropbox/core/v2/files/au;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_6

    .line 513
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/au;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/aa;->i:Lcom/dropbox/core/v2/fileproperties/m;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/aa;->i:Lcom/dropbox/core/v2/fileproperties/m;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_6

    .line 514
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/aa;->j:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/aa;->j:Z

    if-ne v2, p1, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/dropbox/core/v2/files/aa;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/aa;->b:Z

    .line 482
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/aa;->c:Z

    .line 483
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/aa;->d:Z

    .line 484
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/aa;->e:Z

    .line 485
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/aa;->f:Z

    .line 486
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/aa;->g:Ljava/lang/Long;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/aa;->h:Lcom/dropbox/core/v2/files/au;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/aa;->i:Lcom/dropbox/core/v2/fileproperties/m;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/aa;->j:Z

    .line 490
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 480
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 525
    sget-object v0, Lcom/dropbox/core/v2/files/aa$a;->a:Lcom/dropbox/core/v2/files/aa$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/aa$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
