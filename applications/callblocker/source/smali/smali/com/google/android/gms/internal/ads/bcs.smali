.class public final Lcom/google/android/gms/internal/ads/bcs;
.super Lcom/google/android/gms/internal/ads/cu;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ayx;

.field private c:Lcom/google/android/gms/internal/ads/azv;

.field private d:Lcom/google/android/gms/internal/ads/aym;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ayx;Lcom/google/android/gms/internal/ads/azv;Lcom/google/android/gms/internal/ads/aym;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcs;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bcs;->c:Lcom/google/android/gms/internal/ads/azv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bcs;)Lcom/google/android/gms/internal/ads/aym;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->B()Landroidx/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->y()Landroidx/b/g;

    move-result-object v4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->B()Landroidx/b/g;

    move-result-object v5

    .line 11
    invoke-virtual {v4}, Landroidx/b/g;->size()I

    move-result v0

    invoke-virtual {v5}, Landroidx/b/g;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v6, v0, [Ljava/lang/String;

    move v1, v2

    move v3, v2

    .line 13
    :goto_0
    invoke-virtual {v4}, Landroidx/b/g;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 14
    invoke-virtual {v4, v1}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v3

    .line 15
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    .line 16
    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroidx/b/g;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 17
    invoke-virtual {v5, v2}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    move v0, v1

    .line 44
    :goto_0
    return v0

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bcs;->c:Lcom/google/android/gms/internal/ads/azv;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bcs;->c:Lcom/google/android/gms/internal/ads/azv;

    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/azv;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 39
    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    .line 40
    goto :goto_0

    :cond_1
    move v0, v1

    .line 38
    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->v()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bcr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bcr;-><init>(Lcom/google/android/gms/internal/ads/bcs;)V

    .line 43
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/bj;)V

    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bu;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->y()Landroidx/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bu;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 61
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ayx;->x()Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/aym;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aym;->a()V

    .line 26
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aym;->a(Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->k()V

    .line 30
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->c:Lcom/google/android/gms/internal/ads/azv;

    .line 32
    return-void
.end method

.method public final f()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aym;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ayx;->w()Lcom/google/android/gms/internal/ads/act;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ayx;->v()Lcom/google/android/gms/internal/ads/act;

    move-result-object v1

    .line 52
    if-nez v1, :cond_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->x()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/nv;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    const-string/jumbo v0, "Trying to start OMID session before creation."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcs;->b:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->A()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "Google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string/jumbo v0, "Illegal argument specified for omid partner name."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcs;->d:Lcom/google/android/gms/internal/ads/aym;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aym;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
