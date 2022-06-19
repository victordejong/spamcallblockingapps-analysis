.class public final Lcom/google/android/gms/internal/ads/cao;
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
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZI)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cao;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/cao;->b:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/cao;->c:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/cao;->d:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/cao;->e:Z

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/cao;->f:I

    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    check-cast p1, Landroid/os/Bundle;

    .line 10
    const-string/jumbo v3, "carrier"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cao;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cao;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    const-string/jumbo v0, "cnt"

    iget v3, p0, Lcom/google/android/gms/internal/ads/cao;->b:I

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/cao;->b:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 13
    :goto_1
    invoke-static {p1, v0, v3, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 14
    const-string/jumbo v0, "gnt"

    iget v1, p0, Lcom/google/android/gms/internal/ads/cao;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    const-string/jumbo v0, "pt"

    iget v1, p0, Lcom/google/android/gms/internal/ads/cao;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const-string/jumbo v0, "device"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 17
    const-string/jumbo v1, "device"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    const-string/jumbo v1, "network"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 19
    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    const-string/jumbo v0, "active_network_state"

    iget v2, p0, Lcom/google/android/gms/internal/ads/cao;->f:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    const-string/jumbo v0, "active_network_metered"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cao;->e:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    return-void

    :cond_0
    move v0, v2

    .line 10
    goto :goto_0

    :cond_1
    move v1, v2

    .line 12
    goto :goto_1
.end method
