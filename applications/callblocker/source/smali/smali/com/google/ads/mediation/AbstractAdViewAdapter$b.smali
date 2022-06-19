.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$b;
.super Lcom/google/android/gms/ads/mediation/r;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/ads/b/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/g;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/r;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$b;->e:Lcom/google/android/gms/ads/b/g;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/r;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/r;->a(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/r;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->e()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/r;->a(Lcom/google/android/gms/ads/b/c$b;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/r;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->g()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->g()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/mediation/r;->a(D)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->h()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/r;->d(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->i()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/r;->e(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/mediation/q;->a(Z)V

    .line 15
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/mediation/q;->b(Z)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->j()Lcom/google/android/gms/ads/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/q;->a(Lcom/google/android/gms/ads/p;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 18
    instance-of v0, p1, Lcom/google/android/gms/ads/b/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 19
    check-cast v0, Lcom/google/android/gms/ads/b/e;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$b;->e:Lcom/google/android/gms/ads/b/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/e;->setNativeAd(Lcom/google/android/gms/ads/b/c;)V

    .line 20
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/b/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/f;

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$b;->e:Lcom/google/android/gms/ads/b/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/f;->a(Lcom/google/android/gms/ads/b/c;)V

    .line 23
    :cond_1
    return-void
.end method
