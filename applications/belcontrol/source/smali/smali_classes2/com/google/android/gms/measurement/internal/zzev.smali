.class public final Lcom/google/android/gms/measurement/internal/zzev;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzex;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzex;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "health_monitor"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmp-long p5, p3, p1

    if-lez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const-string p1, "health_monitor:start"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:Ljava/lang/String;

    const-string p1, "health_monitor:count"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Ljava/lang/String;

    const-string p1, "health_monitor:value"

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zze:J

    return-void
.end method

.method private final zzc()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final zzd()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zza:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;J)V
    .locals 7

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzd()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzc()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Ljava/lang/String;

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    const-wide/16 v2, 0x1

    cmp-long v4, p2, v0

    if-gtz v4, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Ljava/lang/String;

    invoke-interface {p2, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzf()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    add-long/2addr p2, v2

    const-wide v2, 0x7fffffffffffffffL

    div-long v4, v2, p2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    and-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Ljava/lang/String;

    invoke-interface {v6, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Ljava/lang/String;

    invoke-interface {v6, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zzb()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzd()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzc()V

    move-wide v0, v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzev;->zze:J

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-gez v7, :cond_1

    return-object v6

    :cond_1
    add-long/2addr v4, v4

    cmp-long v7, v0, v4

    if-lez v7, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzc()V

    return-object v6

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzev;->zzc:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzev;->zzc()V

    if-eqz v0, :cond_4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzex;->zza:Landroid/util/Pair;

    return-object v0
.end method
