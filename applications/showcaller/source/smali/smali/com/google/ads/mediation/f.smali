.class final Lcom/google/ads/mediation/f;
.super Lcom/google/android/gms/ads/mediation/v;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final s:Lcom/google/android/gms/ads/formats/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/v;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/f;->s:Lcom/google/android/gms/ads/formats/e;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->w(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->y(Ljava/util/List;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->u(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->e()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->x(Lcom/google/android/gms/ads/formats/b;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->v(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->t(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->h()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->C(Ljava/lang/Double;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->D(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->B(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->H(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->A(Z)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/v;->z(Z)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/e;->j()Lcom/google/android/gms/ads/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/v;->G(Lcom/google/android/gms/ads/s;)V

    return-void
.end method


# virtual methods
.method public final E(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/ads/formats/zzg;

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 2
    sget-object p2, Lcom/google/android/gms/ads/formats/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/h;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    throw p3

    .line 4
    :cond_1
    check-cast p1, Lcom/google/android/gms/ads/formats/zzg;

    .line 5
    throw p3
.end method
