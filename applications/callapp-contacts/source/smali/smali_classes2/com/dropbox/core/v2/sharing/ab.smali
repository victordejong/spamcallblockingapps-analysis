.class public final Lcom/dropbox/core/v2/sharing/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ab$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/sharing/av;

.field protected final b:Lcom/dropbox/core/v2/sharing/au;

.field protected final c:Z

.field protected final d:Lcom/dropbox/core/v2/sharing/bg;

.field protected final e:Lcom/dropbox/core/v2/sharing/z;

.field protected final f:Lcom/dropbox/core/v2/sharing/x;


# direct methods
.method public constructor <init>(Z)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 79
    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/ab;-><init>(ZLcom/dropbox/core/v2/sharing/av;Lcom/dropbox/core/v2/sharing/au;Lcom/dropbox/core/v2/sharing/bg;Lcom/dropbox/core/v2/sharing/z;Lcom/dropbox/core/v2/sharing/x;)V

    return-void
.end method

.method public constructor <init>(ZLcom/dropbox/core/v2/sharing/av;Lcom/dropbox/core/v2/sharing/au;Lcom/dropbox/core/v2/sharing/bg;Lcom/dropbox/core/v2/sharing/z;Lcom/dropbox/core/v2/sharing/x;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ab;->a:Lcom/dropbox/core/v2/sharing/av;

    .line 64
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ab;->b:Lcom/dropbox/core/v2/sharing/au;

    .line 65
    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/ab;->c:Z

    .line 66
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/ab;->d:Lcom/dropbox/core/v2/sharing/bg;

    .line 67
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/ab;->e:Lcom/dropbox/core/v2/sharing/z;

    .line 68
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/ab;->f:Lcom/dropbox/core/v2/sharing/x;

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

    .line 302
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 303
    check-cast p1, Lcom/dropbox/core/v2/sharing/ab;

    .line 304
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ab;->c:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ab;->c:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ab;->a:Lcom/dropbox/core/v2/sharing/av;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ab;->a:Lcom/dropbox/core/v2/sharing/av;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_7

    .line 305
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/av;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ab;->b:Lcom/dropbox/core/v2/sharing/au;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ab;->b:Lcom/dropbox/core/v2/sharing/au;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_7

    .line 306
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/au;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ab;->d:Lcom/dropbox/core/v2/sharing/bg;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ab;->d:Lcom/dropbox/core/v2/sharing/bg;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_7

    .line 307
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/bg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ab;->e:Lcom/dropbox/core/v2/sharing/z;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ab;->e:Lcom/dropbox/core/v2/sharing/z;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_7

    .line 308
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ab;->f:Lcom/dropbox/core/v2/sharing/x;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ab;->f:Lcom/dropbox/core/v2/sharing/x;

    if-eq v2, p1, :cond_6

    if-eqz v2, :cond_7

    .line 309
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    return v0

    :cond_7
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ab;->a:Lcom/dropbox/core/v2/sharing/av;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ab;->b:Lcom/dropbox/core/v2/sharing/au;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/ab;->c:Z

    .line 285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ab;->d:Lcom/dropbox/core/v2/sharing/bg;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ab;->e:Lcom/dropbox/core/v2/sharing/z;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ab;->f:Lcom/dropbox/core/v2/sharing/x;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 282
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 319
    sget-object v0, Lcom/dropbox/core/v2/sharing/ab$a;->a:Lcom/dropbox/core/v2/sharing/ab$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ab$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
