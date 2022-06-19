.class public final Lcom/google/android/gms/internal/ads/zzdbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfj<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzhba:Lcom/google/android/gms/internal/ads/zzvx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzazn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbl;->zzhba:Lcom/google/android/gms/internal/ads/zzvx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbl;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method


# virtual methods
.method public final synthetic zzr(Ljava/lang/Object;)V
    .locals 3

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvx:Lcom/google/android/gms/internal/ads/zzaba;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbl;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzazn;->zzehz:I

    if-lt v1, v0, :cond_0

    const-string v0, "app_open_version"

    const-string v1, "2"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbl;->zzhba:Lcom/google/android/gms/internal/ads/zzvx;

    if-eqz v0, :cond_2

    .line 12
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvx;->orientation:I

    const/4 v1, 0x1

    const-string v2, "avo"

    if-ne v0, v1, :cond_1

    const-string v0, "p"

    .line 13
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbl;->zzhba:Lcom/google/android/gms/internal/ads/zzvx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvx;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "l"

    .line 15
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
