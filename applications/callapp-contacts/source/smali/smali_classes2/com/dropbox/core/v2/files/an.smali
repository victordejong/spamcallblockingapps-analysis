.class public final Lcom/dropbox/core/v2/files/an;
.super Lcom/dropbox/core/v2/files/ak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/an$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/files/an;-><init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ak;-><init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 182
    sget-object v0, Lcom/dropbox/core/v2/files/an$a;->a:Lcom/dropbox/core/v2/files/an$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/an$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

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

    .line 156
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    check-cast p1, Lcom/dropbox/core/v2/files/an;

    .line 158
    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->a:Lcom/dropbox/core/v2/files/i;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/an;->a:Lcom/dropbox/core/v2/files/i;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->a:Lcom/dropbox/core/v2/files/i;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->a:Lcom/dropbox/core/v2/files/i;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/an;->a:Lcom/dropbox/core/v2/files/i;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->b:Lcom/dropbox/core/v2/files/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/an;->b:Lcom/dropbox/core/v2/files/z;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->b:Lcom/dropbox/core/v2/files/z;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->b:Lcom/dropbox/core/v2/files/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/an;->b:Lcom/dropbox/core/v2/files/z;

    .line 159
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->c:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/an;->c:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->c:Ljava/util/Date;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/an;->c:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/an;->c:Ljava/util/Date;

    .line 160
    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 144
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

    .line 170
    sget-object v0, Lcom/dropbox/core/v2/files/an$a;->a:Lcom/dropbox/core/v2/files/an$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/an$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
