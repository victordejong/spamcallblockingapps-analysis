.class public final Lcom/google/android/gms/internal/ads/zzcqi;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzgri:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfxf:Lcom/google/android/gms/internal/ads/zzbqu;

.field private final zzgoh:Lcom/google/android/gms/internal/ads/zzcqb;

.field private final zzgrf:Landroid/telephony/TelephonyManager;

.field private final zzgrg:Lcom/google/android/gms/internal/ads/zzcpv;

.field private zzgrh:Lcom/google/android/gms/internal/ads/zzuq;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgri:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;->zzcel:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;->zzcek:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;->zzcem:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;->zzcen:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;->zzceo:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbqu;Lcom/google/android/gms/internal/ads/zzcqb;Lcom/google/android/gms/internal/ads/zzcpv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqi;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzfxf:Lcom/google/android/gms/internal/ads/zzbqu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgoh:Lcom/google/android/gms/internal/ads/zzcqb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgrg:Lcom/google/android/gms/internal/ads/zzcpv;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgrf:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqi;)Lcom/google/android/gms/internal/ads/zzcpv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgrg:Lcom/google/android/gms/internal/ads/zzcpv;

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqi;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcqi;->zzl(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqi;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzug$zzm;Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;)[B
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcqi;->zza(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzug$zzm;Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;)[B

    move-result-object p0

    return-object p0
.end method

.method private final zza(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzug$zzm;Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzug$zzc$zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzug$zzm;",
            "Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;",
            ")[B"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzpg()Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzb(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqi;->zzbk(Z)Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzh(Lcom/google/android/gms/internal/ads/zzuq;)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcqi;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgrf:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzi(Lcom/google/android/gms/internal/ads/zzuq;)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgoh:Lcom/google/android/gms/internal/ads/zzcqb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqb;->zzow()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzev(J)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgoh:Lcom/google/android/gms/internal/ads/zzcqb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqb;->zzox()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzew(J)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgoh:Lcom/google/android/gms/internal/ads/zzcqb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqb;->getResponseCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzcl(I)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzb(Lcom/google/android/gms/internal/ads/zzug$zzm;)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgrh:Lcom/google/android/gms/internal/ads/zzuq;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzj(Lcom/google/android/gms/internal/ads/zzuq;)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcqi;->zzbk(Z)Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzf(Lcom/google/android/gms/internal/ads/zzuq;)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzeu(J)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqi;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/ContentResolver;)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcqi;->zzbk(Z)Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzuq;)Lcom/google/android/gms/internal/ads/zzug$zzo$zza$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejh;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcqi;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcqi;->zzk(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    move-result-object p0

    return-object p0
.end method

.method private static zzbk(Z)Lcom/google/android/gms/internal/ads/zzuq;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcca:Lcom/google/android/gms/internal/ads/zzuq;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzuq;->zzcbz:Lcom/google/android/gms/internal/ads/zzuq;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcqi;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzug$zzm;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcqi;->zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzug$zzm;

    move-result-object p0

    return-object p0
.end method

.method private final zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzug$zzm;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzop()Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzuq;->zzcca:Lcom/google/android/gms/internal/ads/zzuq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgrh:Lcom/google/android/gms/internal/ads/zzuq;

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzuq;->zzcbz:Lcom/google/android/gms/internal/ads/zzuq;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgrh:Lcom/google/android/gms/internal/ads/zzuq;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzcdi:Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzcdk:Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzcdj:Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;)Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzcdd:Lcom/google/android/gms/internal/ads/zzug$zzm$zza;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzcdg:Lcom/google/android/gms/internal/ads/zzug$zzm$zza;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzcdf:Lcom/google/android/gms/internal/ads/zzug$zzm$zza;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzcde:Lcom/google/android/gms/internal/ads/zzug$zzm$zza;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzug$zzm$zza;)Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzug$zzm;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static zzk(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;
    .locals 2

    const-string v0, "device"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdnz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "network"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdnz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "active_network_state"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgri:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;->zzcej:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    return-object p0
.end method

.method private static zzl(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzug$zzc$zza;",
            ">;"
        }
    .end annotation

    const-string v0, "ad_types"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "interstitial"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x3

    goto :goto_4

    :sswitch_1
    const-string v3, "rewarded"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x2

    goto :goto_4

    :sswitch_2
    const-string v3, "native"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    goto :goto_4

    :sswitch_3
    const-string v3, "banner"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcab:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    goto :goto_5

    :pswitch_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcad:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    goto :goto_5

    :pswitch_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcak:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    goto :goto_5

    :pswitch_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcag:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    goto :goto_5

    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcac:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zzbj(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzfxf:Lcom/google/android/gms/internal/ads/zzbqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqu;->zzali()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcqh;-><init>(Lcom/google/android/gms/internal/ads/zzcqi;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method
