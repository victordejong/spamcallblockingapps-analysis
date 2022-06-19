.class public final Lcom/dropbox/core/v2/sharing/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/q$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/sharing/o;

.field protected final b:Z

.field protected final c:Lcom/dropbox/core/v2/sharing/ap;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/o;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/q;-><init>(Lcom/dropbox/core/v2/sharing/o;ZLcom/dropbox/core/v2/sharing/ap;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/o;ZLcom/dropbox/core/v2/sharing/ap;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/q;->a:Lcom/dropbox/core/v2/sharing/o;

    .line 46
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/q;->b:Z

    .line 47
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/q;->c:Lcom/dropbox/core/v2/sharing/ap;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'action\' is null"

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

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    check-cast p1, Lcom/dropbox/core/v2/sharing/q;

    .line 115
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/q;->a:Lcom/dropbox/core/v2/sharing/o;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/q;->a:Lcom/dropbox/core/v2/sharing/o;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/q;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/q;->b:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/q;->c:Lcom/dropbox/core/v2/sharing/ap;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/q;->c:Lcom/dropbox/core/v2/sharing/ap;

    if-eq v2, p1, :cond_3

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/ap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/q;->a:Lcom/dropbox/core/v2/sharing/o;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/q;->b:Z

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/q;->c:Lcom/dropbox/core/v2/sharing/ap;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 127
    sget-object v0, Lcom/dropbox/core/v2/sharing/q$a;->a:Lcom/dropbox/core/v2/sharing/q$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/q$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
