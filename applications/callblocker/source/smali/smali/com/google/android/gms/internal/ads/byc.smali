.class public final Lcom/google/android/gms/internal/ads/byc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cgp;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/byc;->a:Lcom/google/android/gms/internal/ads/cgp;

    .line 3
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 4
    check-cast p1, Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byc;->a:Lcom/google/android/gms/internal/ads/cgp;

    if-eqz v0, :cond_0

    .line 6
    const-string/jumbo v0, "render_in_browser"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byc;->a:Lcom/google/android/gms/internal/ads/cgp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cgp;->a()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    const-string/jumbo v0, "disable_ml"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byc;->a:Lcom/google/android/gms/internal/ads/cgp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cgp;->b()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    :cond_0
    return-void
.end method
