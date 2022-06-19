.class public final Lcom/google/android/gms/internal/ads/bwu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cef;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwu;->a:Lcom/google/android/gms/internal/ads/cef;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cae",
            "<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwu;->a:Lcom/google/android/gms/internal/ads/cef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwu;->a:Lcom/google/android/gms/internal/ads/cef;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cef;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwu;->a:Lcom/google/android/gms/internal/ads/cef;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cef;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/bwx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bwx;-><init>(Lcom/google/android/gms/internal/ads/bwu;)V

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final synthetic a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 10
    const-string/jumbo v0, "key_schema"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwu;->a:Lcom/google/android/gms/internal/ads/cef;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cef;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
