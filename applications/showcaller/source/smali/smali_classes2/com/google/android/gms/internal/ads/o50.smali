.class final Lcom/google/android/gms/internal/ads/o50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/n20<",
        "Lcom/google/android/gms/internal/ads/e60;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/c60;

.field final synthetic b:Lcom/google/android/gms/internal/ads/x40;

.field final synthetic c:Lcom/google/android/gms/internal/ads/d60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o50;->c:Lcom/google/android/gms/internal/ads/d60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/o50;->a:Lcom/google/android/gms/internal/ads/c60;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/o50;->b:Lcom/google/android/gms/internal/ads/x40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/e60;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/o50;->c:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/d60;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/o50;->a:Lcom/google/android/gms/internal/ads/c60;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cj0;->e()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/o50;->a:Lcom/google/android/gms/internal/ads/c60;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cj0;->e()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/o50;->c:Lcom/google/android/gms/internal/ads/d60;

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/d60;->d(Lcom/google/android/gms/internal/ads/d60;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/o50;->b:Lcom/google/android/gms/internal/ads/x40;

    const-string v0, "/log"

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/m20;->g:Lcom/google/android/gms/internal/ads/n20;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/e60;->i0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    const-string v0, "/result"

    sget-object v1, Lcom/google/android/gms/internal/ads/m20;->o:Lcom/google/android/gms/internal/ads/c30;

    .line 7
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/e60;->i0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/o50;->a:Lcom/google/android/gms/internal/ads/c60;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o50;->b:Lcom/google/android/gms/internal/ads/x40;

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/cj0;->c(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/o50;->c:Lcom/google/android/gms/internal/ads/d60;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o50;->a:Lcom/google/android/gms/internal/ads/c60;

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/d60;->b(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;)Lcom/google/android/gms/internal/ads/c60;

    const-string p2, "Successfully loaded JS Engine."

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 11
    monitor-exit p1

    return-void

    .line 12
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
