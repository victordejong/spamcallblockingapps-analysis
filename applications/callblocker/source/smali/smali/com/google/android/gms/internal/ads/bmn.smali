.class final Lcom/google/android/gms/internal/ads/bmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/bmj;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmj;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmn;->a:Lcom/google/android/gms/internal/ads/bmj;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/bmn;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 4
    check-cast p1, Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmn;->a:Lcom/google/android/gms/internal/ads/bmj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/bmj;->a(Lcom/google/android/gms/internal/ads/bmj;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmn;->a:Lcom/google/android/gms/internal/ads/bmj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/bmj;->b(Lcom/google/android/gms/internal/ads/bmj;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dwv$t$c;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmn;->a:Lcom/google/android/gms/internal/ads/bmj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/bmj;->c(Lcom/google/android/gms/internal/ads/bmj;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dwv$r;

    move-result-object v4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmn;->a:Lcom/google/android/gms/internal/ads/bmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bmj;->a(Lcom/google/android/gms/internal/ads/bmj;)Lcom/google/android/gms/internal/ads/bma;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/ads/bmm;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/bmn;->b:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bmm;-><init>(Lcom/google/android/gms/internal/ads/bmn;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/dwv$r;Lcom/google/android/gms/internal/ads/dwv$t$c;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/bma;->a(Lcom/google/android/gms/internal/ads/ckg;)V

    .line 9
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 2
    const-string/jumbo v0, "Failed to get signals bundle"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 3
    return-void
.end method
