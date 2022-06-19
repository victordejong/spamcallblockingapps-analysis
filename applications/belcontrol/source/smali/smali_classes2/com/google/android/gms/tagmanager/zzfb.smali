.class public final Lcom/google/android/gms/tagmanager/zzfb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static final zzajp:Lcom/google/android/gms/tagmanager/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzajq:Lcom/google/android/gms/internal/gtm/zzov;

.field private final zzajr:Lcom/google/android/gms/tagmanager/zzbo;

.field private final zzajs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzajt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaju:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzajv:Lcom/google/android/gms/tagmanager/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzp<",
            "Lcom/google/android/gms/internal/gtm/zzot;",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzajw:Lcom/google/android/gms/tagmanager/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzp<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzajx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/gtm/zzox;",
            ">;"
        }
    .end annotation
.end field

.field private final zzajy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfi;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzajz:Ljava/lang/String;

.field private zzaka:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzkc()Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzov;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzbo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "resource cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajq:Lcom/google/android/gms/internal/gtm/zzov;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzov;->zzls()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajx:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajr:Lcom/google/android/gms/tagmanager/zzbo;

    new-instance p6, Lcom/google/android/gms/tagmanager/zzfc;

    invoke-direct {p6, p0}, Lcom/google/android/gms/tagmanager/zzfc;-><init>(Lcom/google/android/gms/tagmanager/zzfb;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzq;-><init>()V

    const/high16 v1, 0x100000

    invoke-static {v1, p6}, Lcom/google/android/gms/tagmanager/zzq;->zza(ILcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object p6

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajv:Lcom/google/android/gms/tagmanager/zzp;

    new-instance p6, Lcom/google/android/gms/tagmanager/zzfd;

    invoke-direct {p6, p0}, Lcom/google/android/gms/tagmanager/zzfd;-><init>(Lcom/google/android/gms/tagmanager/zzfb;)V

    new-instance v2, Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {v2}, Lcom/google/android/gms/tagmanager/zzq;-><init>()V

    invoke-static {v1, p6}, Lcom/google/android/gms/tagmanager/zzq;->zza(ILcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object p6

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajw:Lcom/google/android/gms/tagmanager/zzp;

    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajs:Ljava/util/Map;

    new-instance p6, Lcom/google/android/gms/tagmanager/zzm;

    invoke-direct {p6, p1}, Lcom/google/android/gms/tagmanager/zzm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p6, Lcom/google/android/gms/tagmanager/zzam;

    invoke-direct {p6, p5}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Lcom/google/android/gms/tagmanager/zzan;)V

    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzaz;

    invoke-direct {p5, p3}, Lcom/google/android/gms/tagmanager/zzaz;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzgk;

    invoke-direct {p5, p1, p3}, Lcom/google/android/gms/tagmanager/zzgk;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajt:Ljava/util/Map;

    new-instance p5, Lcom/google/android/gms/tagmanager/zzak;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzak;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzbl;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzbl;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzbm;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzbm;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzbs;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzbs;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzbt;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzbt;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzde;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzde;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzdf;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzdf;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzel;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzel;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzfy;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzfy;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaju:Ljava/util/Map;

    new-instance p5, Lcom/google/android/gms/tagmanager/zze;

    invoke-direct {p5, p1}, Lcom/google/android/gms/tagmanager/zze;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzf;

    invoke-direct {p5, p1}, Lcom/google/android/gms/tagmanager/zzf;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzh;

    invoke-direct {p5, p1}, Lcom/google/android/gms/tagmanager/zzh;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzi;

    invoke-direct {p5, p1}, Lcom/google/android/gms/tagmanager/zzi;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzj;

    invoke-direct {p5, p1}, Lcom/google/android/gms/tagmanager/zzj;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzk;

    invoke-direct {p5, p1}, Lcom/google/android/gms/tagmanager/zzk;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzl;

    invoke-direct {p5, p1}, Lcom/google/android/gms/tagmanager/zzl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {p5}, Lcom/google/android/gms/tagmanager/zzt;-><init>()V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p5, Lcom/google/android/gms/tagmanager/zzaj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzov;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p5, p2}, Lcom/google/android/gms/tagmanager/zzaj;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzam;

    invoke-direct {p2, p4}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Lcom/google/android/gms/tagmanager/zzan;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzas;

    invoke-direct {p2, p3}, Lcom/google/android/gms/tagmanager/zzas;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzbc;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbd;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbd;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbk;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbk;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzbp;-><init>(Lcom/google/android/gms/tagmanager/zzfb;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbu;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbu;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbv;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbv;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzcv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzcv;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzcx;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzcx;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzdd;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzdd;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzdk;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzdm;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzdm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzea;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzea;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzee;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzee;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzei;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzei;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzek;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzek;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzem;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzem;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzfj;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzfj;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzfk;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzfk;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzge;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzge;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzgl;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzgl;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/tagmanager/zzbq;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzox;

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzox;->zzmq()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    const-string p6, "Unknown"

    if-ge p4, p5, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzox;->zzmq()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/gms/internal/gtm/zzot;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajy:Ljava/util/Map;

    invoke-static {p5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzot;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/tagmanager/zzfi;->zza(Lcom/google/android/gms/internal/gtm/zzox;)V

    invoke-virtual {v0, p2, p5}, Lcom/google/android/gms/tagmanager/zzfi;->zza(Lcom/google/android/gms/internal/gtm/zzox;Lcom/google/android/gms/internal/gtm/zzot;)V

    invoke-virtual {v0, p2, p6}, Lcom/google/android/gms/tagmanager/zzfi;->zza(Lcom/google/android/gms/internal/gtm/zzox;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzox;->zzmr()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzox;->zzmr()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/gtm/zzot;

    iget-object p5, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajy:Ljava/util/Map;

    invoke-static {p4}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzot;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfi;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/google/android/gms/tagmanager/zzfi;->zza(Lcom/google/android/gms/internal/gtm/zzox;)V

    invoke-virtual {p5, p2, p4}, Lcom/google/android/gms/tagmanager/zzfi;->zzb(Lcom/google/android/gms/internal/gtm/zzox;Lcom/google/android/gms/internal/gtm/zzot;)V

    invoke-virtual {p5, p2, p6}, Lcom/google/android/gms/tagmanager/zzfi;->zzb(Lcom/google/android/gms/internal/gtm/zzox;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajq:Lcom/google/android/gms/internal/gtm/zzov;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzov;->zzmo()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/gtm/zzot;->zzlu()Ljava/util/Map;

    move-result-object p5

    sget-object p6, Lcom/google/android/gms/internal/gtm/zzb;->zzjq:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {p5}, Lcom/google/android/gms/tagmanager/zzgj;->zzg(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_4

    iget-object p5, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajy:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static {p5, p6}, Lcom/google/android/gms/tagmanager/zzfb;->zzb(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfi;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/google/android/gms/tagmanager/zzfi;->zzb(Lcom/google/android/gms/internal/gtm/zzot;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgm;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzgm;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqw:Z

    if-nez v0, :cond_0

    new-instance p2, Lcom/google/android/gms/tagmanager/zzdz;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    return-object p2

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/gtm/zzl;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 p1, 0x19

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown type: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzor;->zzk(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqu:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqu:[Lcom/google/android/gms/internal/gtm/zzl;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqu:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgm;->zzy(I)Lcom/google/android/gms/tagmanager/zzgm;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgm;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne v3, v4, :cond_2

    return-object v4

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqu:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzl;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqq:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqq:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".  Previous macro references: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    return-object p1

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqq:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqq:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzgm;->zzit()Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object p3

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p3

    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqv:[I

    invoke-static {p3, v0}, Lcom/google/android/gms/tagmanager/zzgn;->zza(Lcom/google/android/gms/tagmanager/zzdz;[I)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p3

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqq:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p3

    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzor;->zzk(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqo:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v3, v1

    iget-object v4, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqp:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v4, v4

    if-eq v3, v4, :cond_8

    const-string p2, "Invalid serving value: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzuw;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    return-object p1

    :cond_8
    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqo:[Lcom/google/android/gms/internal/gtm/zzl;

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqo:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqp:[Lcom/google/android/gms/internal/gtm/zzl;

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqo:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v4, v3

    if-ge v1, v4, :cond_b

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgm;->zzw(I)Lcom/google/android/gms/tagmanager/zzgm;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgm;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqp:[Lcom/google/android/gms/internal/gtm/zzl;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgm;->zzx(I)Lcom/google/android/gms/tagmanager/zzgm;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgm;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    if-eq v3, v5, :cond_a

    if-ne v4, v5, :cond_9

    goto :goto_3

    :cond_9
    iget-object v5, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqo:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzl;

    aput-object v3, v5, v1

    iget-object v3, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqp:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzl;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return-object v5

    :cond_b
    new-instance p1, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :cond_c
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzor;->zzk(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqn:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqn:[Lcom/google/android/gms/internal/gtm/zzl;

    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzl;->zzqn:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v4, v3

    if-ge v1, v4, :cond_e

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgm;->zzv(I)Lcom/google/android/gms/tagmanager/zzgm;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgm;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne v3, v4, :cond_d

    return-object v4

    :cond_d
    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqn:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzl;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    new-instance p1, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/gtm/zzot;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzot;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzen;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajt:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzot;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzgj;->zzg(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/zzen;->zza(Lcom/google/android/gms/internal/gtm/zzl;)V

    new-instance p3, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result p1

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    return-object p3
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdl;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzdl;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajw:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzfh;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajr:Lcom/google/android/gms/tagmanager/zzbo;

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzie()Z

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfh;->zzji()Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)V

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfh;->zzjh()Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzfi;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzfb;->zzjg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0xf

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Invalid macro: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfi;->zzjj()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfi;->zzjk()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfi;->zzjl()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfi;->zzjn()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfi;->zzjm()Ljava/util/Map;

    move-result-object v8

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzdl;->zzhs()Lcom/google/android/gms/tagmanager/zzfa;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/tagmanager/zzfe;

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/tagmanager/zzfe;-><init>(Lcom/google/android/gms/tagmanager/zzfb;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, v2, p2, v10, v9}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfg;Lcom/google/android/gms/tagmanager/zzfa;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfi;->zzjo()Lcom/google/android/gms/internal/gtm/zzot;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzfb;->zzjg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Multiple macros active for macroName "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzot;

    :goto_0
    if-nez v0, :cond_4

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    return-object p1

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaju:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzdl;->zzil()Lcom/google/android/gms/tagmanager/zzen;

    move-result-object p3

    invoke-direct {p0, v3, v0, p2, p3}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzot;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p3

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne p3, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v3, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {p3}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-direct {v3, p3, v2}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzot;->zzji()Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object p3

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajw:Lcom/google/android/gms/tagmanager/zzp;

    new-instance v2, Lcom/google/android/gms/tagmanager/zzfh;

    invoke-direct {v2, v3, p3}, Lcom/google/android/gms/tagmanager/zzfh;-><init>(Lcom/google/android/gms/tagmanager/zzdz;Lcom/google/android/gms/internal/gtm/zzl;)V

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/tagmanager/zzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0, p3, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)V

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    return-object v3
.end method

.method private final zza(Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzot;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbq;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzot;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzen;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzot;->zzlu()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzb;->zzhz:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzl;

    if-nez v0, :cond_0

    const-string p1, "No function id in properties"

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    return-object p1

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqr:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzbq;

    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " has no backing implementation."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {v1, p2}, Lcom/google/android/gms/tagmanager/zzp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzdz;

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajr:Lcom/google/android/gms/tagmanager/zzbo;

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzie()Z

    return-object v1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzot;->zzlu()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p4, v7}, Lcom/google/android/gms/tagmanager/zzen;->zzbg(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzep;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-interface {v7, v9}, Lcom/google/android/gms/tagmanager/zzep;->zzb(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/tagmanager/zzgm;

    move-result-object v7

    invoke-direct {p0, v8, p3, v7}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgm;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne v7, v8, :cond_3

    return-object v8

    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {p2, v6, v8}, Lcom/google/android/gms/internal/gtm/zzot;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzl;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tagmanager/zzbq;->zza(Ljava/util/Set;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbq;->zzig()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Incorrect keys for function "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " required "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " had "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbq;->zzgw()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    new-instance p3, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tagmanager/zzbq;->zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object p1

    invoke-direct {p3, p1, v3}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    if-eqz v3, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-interface {p4, p1}, Lcom/google/android/gms/tagmanager/zzen;->zza(Lcom/google/android/gms/internal/gtm/zzl;)V

    return-object p3
.end method

.method private final zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfg;Lcom/google/android/gms/tagmanager/zzfa;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/gtm/zzox;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzfg;",
            "Lcom/google/android/gms/tagmanager/zzfa;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/gtm/zzot;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzox;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzfa;->zzis()Lcom/google/android/gms/tagmanager/zzeq;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzox;->zzlx()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    const/4 v7, 0x1

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-interface {v5}, Lcom/google/android/gms/tagmanager/zzeq;->zzim()Lcom/google/android/gms/tagmanager/zzen;

    move-result-object v10

    invoke-direct {p0, v8, p2, v10}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzot;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzl;

    new-instance v7, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v8

    invoke-direct {v7, v6, v8}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    goto :goto_5

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzox;->zzlw()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-interface {v5}, Lcom/google/android/gms/tagmanager/zzeq;->zzin()Lcom/google/android/gms/tagmanager/zzen;

    move-result-object v10

    invoke-direct {p0, v8, p2, v10}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzot;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzl;

    new-instance v7, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v8

    invoke-direct {v7, v6, v8}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    goto :goto_5

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzl;

    new-instance v8, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {v8, v6, v7}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    move-object v7, v8

    :goto_5
    invoke-virtual {v7}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p3, v4, v0, v1, v5}, Lcom/google/android/gms/tagmanager/zzfg;->zza(Lcom/google/android/gms/internal/gtm/zzox;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeq;)V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v7}, Lcom/google/android/gms/tagmanager/zzdz;->zziu()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p4, v0}, Lcom/google/android/gms/tagmanager/zzfa;->zzb(Ljava/util/Set;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzdz;

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/tagmanager/zzdz;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/gtm/zzot;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzot;->zzlu()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzil:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdx;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgm;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/tagmanager/zzfb;->zzajp:Lcom/google/android/gms/tagmanager/zzdz;

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    return-void

    :cond_2
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const-string p2, "pushAfterEvaluate: value not a Map"

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string p1, "pushAfterEvaluate: value not a Map or List"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/tagmanager/zzbq;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaju:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbq;)V

    return-void
.end method

.method private static zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbq;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzbq;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbq;->zzif()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate function type name: "

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbq;->zzif()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbq;->zzif()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzb(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfi;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzfi;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzfi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzfi;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/tagmanager/zzbq;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajs:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbq;)V

    return-void
.end method

.method private final declared-synchronized zzbk(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajz:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/tagmanager/zzbq;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajt:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbq;)V

    return-void
.end method

.method private final zzjg()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    :goto_0
    iget v2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zzan(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzbk(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajr:Lcom/google/android/gms/tagmanager/zzbo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzba(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzbn;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzbn;->zzid()Lcom/google/android/gms/tagmanager/zzar;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajx:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzhs()Lcom/google/android/gms/tagmanager/zzfa;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lcom/google/android/gms/tagmanager/zzff;

    invoke-direct {v3, p0}, Lcom/google/android/gms/tagmanager/zzff;-><init>(Lcom/google/android/gms/tagmanager/zzfb;)V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfg;Lcom/google/android/gms/tagmanager/zzfa;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzot;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajs:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzhr()Lcom/google/android/gms/tagmanager/zzen;

    move-result-object v4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzot;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzen;)Lcom/google/android/gms/tagmanager/zzdz;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzbk(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzaka:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajr:Lcom/google/android/gms/tagmanager/zzbo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzaz(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzbn;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzic()Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/zzfb;->zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdl;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zze(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzj;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzj;

    iget-object v3, v2, Lcom/google/android/gms/internal/gtm/zzj;->name:Ljava/lang/String;

    if-eqz v3, :cond_f

    const-string v4, "gaExperiment:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/tagmanager/zzfb;->zzaed:Lcom/google/android/gms/tagmanager/DataLayer;

    iget-object v4, v2, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    if-nez v4, :cond_2

    const-string v2, "supplemental missing experimentSupplemental"

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    invoke-static {v8}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/android/gms/tagmanager/DataLayer;->zzaq(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, v2, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    iget-object v4, v4, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x0

    if-ge v7, v5, :cond_6

    aget-object v9, v4, v7

    invoke-static {v9}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/util/Map;

    if-nez v10, :cond_4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x24

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "value: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not a map value, ignored."

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v8, v9

    check-cast v8, Ljava/util/Map;

    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {v3, v8}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzj;->zzqi:Lcom/google/android/gms/internal/gtm/zzh;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_0

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->hasKey()Z

    move-result v9

    if-nez v9, :cond_7

    const-string v7, "GaExperimentRandom: No key"

    :goto_5
    invoke-static {v7}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/Number;

    if-nez v10, :cond_8

    move-object v10, v8

    goto :goto_6

    :cond_8
    move-object v10, v9

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzg()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzh()J

    move-result-wide v13

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzi()Z

    move-result v15

    if-eqz v15, :cond_9

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v17, v15, v11

    if-ltz v17, :cond_9

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v10, v15, v13

    if-lez v10, :cond_a

    :cond_9
    cmp-long v9, v11, v13

    if-gtz v9, :cond_e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    sub-long/2addr v13, v11

    long-to-double v13, v13

    mul-double v9, v9, v13

    long-to-double v11, v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/google/android/gms/tagmanager/DataLayer;->zzaq(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/google/android/gms/tagmanager/DataLayer;->zzg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzj()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-lez v14, :cond_d

    const-string v10, "gtm"

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "gtm"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "lifetime"

    aput-object v12, v11, v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzj()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v11}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    const-string v10, "gtm"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/util/Map;

    if-eqz v11, :cond_c

    check-cast v10, Ljava/util/Map;

    const-string v11, "lifetime"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzj()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_c
    const-string v7, "GaExperimentRandom: gtm not a map"

    invoke-static {v7}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    :cond_d
    :goto_7
    invoke-virtual {v3, v9}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_8

    :cond_e
    const-string v7, "GaExperimentRandom: random range invalid"

    goto/16 :goto_5

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_f
    :goto_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignored supplemental: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzjf()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfb;->zzajz:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
