.class public final Lcom/google/android/gms/internal/gtm/zzy;
.super Lcom/google/android/gms/analytics/zzi;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/gtm/zzy;",
        ">;"
    }
.end annotation


# instance fields
.field public zzuq:Ljava/lang/String;

.field public zzur:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzuq:Ljava/lang/String;

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzur:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "fatal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzi;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzy;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzuq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzuq:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzy;->zzuq:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzur:Z

    if-eqz v0, :cond_1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/gtm/zzy;->zzur:Z

    :cond_1
    return-void
.end method
