.class public final Lcom/google/android/gms/internal/firebase-perf/zzbt;
.super Lcom/google/android/gms/internal/firebase-perf/zzeh;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-perf/zzft;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-perf/zzbt$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-perf/zzeh<",
        "Lcom/google/android/gms/internal/firebase-perf/zzbt;",
        "Lcom/google/android/gms/internal/firebase-perf/zzbt$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-perf/zzft;"
    }
.end annotation


# static fields
.field private static volatile zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzgb<",
            "Lcom/google/android/gms/internal/firebase-perf/zzbt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjl:Lcom/google/android/gms/internal/firebase-perf/zzbt;


# instance fields
.field private zzhp:I

.field private zzjg:Ljava/lang/String;

.field private zzjh:Lcom/google/android/gms/internal/firebase-perf/zzbs;

.field private zzji:Lcom/google/android/gms/internal/firebase-perf/zzeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzeo<",
            "Lcom/google/android/gms/internal/firebase-perf/zzbn;",
            ">;"
        }
    .end annotation
.end field

.field private zzjj:Lcom/google/android/gms/internal/firebase-perf/zzeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzeo<",
            "Lcom/google/android/gms/internal/firebase-perf/zzbg;",
            ">;"
        }
    .end annotation
.end field

.field private zzjk:Lcom/google/android/gms/internal/firebase-perf/zzeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzeo<",
            "Lcom/google/android/gms/internal/firebase-perf/zzbx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzbt;-><init>()V

    .line 62
    sput-object v0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjl:Lcom/google/android/gms/internal/firebase-perf/zzbt;

    .line 63
    const-class v1, Lcom/google/android/gms/internal/firebase-perf/zzbt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-perf/zzeh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjg:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzgr()Lcom/google/android/gms/internal/firebase-perf/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzji:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzgr()Lcom/google/android/gms/internal/firebase-perf/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjj:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzgr()Lcom/google/android/gms/internal/firebase-perf/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjk:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-perf/zzbg;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjj:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeo;->zzfj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjj:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zza(Lcom/google/android/gms/internal/firebase-perf/zzeo;)Lcom/google/android/gms/internal/firebase-perf/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjj:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjj:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzeo;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-perf/zzbn;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzji:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeo;->zzfj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzji:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zza(Lcom/google/android/gms/internal/firebase-perf/zzeo;)Lcom/google/android/gms/internal/firebase-perf/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzji:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzji:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzeo;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-perf/zzbs;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjh:Lcom/google/android/gms/internal/firebase-perf/zzbs;

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhp:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhp:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzbt;Lcom/google/android/gms/internal/firebase-perf/zzbg;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zza(Lcom/google/android/gms/internal/firebase-perf/zzbg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzbt;Lcom/google/android/gms/internal/firebase-perf/zzbn;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zza(Lcom/google/android/gms/internal/firebase-perf/zzbn;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzbt;Lcom/google/android/gms/internal/firebase-perf/zzbs;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zza(Lcom/google/android/gms/internal/firebase-perf/zzbs;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzbt;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzw(Ljava/lang/String;)V

    return-void
.end method

.method public static zzde()Lcom/google/android/gms/internal/firebase-perf/zzbt$zza;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjl:Lcom/google/android/gms/internal/firebase-perf/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zzgo()Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzbt$zza;

    return-object v0
.end method

.method public static zzdf()Lcom/google/android/gms/internal/firebase-perf/zzbt;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjl:Lcom/google/android/gms/internal/firebase-perf/zzbt;

    return-object v0
.end method

.method static synthetic zzdg()Lcom/google/android/gms/internal/firebase-perf/zzbt;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjl:Lcom/google/android/gms/internal/firebase-perf/zzbt;

    return-object v0
.end method

.method private final zzw(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhp:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhp:I

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 36
    sget-object p2, Lcom/google/android/gms/internal/firebase-perf/zzbu;->zzhw:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 54
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 52
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    if-nez p1, :cond_1

    .line 45
    const-class p2, Lcom/google/android/gms/internal/firebase-perf/zzbt;

    monitor-enter p2

    .line 46
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzeh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjl:Lcom/google/android/gms/internal/firebase-perf/zzbt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zzc;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzeh;)V

    .line 49
    sput-object p1, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    .line 50
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

    .line 42
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjl:Lcom/google/android/gms/internal/firebase-perf/zzbt;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhp"

    aput-object v0, p1, p2

    const-string p2, "zzjg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzji"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 39
    const-class p3, Lcom/google/android/gms/internal/firebase-perf/zzbn;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjh"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzjj"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/google/android/gms/internal/firebase-perf/zzbg;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzjk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/google/android/gms/internal/firebase-perf/zzbx;

    aput-object p3, p1, p2

    .line 41
    sget-object p2, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjl:Lcom/google/android/gms/internal/firebase-perf/zzbt;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001\u0008\u0000\u0002\u001b\u0003\t\u0001\u0004\u001b\u0005\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zza(Lcom/google/android/gms/internal/firebase-perf/zzfr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzbt$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzbt$zza;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzbu;)V

    return-object p1

    .line 37
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzbt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-perf/zzbt;-><init>()V

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

.method public final zzcy()Z
    .locals 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhp:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcz()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzda()Z
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzhp:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdb()Lcom/google/android/gms/internal/firebase-perf/zzbs;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjh:Lcom/google/android/gms/internal/firebase-perf/zzbs;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzbs;->zzcw()Lcom/google/android/gms/internal/firebase-perf/zzbs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzdc()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzji:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeo;->size()I

    move-result v0

    return v0
.end method

.method public final zzdd()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzbt;->zzjj:Lcom/google/android/gms/internal/firebase-perf/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeo;->size()I

    move-result v0

    return v0
.end method
