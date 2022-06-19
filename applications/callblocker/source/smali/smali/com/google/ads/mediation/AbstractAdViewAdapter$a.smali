.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$a;
.super Lcom/google/android/gms/ads/mediation/s;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/ads/b/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/s;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->e:Lcom/google/android/gms/ads/b/h;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->a(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->e()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->e()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->a(Lcom/google/android/gms/ads/b/c$b;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/s;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/q;->a(Z)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/q;->b(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->h()Lcom/google/android/gms/ads/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/q;->a(Lcom/google/android/gms/ads/p;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 14
    instance-of v0, p1, Lcom/google/android/gms/ads/b/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/ads/b/e;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->e:Lcom/google/android/gms/ads/b/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/e;->setNativeAd(Lcom/google/android/gms/ads/b/c;)V

    .line 16
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/b/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/f;

    .line 17
    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->e:Lcom/google/android/gms/ads/b/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/f;->a(Lcom/google/android/gms/ads/b/c;)V

    .line 19
    :cond_1
    return-void
.end method
