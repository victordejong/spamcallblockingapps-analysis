.class public Lcom/google/android/gms/internal/ads/ejj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/eiz;

.field private final b:Lcom/google/android/gms/internal/ads/eiw;

.field private final c:Lcom/google/android/gms/internal/ads/c;

.field private final d:Lcom/google/android/gms/internal/ads/fx;

.field private final e:Lcom/google/android/gms/internal/ads/ud;

.field private final f:Lcom/google/android/gms/internal/ads/vg;

.field private final g:Lcom/google/android/gms/internal/ads/qx;

.field private final h:Lcom/google/android/gms/internal/ads/ga;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eiz;Lcom/google/android/gms/internal/ads/eiw;Lcom/google/android/gms/internal/ads/c;Lcom/google/android/gms/internal/ads/fx;Lcom/google/android/gms/internal/ads/ud;Lcom/google/android/gms/internal/ads/vg;Lcom/google/android/gms/internal/ads/qx;Lcom/google/android/gms/internal/ads/ga;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ejj;->a:Lcom/google/android/gms/internal/ads/eiz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ejj;->b:Lcom/google/android/gms/internal/ads/eiw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ejj;->c:Lcom/google/android/gms/internal/ads/c;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ejj;->d:Lcom/google/android/gms/internal/ads/fx;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ejj;->e:Lcom/google/android/gms/internal/ads/ud;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ejj;->f:Lcom/google/android/gms/internal/ads/vg;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ejj;->g:Lcom/google/android/gms/internal/ads/qx;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ejj;->h:Lcom/google/android/gms/internal/ads/ga;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/eiz;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ejj;->a:Lcom/google/android/gms/internal/ads/eiz;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1011
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "no_ads_fallback"

    .line 1012
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flow"

    .line 1013
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    move-result-object p1

    .line 1015
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->g()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    const-string v2, "gmob-apps"

    .line 1016
    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/eiw;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ejj;->b:Lcom/google/android/gms/internal/ads/eiw;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/c;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ejj;->c:Lcom/google/android/gms/internal/ads/c;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/fx;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ejj;->d:Lcom/google/android/gms/internal/ads/fx;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/ga;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ejj;->h:Lcom/google/android/gms/internal/ads/ga;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/ud;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ejj;->e:Lcom/google/android/gms/internal/ads/ud;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/qx;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ejj;->g:Lcom/google/android/gms/internal/ads/qx;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/dv;
    .locals 1

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/ejx;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/ejx;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/ads/dv;

    return-object p1
.end method

.method public final a(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/ed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ed;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/ejw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ejw;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/ed;

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/ekp;
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/ejv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ejv;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)V

    const/4 p2, 0x0

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/ads/ekp;

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/ekw;
    .locals 7

    .line 18
    new-instance v6, Lcom/google/android/gms/internal/ads/ejq;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ejq;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)V

    const/4 p2, 0x0

    .line 19
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/ads/ekw;

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/ql;
    .locals 1

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/ejo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ejo;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;)V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/ads/ql;

    return-object p1
.end method

.method public final b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/ekw;
    .locals 7

    .line 22
    new-instance v6, Lcom/google/android/gms/internal/ads/ejs;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ejs;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)V

    const/4 p2, 0x0

    .line 23
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/ekw;

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/uq;
    .locals 1

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/ejk;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ejk;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)V

    const/4 p2, 0x0

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Lcom/google/android/gms/internal/ads/uq;

    return-object p1
.end method
