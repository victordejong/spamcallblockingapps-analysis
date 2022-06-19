.class public Landroidx/work/impl/a/b;
.super Ljava/lang/Object;
.source "NetworkState.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Landroidx/work/impl/a/b;->a:Z

    .line 34
    iput-boolean p2, p0, Landroidx/work/impl/a/b;->b:Z

    .line 35
    iput-boolean p3, p0, Landroidx/work/impl/a/b;->c:Z

    .line 36
    iput-boolean p4, p0, Landroidx/work/impl/a/b;->d:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Landroidx/work/impl/a/b;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Landroidx/work/impl/a/b;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Landroidx/work/impl/a/b;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Landroidx/work/impl/a/b;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    instance-of v2, p1, Landroidx/work/impl/a/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    check-cast p1, Landroidx/work/impl/a/b;

    .line 84
    iget-boolean v2, p0, Landroidx/work/impl/a/b;->a:Z

    iget-boolean v3, p1, Landroidx/work/impl/a/b;->a:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/work/impl/a/b;->b:Z

    iget-boolean v3, p1, Landroidx/work/impl/a/b;->b:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/work/impl/a/b;->c:Z

    iget-boolean v3, p1, Landroidx/work/impl/a/b;->c:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/work/impl/a/b;->d:Z

    iget-boolean v3, p1, Landroidx/work/impl/a/b;->d:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    iget-boolean v1, p0, Landroidx/work/impl/a/b;->a:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 94
    :cond_0
    iget-boolean v1, p0, Landroidx/work/impl/a/b;->b:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x10

    .line 95
    :cond_1
    iget-boolean v1, p0, Landroidx/work/impl/a/b;->c:Z

    if-eqz v1, :cond_2

    add-int/lit16 v0, v0, 0x100

    .line 96
    :cond_2
    iget-boolean v1, p0, Landroidx/work/impl/a/b;->d:Z

    if-eqz v1, :cond_3

    add-int/lit16 v0, v0, 0x1000

    .line 97
    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    const-string/jumbo v0, "[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroidx/work/impl/a/b;->a:Z

    .line 104
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Landroidx/work/impl/a/b;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Landroidx/work/impl/a/b;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Landroidx/work/impl/a/b;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 103
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
