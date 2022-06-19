.class public final Lcom/google/android/gms/internal/firebase-perf/zzca;
.super Lcom/google/android/gms/internal/firebase-perf/zzeh;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-perf/zzft;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-perf/zzca$zzb;,
        Lcom/google/android/gms/internal/firebase-perf/zzca$zza;,
        Lcom/google/android/gms/internal/firebase-perf/zzca$zzd;,
        Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-perf/zzeh<",
        "Lcom/google/android/gms/internal/firebase-perf/zzca;",
        "Lcom/google/android/gms/internal/firebase-perf/zzca$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-perf/zzft;"
    }
.end annotation


# static fields
.field private static volatile zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzgb<",
            "Lcom/google/android/gms/internal/firebase-perf/zzca;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;


# instance fields
.field private zzhp:I

.field private zzig:Lcom/google/android/gms/internal/firebase-perf/zzfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzfl<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzjt:Ljava/lang/String;

.field private zzju:I

.field private zzjv:J

.field private zzjw:J

.field private zzjx:I

.field private zzjy:I

.field private zzjz:Ljava/lang/String;

.field private zzka:J

.field private zzkb:J

.field private zzkc:J

.field private zzkd:J

.field private zzke:Lcom/google/android/gms/internal/firebase-perf/zzeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzeo<",
            "Lcom/google/android/gms/internal/firebase-perf/zzch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzca;-><init>()V

    .line 118
    sput-object v0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;

    .line 119
    const-class v1, Lcom/google/android/gms/internal/firebase-perf/zzca;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-perf/zzeh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfl;->zzhe()Lcom/google/android/gms/internal/firebase-perf/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzig:Lcom/google/android/gms/internal/firebase-perf/zzfl;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjt:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjz:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzgr()Lcom/google/android/gms/internal/firebase-perf/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzke:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    return-void
.end method

.method private final setHttpResponseCode(I)V
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjy:I

    return-void
.end method

.method private final setResponseContentType(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjz:Ljava/lang/String;

    return-void
.end method

.method private final setUrl(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjt:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;)V
    .locals 0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;->zzcq()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzju:I

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-perf/zzca$zzd;)V
    .locals 0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzca$zzd;->zzcq()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjx:I

    .line 30
    iget p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzca;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzdq()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzca;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzca;->setHttpResponseCode(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzca;J)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzv(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzca;Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zza(Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzca;Lcom/google/android/gms/internal/firebase-perf/zzca$zzd;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zza(Lcom/google/android/gms/internal/firebase-perf/zzca$zzd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzca;Ljava/lang/Iterable;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzca;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzca;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/firebase-perf/zzch;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzke:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeo;->zzfj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzke:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zza(Lcom/google/android/gms/internal/firebase-perf/zzeo;)Lcom/google/android/gms/internal/firebase-perf/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzke:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzke:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzcy;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzaa(J)V
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 65
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkd:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase-perf/zzca;)Ljava/util/Map;
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzcm()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase-perf/zzca;J)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzw(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase-perf/zzca;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzca;->setResponseContentType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase-perf/zzca;J)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzx(J)V

    return-void
.end method

.method private final zzcm()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzig:Lcom/google/android/gms/internal/firebase-perf/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzfl;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzig:Lcom/google/android/gms/internal/firebase-perf/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzfl;->zzhf()Lcom/google/android/gms/internal/firebase-perf/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzig:Lcom/google/android/gms/internal/firebase-perf/zzfl;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzig:Lcom/google/android/gms/internal/firebase-perf/zzfl;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase-perf/zzca;J)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzy(J)V

    return-void
.end method

.method private final zzdq()V
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjz:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjz:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase-perf/zzca;J)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzz(J)V

    return-void
.end method

.method public static zzea()Lcom/google/android/gms/internal/firebase-perf/zzca$zzb;
    .locals 1

    .line 79
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zzgo()Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzca$zzb;

    return-object v0
.end method

.method public static zzeb()Lcom/google/android/gms/internal/firebase-perf/zzca;
    .locals 1

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;

    return-object v0
.end method

.method static synthetic zzec()Lcom/google/android/gms/internal/firebase-perf/zzca;
    .locals 1

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/firebase-perf/zzca;J)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzaa(J)V

    return-void
.end method

.method private final zzv(J)V
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 22
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjv:J

    return-void
.end method

.method private final zzw(J)V
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 27
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjw:J

    return-void
.end method

.method private final zzx(J)V
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 50
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzka:J

    return-void
.end method

.method private final zzy(J)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 55
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkb:J

    return-void
.end method

.method private final zzz(J)V
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    .line 60
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkc:J

    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjt:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 80
    sget-object p2, Lcom/google/android/gms/internal/firebase-perf/zzbz;->zzhw:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 98
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    if-nez p1, :cond_1

    .line 91
    const-class p2, Lcom/google/android/gms/internal/firebase-perf/zzca;

    monitor-enter p2

    .line 92
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzeh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zzc;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzeh;)V

    .line 95
    sput-object p1, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    .line 96
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 88
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;

    return-object p1

    :pswitch_4
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhp"

    aput-object v0, p1, p2

    const-string p2, "zzjt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzju"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;->zzcr()Lcom/google/android/gms/internal/firebase-perf/zzen;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjv"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzjw"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzjy"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzjz"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzka"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzkb"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzkc"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzkd"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzjx"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzca$zzd;->zzcr()Lcom/google/android/gms/internal/firebase-perf/zzen;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzig"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    sget-object p3, Lcom/google/android/gms/internal/firebase-perf/zzca$zza;->zzio:Lcom/google/android/gms/internal/firebase-perf/zzfj;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzke"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lcom/google/android/gms/internal/firebase-perf/zzch;

    aput-object p3, p1, p2

    .line 87
    sget-object p2, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkf:Lcom/google/android/gms/internal/firebase-perf/zzca;

    const-string p3, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001\u0008\u0000\u0002\u000c\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0004\u0005\u0006\u0008\u0006\u0007\u0002\u0007\u0008\u0002\u0008\t\u0002\t\n\u0002\n\u000b\u000c\u0004\u000c2\r\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zza(Lcom/google/android/gms/internal/firebase-perf/zzfr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzca$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzca$zzb;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzbz;)V

    return-object p1

    .line 81
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzca;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-perf/zzca;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzdj()Z
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdk()Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;
    .locals 1

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzju:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;->zzm(I)Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;->zzkg:Lcom/google/android/gms/internal/firebase-perf/zzca$zzc;

    :cond_0
    return-object v0
.end method

.method public final zzdl()Z
    .locals 1

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdm()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjv:J

    return-wide v0
.end method

.method public final zzdn()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdo()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjw:J

    return-wide v0
.end method

.method public final zzdp()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzjy:I

    return v0
.end method

.method public final zzdr()Z
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzds()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzka:J

    return-wide v0
.end method

.method public final zzdt()Z
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdu()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkb:J

    return-wide v0
.end method

.method public final zzdv()Z
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdw()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkc:J

    return-wide v0
.end method

.method public final zzdx()Z
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdy()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzkd:J

    return-wide v0
.end method

.method public final zzdz()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-perf/zzch;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzke:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    return-object v0
.end method

.method public final zzw()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzhp:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
