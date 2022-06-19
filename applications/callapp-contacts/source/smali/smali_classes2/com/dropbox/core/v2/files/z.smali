.class public final Lcom/dropbox/core/v2/files/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/z$a;
    }
.end annotation


# instance fields
.field protected final a:D

.field protected final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/dropbox/core/v2/files/z;->a:D

    .line 36
    iput-wide p3, p0, Lcom/dropbox/core/v2/files/z;->b:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 75
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    check-cast p1, Lcom/dropbox/core/v2/files/z;

    .line 77
    iget-wide v2, p0, Lcom/dropbox/core/v2/files/z;->a:D

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/z;->a:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/dropbox/core/v2/files/z;->b:D

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/z;->b:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget-wide v1, p0, Lcom/dropbox/core/v2/files/z;->a:D

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/files/z;->b:D

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 88
    sget-object v0, Lcom/dropbox/core/v2/files/z$a;->a:Lcom/dropbox/core/v2/files/z$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/z$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
