.class public final Lcom/google/android/gms/internal/ads/zzawm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawz;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static zzdzv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;

.field private final zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

.field private final zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

.field private final zzdzx:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdzy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdzz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeaa:Lcom/google/android/gms/internal/ads/zzaxb;

.field private zzeab:Z

.field private zzeac:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzead:Z

.field private zzeae:Z

.field private zzeaf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzv:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzawu;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzy:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzz:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeac:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzead:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeae:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeaf:Z

    const-string v0, "SafeBrowsing config is not present."

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->context:Landroid/content/Context;

    .line 12
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzx:Ljava/util/LinkedHashMap;

    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeaa:Lcom/google/android/gms/internal/ads/zzaxb;

    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    .line 15
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzawu;->zzeaq:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 16
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeac:Ljava/util/HashSet;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeac:Ljava/util/HashSet;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p5, "cookie"

    invoke-virtual {p5, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb;->zzblp()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    move-result-object p1

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjab:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 22
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzie(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 23
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzif(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zzblr()Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;

    move-result-object p3

    .line 25
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzawu;->zzeam:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 26
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzawu;->zzeam:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;->zzih(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;

    .line 27
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzbmg()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzawm;->context:Landroid/content/Context;

    .line 29
    invoke-static {p4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;->zzbv(Z)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;

    move-result-object p3

    .line 30
    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 31
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;->zzim(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;

    .line 32
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzawm;->context:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_4

    .line 34
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;->zzfs(J)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;

    .line 35
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    return-void
.end method

.method private final zzdw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzx:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static final synthetic zzdx(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzwz()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeab:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawu;->zzeas:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeaf:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawu;->zzear:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeab:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawu;->zzeap:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 106
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzx:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    .line 109
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    goto :goto_1

    .line 111
    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzy:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 112
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzz:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaww;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 115
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 116
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzbln()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x35

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Sending SB report\n  url: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  clickUrl: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  resources: \n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzblm()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    const-string v6, "    ["

    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzbmd()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    .line 120
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 123
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaww;->zzdy(Ljava/lang/String;)V

    .line 124
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzepa$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzejh;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzawu;->zzean:Ljava/lang/String;

    .line 125
    new-instance v5, Lcom/google/android/gms/ads/internal/util/zzay;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzawm;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/internal/util/zzay;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v5, v1, v4, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzay;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaww;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 129
    sget-object v2, Lcom/google/android/gms/internal/ads/zzawr;->zzeak:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzw;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 130
    :cond_8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzawq;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    .line 131
    sget-object v3, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 132
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v1

    .line 133
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final synthetic zzxa()V
    .locals 1

    const-string v0, "Pinged SB successfully."

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzdy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzxb()Ljava/util/List;
    .locals 1

    .line 177
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzv:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method final synthetic zza(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejr;->zzbgl()Lcom/google/android/gms/internal/ads/zzeka;

    move-result-object v0

    .line 167
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 168
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzbmb()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;

    move-result-object v2

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeka;->zzbfz()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;->zzas(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;

    move-result-object v0

    const-string v2, "image/png"

    .line 172
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;->zzii(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;->zzizr:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;

    .line 173
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    .line 175
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 176
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v2, 0x1

    .line 59
    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeaf:Z

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzx:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    .line 62
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzx:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;->zzib(I)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    .line 63
    :cond_1
    monitor-exit v0

    return-void

    .line 64
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzbme()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    move-result-object v1

    .line 65
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;->zzib(I)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 67
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    .line 68
    :cond_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzx:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;->zzic(I)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    .line 69
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;->zzik(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd;->zzblw()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd$zzb;

    move-result-object p3

    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeac:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_7

    if-eqz p2, :cond_7

    .line 72
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v3, ""

    .line 74
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v2, ""

    .line 75
    :goto_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 76
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeac:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;->zzblu()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;

    move-result-object v4

    .line 78
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzejr;->zzhy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;->zzap(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;

    move-result-object v3

    .line 79
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzejr;->zzhy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;->zzaq(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc$zza;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;

    .line 81
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzc;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd$zzb;

    goto :goto_0

    .line 83
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    .line 84
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzx:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdv(Ljava/lang/String;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 42
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzblt()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzig(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 44
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzi(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 140
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "matches"

    .line 143
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 147
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzawm;->zzdw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v2, "Cannot find the corresponding resource object for "

    .line 149
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaww;->zzdy(Ljava/lang/String;)V

    .line 150
    monitor-exit v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    .line 152
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "threat_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;->zzil(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 154
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeab:Z

    if-lez v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeab:Z

    .line 155
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 156
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeab:Z

    if-eqz p1, :cond_6

    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzw:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;->zzjac:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzg;)Lcom/google/android/gms/internal/ads/zzepa$zzb$zzb;

    .line 159
    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 160
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawm;->zzwz()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to get SafeBrowsing metadata"

    .line 163
    sget-object v1, Lcom/google/android/gms/internal/ads/zzado;->zzdek:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 164
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawu;->zzeao:Z

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeae:Z

    if-eqz v0, :cond_1

    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzn(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to capture the webview bitmap."

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaww;->zzdy(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeae:Z

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzawp;-><init>(Lcom/google/android/gms/internal/ads/zzawm;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzwv()Lcom/google/android/gms/internal/ads/zzawu;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    return-object v0
.end method

.method public final zzww()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdwr:Lcom/google/android/gms/internal/ads/zzawu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawu;->zzeao:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeae:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzwx()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzead:Z

    return-void
.end method

.method public final zzwy()V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzeaa:Lcom/google/android/gms/internal/ads/zzaxb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdzx:Ljava/util/LinkedHashMap;

    .line 93
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaxb;->zza(Landroid/content/Context;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/google/android/gms/internal/ads/zzawo;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzawo;-><init>(Lcom/google/android/gms/internal/ads/zzawm;)V

    .line 95
    sget-object v3, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 96
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v1

    const-wide/16 v2, 0xa

    .line 97
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzazp;->zzeif:Ljava/util/concurrent/ScheduledExecutorService;

    .line 98
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v2

    .line 99
    new-instance v3, Lcom/google/android/gms/internal/ads/zzawt;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/zzawt;-><init>(Lcom/google/android/gms/internal/ads/zzawm;Lcom/google/android/gms/internal/ads/zzdzw;)V

    .line 100
    sget-object v4, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 101
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    .line 102
    sget-object v1, Lcom/google/android/gms/internal/ads/zzawm;->zzdzv:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
