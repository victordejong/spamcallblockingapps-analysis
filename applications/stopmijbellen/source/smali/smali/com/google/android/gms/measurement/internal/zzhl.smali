.class final Lcom/google/android/gms/measurement/internal/zzhl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzkt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v2, "_err"

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfu;->zzP()V

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v1, "auto"

    move-object v5, p3

    move-object v9, p1

    .line 5
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzhw;->zzx(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    const-string p2, "auto"

    .line 6
    invoke-virtual {p1, p2, v2, p3}, Lcom/google/android/gms/measurement/internal/zzhw;->zzs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
