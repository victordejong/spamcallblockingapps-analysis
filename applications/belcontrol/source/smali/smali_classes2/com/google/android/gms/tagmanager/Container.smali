.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/Container$zzb;,
        Lcom/google/android/gms/tagmanager/Container$zza;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    }
.end annotation


# instance fields
.field private final zzaec:Ljava/lang/String;

.field private final zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

.field private zzaee:Lcom/google/android/gms/tagmanager/zzfb;

.field private zzaef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzaeg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzaeh:J

.field private volatile zzaei:Ljava/lang/String;

.field private final zzrm:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaef:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeg:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaei:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzrm:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->zzaec:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeh:J

    iget-object p1, p6, Lcom/google/android/gms/internal/gtm/zzk;->zzqk:Lcom/google/android/gms/internal/gtm/zzi;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzor;->zza(Lcom/google/android/gms/internal/gtm/zzi;)Lcom/google/android/gms/internal/gtm/zzov;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzoz; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/internal/gtm/zzov;)V

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x2e

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Not loading resource: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it is invalid: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p6, Lcom/google/android/gms/internal/gtm/zzk;->zzqj:[Lcom/google/android/gms/internal/gtm/zzj;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length p3, p1

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_0

    aget-object p5, p1, p4

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzhb()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zze(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzaef:Ljava/util/Map;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeg:Ljava/util/Map;

    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzaei:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzrm:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->zzaec:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeh:J

    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/internal/gtm/zzov;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/gtm/zzov;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzov;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaei:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zziy()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zziz()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzaiv:Lcom/google/android/gms/tagmanager/zzeh$zza;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    new-instance v8, Lcom/google/android/gms/tagmanager/zzdq;

    invoke-direct {v8}, Lcom/google/android/gms/tagmanager/zzdq;-><init>()V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfb;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/Container;->zzrm:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/Container;->zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v6, Lcom/google/android/gms/tagmanager/Container$zza;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/google/android/gms/tagmanager/Container$zza;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzu;)V

    new-instance v7, Lcom/google/android/gms/tagmanager/Container$zzb;

    invoke-direct {v7, p0, v1}, Lcom/google/android/gms/tagmanager/Container$zzb;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzu;)V

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/zzfb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzov;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzbo;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/tagmanager/zzfb;)V

    const-string p1, "_gtm.loadEventEnabled"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/Container;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "gtm.id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/Container;->zzaec:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "gtm.load"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/tagmanager/zzfb;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaee:Lcom/google/android/gms/tagmanager/zzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzhb()Lcom/google/android/gms/tagmanager/zzfb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaee:Lcom/google/android/gms/tagmanager/zzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzhb()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "getBoolean called for closed container."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzjz()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzbj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzg(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getBoolean() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaec:Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzhb()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "getDouble called for closed container."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzjy()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzbj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzf(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getDouble() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getLastRefreshTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeh:J

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzhb()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "getLong called for closed container."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzjx()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzbj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zze(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getLong() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzhb()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "getString called for closed container."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzkb()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzbj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getString() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public isDefault()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerFunctionCallMacroCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;)V
    .locals 2

    const-string v0, "Macro handler must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaef:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaef:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerFunctionCallTagCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;)V
    .locals 2

    const-string v0, "Tag callback must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeg:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaee:Lcom/google/android/gms/tagmanager/zzfb;

    return-void
.end method

.method public unregisterFunctionCallMacroCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaef:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaef:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterFunctionCallTagCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzal(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaef:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaef:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzam(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzaeg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzan(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzhb()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzan(Ljava/lang/String;)V

    return-void
.end method

.method public final zzha()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzaei:Ljava/lang/String;

    return-object v0
.end method
