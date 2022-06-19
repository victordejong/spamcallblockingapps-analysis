.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$d;
.super Lcom/google/android/gms/ads/mediation/w;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/k;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/w;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;->a:Lcom/google/android/gms/ads/b/k;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->a(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->d()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->a(Lcom/google/android/gms/ads/b/c$b;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->d(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->g()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->a(Ljava/lang/Double;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->e(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->f(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->a(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/w;->a(Z)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/w;->b(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->j()Lcom/google/android/gms/ads/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/w;->a(Lcom/google/android/gms/ads/p;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    instance-of v0, p1, Lcom/google/android/gms/ads/b/l;

    if-eqz v0, :cond_1

    .line 18
    check-cast p1, Lcom/google/android/gms/ads/b/l;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;->a:Lcom/google/android/gms/ads/b/k;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/b/l;->setNativeAd(Lcom/google/android/gms/ads/b/k;)V

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/gms/ads/b/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/f;

    .line 21
    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;->a:Lcom/google/android/gms/ads/b/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/f;->a(Lcom/google/android/gms/ads/b/k;)V

    goto :goto_0
.end method
