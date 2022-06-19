.class final Lcom/google/android/gms/internal/ads/ek2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/wn0;

.field final synthetic b:Lcom/google/android/gms/internal/ads/bp2;

.field final synthetic c:Lcom/google/android/gms/internal/ads/dw1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/dw1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ek2;->a:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ek2;->b:Lcom/google/android/gms/internal/ads/bp2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ek2;->c:Lcom/google/android/gms/internal/ads/dw1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 8

    .line 1
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek2;->a:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->z()Lcom/google/android/gms/internal/ads/ej2;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/ej2;->f0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek2;->b:Lcom/google/android/gms/internal/ads/bp2;

    .line 3
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/bp2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/fw1;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek2;->a:Lcom/google/android/gms/internal/ads/wn0;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->B()Lcom/google/android/gms/internal/ads/jj2;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/jj2;->b:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek2;->a:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->i(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->C4:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek2;->a:Lcom/google/android/gms/internal/ads/wn0;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->z()Lcom/google/android/gms/internal/ads/ej2;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->O:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v5, 0x2

    :cond_2
    move-object v0, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/fw1;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek2;->c:Lcom/google/android/gms/internal/ads/dw1;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dw1;->k(Lcom/google/android/gms/internal/ads/fw1;)V

    return-void
.end method
