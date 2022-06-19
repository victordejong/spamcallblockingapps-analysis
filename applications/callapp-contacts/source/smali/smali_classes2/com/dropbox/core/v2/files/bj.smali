.class public final Lcom/dropbox/core/v2/files/bj;
.super Lcom/dropbox/core/v2/files/ak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/bj$a;
    }
.end annotation


# instance fields
.field protected final d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/dropbox/core/v2/files/bj;-><init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;Ljava/lang/Long;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ak;-><init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;)V

    .line 42
    iput-object p4, p0, Lcom/dropbox/core/v2/files/bj;->d:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 214
    sget-object v0, Lcom/dropbox/core/v2/files/bj$a;->a:Lcom/dropbox/core/v2/files/bj$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/bj$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

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

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 188
    check-cast p1, Lcom/dropbox/core/v2/files/bj;

    .line 189
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->a:Lcom/dropbox/core/v2/files/i;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bj;->a:Lcom/dropbox/core/v2/files/i;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->a:Lcom/dropbox/core/v2/files/i;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->a:Lcom/dropbox/core/v2/files/i;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bj;->a:Lcom/dropbox/core/v2/files/i;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->b:Lcom/dropbox/core/v2/files/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bj;->b:Lcom/dropbox/core/v2/files/z;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->b:Lcom/dropbox/core/v2/files/z;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->b:Lcom/dropbox/core/v2/files/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bj;->b:Lcom/dropbox/core/v2/files/z;

    .line 190
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->c:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bj;->c:Ljava/util/Date;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->c:Ljava/util/Date;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->c:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/bj;->c:Ljava/util/Date;

    .line 191
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/bj;->d:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/bj;->d:Ljava/lang/Long;

    if-eq v2, p1, :cond_6

    if-eqz v2, :cond_5

    .line 192
    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/dropbox/core/v2/files/bj;->d:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 174
    invoke-super {p0}, Lcom/dropbox/core/v2/files/ak;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 202
    sget-object v0, Lcom/dropbox/core/v2/files/bj$a;->a:Lcom/dropbox/core/v2/files/bj$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/bj$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
