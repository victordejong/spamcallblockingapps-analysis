.class public final Lcom/google/android/gms/internal/ads/bwf;
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
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bwf;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bwf;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bwf;->c:Z

    .line 5
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    const-string/jumbo v0, "c_pcbg"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bwf;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    const-string/jumbo v0, "c_phbg"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bwf;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    const-string/jumbo v0, "ar_lr"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bwf;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    return-void
.end method
