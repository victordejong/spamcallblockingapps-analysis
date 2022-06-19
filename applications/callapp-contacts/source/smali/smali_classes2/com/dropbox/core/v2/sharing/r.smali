.class public final Lcom/dropbox/core/v2/sharing/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/r$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/sharing/al;

.field protected final b:Lcom/dropbox/core/v2/sharing/al;

.field protected final c:Lcom/dropbox/core/v2/sharing/c;

.field protected final d:Lcom/dropbox/core/v2/sharing/bk;

.field protected final e:Lcom/dropbox/core/v2/sharing/bv;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/c;Lcom/dropbox/core/v2/sharing/bk;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/r;-><init>(Lcom/dropbox/core/v2/sharing/c;Lcom/dropbox/core/v2/sharing/bk;Lcom/dropbox/core/v2/sharing/al;Lcom/dropbox/core/v2/sharing/al;Lcom/dropbox/core/v2/sharing/bv;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/c;Lcom/dropbox/core/v2/sharing/bk;Lcom/dropbox/core/v2/sharing/al;Lcom/dropbox/core/v2/sharing/al;Lcom/dropbox/core/v2/sharing/bv;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/r;->a:Lcom/dropbox/core/v2/sharing/al;

    .line 59
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/r;->b:Lcom/dropbox/core/v2/sharing/al;

    if-eqz p1, :cond_1

    .line 63
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/r;->c:Lcom/dropbox/core/v2/sharing/c;

    if-eqz p2, :cond_0

    .line 67
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/r;->d:Lcom/dropbox/core/v2/sharing/bk;

    .line 68
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/r;->e:Lcom/dropbox/core/v2/sharing/bv;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedLinkPolicy\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'aclUpdatePolicy\' is null"

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

    .line 257
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 258
    check-cast p1, Lcom/dropbox/core/v2/sharing/r;

    .line 259
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/r;->c:Lcom/dropbox/core/v2/sharing/c;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/r;->c:Lcom/dropbox/core/v2/sharing/c;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/r;->d:Lcom/dropbox/core/v2/sharing/bk;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/r;->d:Lcom/dropbox/core/v2/sharing/bk;

    if-eq v2, v3, :cond_3

    .line 260
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/bk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/r;->a:Lcom/dropbox/core/v2/sharing/al;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/r;->a:Lcom/dropbox/core/v2/sharing/al;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_6

    .line 261
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/al;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/r;->b:Lcom/dropbox/core/v2/sharing/al;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/r;->b:Lcom/dropbox/core/v2/sharing/al;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_6

    .line 262
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/al;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/r;->e:Lcom/dropbox/core/v2/sharing/bv;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/r;->e:Lcom/dropbox/core/v2/sharing/bv;

    if-eq v2, p1, :cond_7

    if-eqz v2, :cond_6

    .line 263
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/bv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v0

    :cond_8
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/r;->a:Lcom/dropbox/core/v2/sharing/al;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/r;->b:Lcom/dropbox/core/v2/sharing/al;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/r;->c:Lcom/dropbox/core/v2/sharing/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/r;->d:Lcom/dropbox/core/v2/sharing/bk;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/r;->e:Lcom/dropbox/core/v2/sharing/bv;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 273
    sget-object v0, Lcom/dropbox/core/v2/sharing/r$a;->a:Lcom/dropbox/core/v2/sharing/r$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/r$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
