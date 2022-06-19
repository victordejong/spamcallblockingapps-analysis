.class public final Lcom/google/android/gms/internal/ads/bzr;
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

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(ZZLjava/lang/String;ZIII)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bzr;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/bzr;->b:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bzr;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/bzr;->d:Z

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/bzr;->e:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/bzr;->f:I

    .line 8
    iput p7, p0, Lcom/google/android/gms/internal/ads/bzr;->g:I

    .line 9
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 10
    check-cast p1, Landroid/os/Bundle;

    .line 11
    const-string/jumbo v0, "js"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzr;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "is_nonagon"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    const-string/jumbo v1, "extra_caps"

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bs:Lcom/google/android/gms/internal/ads/ect;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "target_api"

    iget v1, p0, Lcom/google/android/gms/internal/ads/bzr;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    const-string/jumbo v0, "dv"

    iget v1, p0, Lcom/google/android/gms/internal/ads/bzr;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    const-string/jumbo v0, "lv"

    iget v1, p0, Lcom/google/android/gms/internal/ads/bzr;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    const-string/jumbo v0, "sdk_env"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 20
    const-string/jumbo v2, "mf"

    sget-object v0, Lcom/google/android/gms/internal/ads/an;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    const-string/jumbo v0, "instant_app"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/bzr;->a:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    const-string/jumbo v0, "lite"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/bzr;->b:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    const-string/jumbo v0, "is_privileged_process"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/bzr;->d:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    const-string/jumbo v0, "sdk_env"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    const-string/jumbo v0, "build_meta"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 26
    const-string/jumbo v2, "cl"

    const-string/jumbo v3, "305933803"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v2, "rapid_rc"

    const-string/jumbo v3, "dev"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v2, "rapid_rollup"

    const-string/jumbo v3, "HEAD"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v2, "build_meta"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
