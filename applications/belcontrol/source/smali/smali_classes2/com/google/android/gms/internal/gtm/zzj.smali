.class public final Lcom/google/android/gms/internal/gtm/zzj;
.super Lcom/google/android/gms/internal/gtm/zzuq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuq<",
        "Lcom/google/android/gms/internal/gtm/zzj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzqg:[Lcom/google/android/gms/internal/gtm/zzj;


# instance fields
.field public name:Ljava/lang/String;

.field private zzqh:Lcom/google/android/gms/internal/gtm/zzl;

.field public zzqi:Lcom/google/android/gms/internal/gtm/zzh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuq;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzbhl:I

    return-void
.end method

.method public static zzz()[Lcom/google/android/gms/internal/gtm/zzj;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzj;->zzqg:[Lcom/google/android/gms/internal/gtm/zzj;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzuu;->zzbhk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzj;->zzqg:[Lcom/google/android/gms/internal/gtm/zzj;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzj;

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzj;->zzqg:[Lcom/google/android/gms/internal/gtm/zzj;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzj;->zzqg:[Lcom/google/android/gms/internal/gtm/zzj;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zzj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/gtm/zzl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/gtm/zzh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzus;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    return v2

    :cond_b
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/gtm/zzj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzl;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzh;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/gtm/zzun;)Lcom/google/android/gms/internal/gtm/zzuw;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzuq;->zza(Lcom/google/android/gms/internal/gtm/zzun;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zza(Lcom/google/android/gms/internal/gtm/zzuw;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzuo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zza(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zza(ILcom/google/android/gms/internal/gtm/zzuw;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zza(ILcom/google/android/gms/internal/gtm/zzuw;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gtm/zzuq;->zza(Lcom/google/android/gms/internal/gtm/zzuo;)V

    return-void
.end method

.method public final zzy()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzuq;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqh:Lcom/google/android/gms/internal/gtm/zzl;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzb(ILcom/google/android/gms/internal/gtm/zzuw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzb(ILcom/google/android/gms/internal/gtm/zzuw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
