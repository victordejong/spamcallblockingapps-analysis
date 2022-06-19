.class public final Lcom/dropbox/core/v2/files/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/w$a;,
        Lcom/dropbox/core/v2/files/w$b;
    }
.end annotation


# instance fields
.field a:Lcom/dropbox/core/v2/files/w$b;

.field b:Lcom/dropbox/core/v2/files/ai;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 148
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/w;

    if-eqz v2, :cond_6

    .line 149
    check-cast p1, Lcom/dropbox/core/v2/files/w;

    .line 150
    iget-object v2, p0, Lcom/dropbox/core/v2/files/w;->a:Lcom/dropbox/core/v2/files/w$b;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/w;->a:Lcom/dropbox/core/v2/files/w$b;

    if-eq v2, v3, :cond_2

    return v1

    .line 153
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/w$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/w;->a:Lcom/dropbox/core/v2/files/w$b;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/w$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_3

    return v1

    .line 155
    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/w;->b:Lcom/dropbox/core/v2/files/ai;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/w;->b:Lcom/dropbox/core/v2/files/ai;

    if-eq v2, p1, :cond_5

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ai;->equals(Ljava/lang/Object;)Z

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
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/dropbox/core/v2/files/w;->a:Lcom/dropbox/core/v2/files/w$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/w;->b:Lcom/dropbox/core/v2/files/ai;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 167
    sget-object v0, Lcom/dropbox/core/v2/files/w$a;->a:Lcom/dropbox/core/v2/files/w$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/w$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
