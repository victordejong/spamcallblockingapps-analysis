.class public final Lcom/google/android/gms/internal/ads/bwl;
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
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:F

.field private final h:Z


# direct methods
.method public constructor <init>(IZZIIIFZ)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/bwl;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/bwl;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bwl;->c:Z

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/bwl;->d:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/bwl;->e:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/bwl;->f:I

    .line 8
    iput p7, p0, Lcom/google/android/gms/internal/ads/bwl;->g:F

    .line 9
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/bwl;->h:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 11
    check-cast p1, Landroid/os/Bundle;

    .line 12
    const-string/jumbo v0, "am"

    iget v1, p0, Lcom/google/android/gms/internal/ads/bwl;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    const-string/jumbo v0, "ma"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bwl;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    const-string/jumbo v0, "sp"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bwl;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    const-string/jumbo v0, "muv"

    iget v1, p0, Lcom/google/android/gms/internal/ads/bwl;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const-string/jumbo v0, "rm"

    iget v1, p0, Lcom/google/android/gms/internal/ads/bwl;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    const-string/jumbo v0, "riv"

    iget v1, p0, Lcom/google/android/gms/internal/ads/bwl;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    const-string/jumbo v0, "android_app_volume"

    iget v1, p0, Lcom/google/android/gms/internal/ads/bwl;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 19
    const-string/jumbo v0, "android_app_muted"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bwl;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method
