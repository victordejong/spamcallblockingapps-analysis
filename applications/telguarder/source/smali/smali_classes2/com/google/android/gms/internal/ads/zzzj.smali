.class public final Lcom/google/android/gms/internal/ads/zzzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private zzado:I

.field private zzadp:I

.field private zzadq:Ljava/lang/String;

.field private zzbni:Z

.field private zzcho:I

.field private zzchr:Ljava/lang/String;

.field private zzcht:Ljava/lang/String;

.field private final zzchv:Landroid/os/Bundle;

.field private zzchx:Ljava/lang/String;

.field private zzchz:Z

.field private final zzcib:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcic:I

.field private final zzcjz:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcka:Landroid/os/Bundle;

.field private final zzckb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzckc:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzckd:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcke:Lcom/google/android/gms/ads/query/AdInfo;

.field private zzmx:Ljava/util/Date;

.field private zznb:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcjz:Ljava/util/HashSet;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcka:Landroid/os/Bundle;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckb:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckc:Ljava/util/HashSet;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchv:Landroid/os/Bundle;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckd:Ljava/util/HashSet;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcib:Ljava/util/List;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcho:I

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzbni:Z

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzado:I

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzadp:I

    const v0, 0xea60

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcic:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/Date;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzmx:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcht:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcib:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzzj;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcho:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/HashSet;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcjz:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzzj;)Landroid/location/Location;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zznb:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzzj;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzbni:Z

    return p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzzj;)Landroid/os/Bundle;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcka:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/HashMap;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckb:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchx:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzzj;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzado:I

    return p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/HashSet;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckc:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzzj;)Landroid/os/Bundle;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchv:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/util/HashSet;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckd:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzzj;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchz:Z

    return p0
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/ads/zzzj;)Lcom/google/android/gms/ads/query/AdInfo;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcke:Lcom/google/android/gms/ads/query/AdInfo;

    return-object p0
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzzj;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzadp:I

    return p0
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/ads/zzzj;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzadq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/ads/zzzj;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcic:I

    return p0
.end method


# virtual methods
.method public final setManualImpressionsEnabled(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzbni:Z

    return-void
.end method

.method public final zza(Landroid/location/Location;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zznb:Landroid/location/Location;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    instance-of v0, p1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    if-eqz v0, :cond_0

    .line 17
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    check-cast p1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckb:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/query/AdInfo;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcke:Lcom/google/android/gms/ads/query/AdInfo;

    return-void
.end method

.method public final zza(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcka:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzmx:Ljava/util/Date;

    return-void
.end method

.method public final zzaa(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchz:Z

    return-void
.end method

.method public final zzb(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcka:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcka:Landroid/os/Bundle;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcka:Landroid/os/Bundle;

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcib:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "neighboring content URL should not be null or empty"

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcib:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzcf(Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcjz:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzcg(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckc:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzch(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckc:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzci(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcht:Ljava/lang/String;

    return-void
.end method

.method public final zzcj(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchr:Ljava/lang/String;

    return-void
.end method

.method public final zzck(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchx:Ljava/lang/String;

    return-void
.end method

.method public final zzcl(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzckd:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzcm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "G"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PG"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "T"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MA"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzadq:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final zzcw(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcho:I

    return-void
.end method

.method public final zzcx(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 70
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzadp:I

    :cond_1
    return-void
.end method

.method public final zzcy(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzcic:I

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzchv:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzz(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->zzado:I

    return-void
.end method
