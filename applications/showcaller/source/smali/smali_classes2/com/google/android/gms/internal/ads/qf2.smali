.class final synthetic Lcom/google/android/gms/internal/ads/qf2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sf2;

.field private final b:Lcom/google/android/gms/internal/ads/ql2;

.field private final c:Lcom/google/android/gms/internal/ads/b01;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sf2;Lcom/google/android/gms/internal/ads/ql2;Lcom/google/android/gms/internal/ads/b01;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qf2;->a:Lcom/google/android/gms/internal/ads/sf2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qf2;->b:Lcom/google/android/gms/internal/ads/ql2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qf2;->c:Lcom/google/android/gms/internal/ads/b01;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf2;->b:Lcom/google/android/gms/internal/ads/ql2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qf2;->c:Lcom/google/android/gms/internal/ads/b01;

    check-cast p1, Lcom/google/android/gms/internal/ads/rj2;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/ql2;->b:Lcom/google/android/gms/internal/ads/rj2;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ej2;

    .line 3
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ej2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "FirstPartyRenderer"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/b01;->d(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    :goto_2
    return-object p1
.end method
