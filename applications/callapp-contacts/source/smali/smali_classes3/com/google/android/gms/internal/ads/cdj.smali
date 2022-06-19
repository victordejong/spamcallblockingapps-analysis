.class public final Lcom/google/android/gms/internal/ads/cdj;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/cdj;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/cdj;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/cdj;->c:Z

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/cdj;->d:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/cdj;->e:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/cdj;->f:I

    .line 8
    iput p7, p0, Lcom/google/android/gms/internal/ads/cdj;->g:F

    .line 9
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/cdj;->h:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 11
    check-cast p1, Landroid/os/Bundle;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:I

    const-string v1, "am"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cdj;->b:Z

    const-string v1, "ma"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cdj;->c:Z

    const-string v1, "sp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/cdj;->d:I

    const-string v1, "muv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/cdj;->e:I

    const-string v1, "rm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/cdj;->f:I

    const-string v1, "riv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/cdj;->g:F

    const-string v1, "android_app_volume"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cdj;->h:Z

    const-string v1, "android_app_muted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
