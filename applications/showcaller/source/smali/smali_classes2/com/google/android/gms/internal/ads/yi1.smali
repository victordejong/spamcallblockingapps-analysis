.class public final Lcom/google/android/gms/internal/ads/yi1;
.super Lcom/google/android/gms/internal/ads/yz;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/re1;

.field private f:Lcom/google/android/gms/internal/ads/rf1;

.field private g:Lcom/google/android/gms/internal/ads/me1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re1;Lcom/google/android/gms/internal/ads/rf1;Lcom/google/android/gms/internal/ads/me1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yi1;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yi1;->f:Lcom/google/android/gms/internal/ads/rf1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    return-void
.end method

.method static synthetic F6(Lcom/google/android/gms/internal/ads/yi1;)Lcom/google/android/gms/internal/ads/me1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    return-object p0
.end method


# virtual methods
.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->y()Lb/e/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final H0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/me1;->A(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final S(Lcom/google/android/gms/dynamic/a;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->f:Lcom/google/android/gms/internal/ads/rf1;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rf1;->d(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/re1;->r()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/xi1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/xi1;-><init>(Lcom/google/android/gms/internal/ads/yi1;)V

    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/wn0;->m0(Lcom/google/android/gms/internal/ads/ty;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/me1;->B()V

    :cond_0
    return-void
.end method

.method public final h()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->f:Lcom/google/android/gms/internal/ads/rf1;

    return-void
.end method

.method public final j()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->u()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->s()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/gb0;->zzf(Lcom/google/android/gms/dynamic/a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->t()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->t()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    new-instance v1, Lb/e/a;

    invoke-direct {v1}, Lb/e/a;-><init>()V

    const-string v2, "onSdkLoaded"

    .line 5
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "Trying to start OMID session before creation."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/me1;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->t()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->r()Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final p(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->v()Lb/e/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/gz;

    return-object p1
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Illegal argument specified for omid partner name."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Not starting OMID session. OM partner name has not been configured."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/me1;->l(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final x2(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->u()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->g:Lcom/google/android/gms/internal/ads/me1;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/me1;->n(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final zzg()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/re1;->v()Lb/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yi1;->e:Lcom/google/android/gms/internal/ads/re1;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/re1;->y()Lb/e/g;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lb/e/g;->size()I

    move-result v2

    invoke-virtual {v1}, Lb/e/g;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lb/e/g;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Lb/e/g;->i(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lb/e/g;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Lb/e/g;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
