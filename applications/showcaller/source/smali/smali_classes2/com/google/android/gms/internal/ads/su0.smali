.class final Lcom/google/android/gms/internal/ads/su0;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ads/tu0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tu0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/su0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tu0;->q(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/hk2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tu0;->p(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/yo2;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tu0;->b(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/rj2;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tu0;->m(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/ej2;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/su0;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tu0;->m(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/ej2;

    move-result-object v0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ej2;->d:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/yo2;->b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/hk2;->a(Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 7

    .line 1
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tu0;->q(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/hk2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tu0;->p(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/yo2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/tu0;->b(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/rj2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/tu0;->m(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/ej2;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/su0;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/su0;->b:Lcom/google/android/gms/internal/ads/tu0;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/tu0;->m(Lcom/google/android/gms/internal/ads/tu0;)Lcom/google/android/gms/internal/ads/ej2;

    move-result-object v3

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/ej2;->d:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/yo2;->b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/hk2;->a(Ljava/util/List;)V

    return-void
.end method
