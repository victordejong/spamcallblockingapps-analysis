.class public final Lcom/google/android/gms/internal/ads/ccw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cgy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cgy<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzwc;

.field private final b:Lcom/google/android/gms/internal/ads/zzbar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ccw;->a:Lcom/google/android/gms/internal/ads/zzwc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ccw;->b:Lcom/google/android/gms/internal/ads/zzbar;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cZ:Lcom/google/android/gms/internal/ads/af;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ccw;->b:Lcom/google/android/gms/internal/ads/zzbar;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    if-lt v1, v0, :cond_0

    const-string v0, "app_open_version"

    const-string v1, "2"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccw;->a:Lcom/google/android/gms/internal/ads/zzwc;

    if-eqz v0, :cond_2

    .line 12
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzwc;->orientation:I

    const/4 v1, 0x1

    const-string v2, "avo"

    if-ne v0, v1, :cond_1

    const-string v0, "p"

    .line 13
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccw;->a:Lcom/google/android/gms/internal/ads/zzwc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzwc;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "l"

    .line 15
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
