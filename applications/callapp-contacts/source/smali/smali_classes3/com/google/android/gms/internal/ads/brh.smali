.class final Lcom/google/android/gms/internal/ads/brh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/bre;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bre;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brh;->a:Lcom/google/android/gms/internal/ads/bre;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/brh;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .line 4
    check-cast p1, Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brh;->a:Lcom/google/android/gms/internal/ads/bre;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bre;->a(Lcom/google/android/gms/internal/ads/bre;)Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bre;->a(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bre;->b(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/eht$t$b;

    move-result-object v6

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brh;->a:Lcom/google/android/gms/internal/ads/bre;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/bre;->a(Lcom/google/android/gms/internal/ads/bre;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/eht$r;

    move-result-object v5

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/brh;->a:Lcom/google/android/gms/internal/ads/bre;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bre;->b(Lcom/google/android/gms/internal/ads/bre;)Lcom/google/android/gms/internal/ads/bqv;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/brg;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/brh;->b:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/brg;-><init>(Lcom/google/android/gms/internal/ads/brh;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/eht$r;Lcom/google/android/gms/internal/ads/eht$t$b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/bqv;->a(Lcom/google/android/gms/internal/ads/css;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "Failed to get signals bundle"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void
.end method
