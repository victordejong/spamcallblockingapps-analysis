.class public final Lcom/google/android/gms/internal/ads/bvw;
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
.field private final a:Lcom/google/android/gms/internal/ads/dyk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dyk;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvw;->a:Lcom/google/android/gms/internal/ads/dyk;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvw;->a:Lcom/google/android/gms/internal/ads/dyk;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvw;->a:Lcom/google/android/gms/internal/ads/dyk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dyk;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    const-string/jumbo v0, "avo"

    const-string/jumbo v1, "p"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    :goto_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvw;->a:Lcom/google/android/gms/internal/ads/dyk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dyk;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 9
    const-string/jumbo v0, "avo"

    const-string/jumbo v1, "l"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
