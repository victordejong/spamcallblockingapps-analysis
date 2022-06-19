.class public Lcom/dropbox/core/v2/files/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ak$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/files/i;

.field protected final b:Lcom/dropbox/core/v2/files/z;

.field protected final c:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/files/ak;-><init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/i;Lcom/dropbox/core/v2/files/z;Ljava/util/Date;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ak;->a:Lcom/dropbox/core/v2/files/i;

    .line 43
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ak;->b:Lcom/dropbox/core/v2/files/z;

    .line 44
    invoke-static {p3}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ak;->c:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 199
    sget-object v0, Lcom/dropbox/core/v2/files/ak$a;->a:Lcom/dropbox/core/v2/files/ak$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ak$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

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

    .line 173
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    check-cast p1, Lcom/dropbox/core/v2/files/ak;

    .line 175
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ak;->a:Lcom/dropbox/core/v2/files/i;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ak;->a:Lcom/dropbox/core/v2/files/i;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ak;->b:Lcom/dropbox/core/v2/files/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ak;->b:Lcom/dropbox/core/v2/files/z;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_4

    .line 176
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ak;->c:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ak;->c:Ljava/util/Date;

    if-eq v2, p1, :cond_5

    if-eqz v2, :cond_4

    .line 177
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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ak;->a:Lcom/dropbox/core/v2/files/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ak;->b:Lcom/dropbox/core/v2/files/z;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ak;->c:Ljava/util/Date;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    sget-object v0, Lcom/dropbox/core/v2/files/ak$a;->a:Lcom/dropbox/core/v2/files/ak$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ak$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
