.class public final Lcom/google/android/gms/internal/ads/bgs;
.super Lcom/google/android/gms/internal/ads/er;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bcr;

.field private c:Lcom/google/android/gms/internal/ads/bdo;

.field private d:Lcom/google/android/gms/internal/ads/bcf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bcr;Lcom/google/android/gms/internal/ads/bdo;Lcom/google/android/gms/internal/ads/bcf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/er;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bgs;->c:Lcom/google/android/gms/internal/ads/bdo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bgs;)Lcom/google/android/gms/internal/ads/bcf;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->B()Landroidx/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->y()Landroidx/b/g;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bcr;->B()Landroidx/b/g;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroidx/b/g;->size()I

    move-result v2

    invoke-virtual {v1}, Landroidx/b/g;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0}, Landroidx/b/g;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 14
    invoke-virtual {v0, v4}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroidx/b/g;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 17
    invoke-virtual {v1, v3}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)Z
    .locals 3

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->c:Lcom/google/android/gms/internal/ads/bdo;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bdo;->a(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v1

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bcr;->v()Lcom/google/android/gms/internal/ads/adt;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/bgv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bgv;-><init>(Lcom/google/android/gms/internal/ads/bgs;)V

    .line 43
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/dg;)V

    return v2
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dr;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->y()Landroidx/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dr;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/b;)V
    .locals 1

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    .line 68
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->x()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_2

    .line 73
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->c(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcf;->b()V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/emk;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anp;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->c:Lcom/google/android/gms/internal/ads/bdo;

    return-void
.end method

.method public final f()Lcom/google/android/gms/dynamic/b;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/dynamic/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->c:Lcom/google/android/gms/internal/ads/bcv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcv;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->w()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->v()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->x()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/qt;->a(Lcom/google/android/gms/dynamic/b;)V

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cX:Lcom/google/android/gms/internal/ads/af;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->w()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->w()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    new-instance v1, Landroidx/b/a;

    invoke-direct {v1}, Landroidx/b/a;-><init>()V

    const-string v2, "onSdkLoaded"

    .line 63
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "Trying to start OMID session before creation."

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgs;->b:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Illegal argument specified for omid partner name."

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgs;->d:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/bcf;->a(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
