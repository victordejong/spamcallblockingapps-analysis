.class final Lcom/google/android/gms/internal/ads/gc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/h9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/h9<",
        "Lcom/google/android/gms/internal/ads/wc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/uc;

.field final synthetic b:Lcom/google/android/gms/internal/ads/pb;

.field final synthetic c:Lcom/google/android/gms/internal/ads/vc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gc;->c:Lcom/google/android/gms/internal/ads/vc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gc;->a:Lcom/google/android/gms/internal/ads/uc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gc;->b:Lcom/google/android/gms/internal/ads/pb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/wc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gc;->c:Lcom/google/android/gms/internal/ads/vc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vc;->f(Lcom/google/android/gms/internal/ads/vc;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gc;->a:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp;->d()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gc;->a:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp;->d()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gc;->c:Lcom/google/android/gms/internal/ads/vc;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/vc;->g(Lcom/google/android/gms/internal/ads/vc;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gc;->b:Lcom/google/android/gms/internal/ads/pb;

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ads/g9;->h:Lcom/google/android/gms/internal/ads/h9;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/wc;->H0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    const-string v0, "/result"

    sget-object v1, Lcom/google/android/gms/internal/ads/g9;->p:Lcom/google/android/gms/internal/ads/v9;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/wc;->H0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gc;->a:Lcom/google/android/gms/internal/ads/uc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc;->b:Lcom/google/android/gms/internal/ads/pb;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/mp;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gc;->c:Lcom/google/android/gms/internal/ads/vc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc;->a:Lcom/google/android/gms/internal/ads/uc;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/vc;->i(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;)Lcom/google/android/gms/internal/ads/uc;

    const-string p2, "Successfully loaded JS Engine."

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
