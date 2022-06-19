.class public final Lcom/google/android/gms/internal/firebase-perf/zzch;
.super Lcom/google/android/gms/internal/firebase-perf/zzeh;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-perf/zzft;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-perf/zzch$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-perf/zzeh<",
        "Lcom/google/android/gms/internal/firebase-perf/zzch;",
        "Lcom/google/android/gms/internal/firebase-perf/zzch$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-perf/zzft;"
    }
.end annotation


# static fields
.field private static volatile zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzgb<",
            "Lcom/google/android/gms/internal/firebase-perf/zzch;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzla:Lcom/google/android/gms/internal/firebase-perf/zzep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-perf/zzep<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/firebase-perf/zzco;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlb:Lcom/google/android/gms/internal/firebase-perf/zzch;


# instance fields
.field private zzhp:I

.field private zzjg:Ljava/lang/String;

.field private zzkz:Lcom/google/android/gms/internal/firebase-perf/zzem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzcj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzcj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzla:Lcom/google/android/gms/internal/firebase-perf/zzep;

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzch;-><init>()V

    .line 49
    sput-object v0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzlb:Lcom/google/android/gms/internal/firebase-perf/zzch;

    .line 50
    const-class v1, Lcom/google/android/gms/internal/firebase-perf/zzch;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-perf/zzeh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzjg:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzgq()Lcom/google/android/gms/internal/firebase-perf/zzem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzkz:Lcom/google/android/gms/internal/firebase-perf/zzem;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzch;Lcom/google/android/gms/internal/firebase-perf/zzco;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzch;->zza(Lcom/google/android/gms/internal/firebase-perf/zzco;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-perf/zzch;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzw(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-perf/zzco;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzkz:Lcom/google/android/gms/internal/firebase-perf/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-perf/zzem;->zzfj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzkz:Lcom/google/android/gms/internal/firebase-perf/zzem;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-perf/zzem;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 19
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzem;->zzak(I)Lcom/google/android/gms/internal/firebase-perf/zzem;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzkz:Lcom/google/android/gms/internal/firebase-perf/zzem;

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzkz:Lcom/google/android/gms/internal/firebase-perf/zzem;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzco;->zzcq()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzem;->zzal(I)V

    return-void
.end method

.method public static zzeq()Lcom/google/android/gms/internal/firebase-perf/zzch$zza;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzlb:Lcom/google/android/gms/internal/firebase-perf/zzch;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh;->zzgo()Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzch$zza;

    return-object v0
.end method

.method static synthetic zzer()Lcom/google/android/gms/internal/firebase-perf/zzch;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzlb:Lcom/google/android/gms/internal/firebase-perf/zzch;

    return-object v0
.end method

.method private final zzw(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzhp:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzhp:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzjg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object p2, Lcom/google/android/gms/internal/firebase-perf/zzci;->zzhw:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 41
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    if-nez p1, :cond_1

    .line 34
    const-class p2, Lcom/google/android/gms/internal/firebase-perf/zzch;

    monitor-enter p2

    .line 35
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzeh$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzlb:Lcom/google/android/gms/internal/firebase-perf/zzch;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zzc;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzeh;)V

    .line 38
    sput-object p1, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzhu:Lcom/google/android/gms/internal/firebase-perf/zzgb;

    .line 39
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

    .line 31
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzlb:Lcom/google/android/gms/internal/firebase-perf/zzch;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhp"

    aput-object v0, p1, p2

    const-string p2, "zzjg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzkz"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzco;->zzcr()Lcom/google/android/gms/internal/firebase-perf/zzen;

    move-result-object p3

    aput-object p3, p1, p2

    .line 30
    sget-object p2, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzlb:Lcom/google/android/gms/internal/firebase-perf/zzch;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0008\u0000\u0002\u001e"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-perf/zzch;->zza(Lcom/google/android/gms/internal/firebase-perf/zzfr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzch$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzch$zza;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzcj;)V

    return-object p1

    .line 25
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzch;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-perf/zzch;-><init>()V

    return-object p1

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

.method public final zzep()I
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzkz:Lcom/google/android/gms/internal/firebase-perf/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-perf/zzem;->size()I

    move-result v0

    return v0
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/firebase-perf/zzco;
    .locals 2

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzla:Lcom/google/android/gms/internal/firebase-perf/zzep;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzkz:Lcom/google/android/gms/internal/firebase-perf/zzem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzem;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzep;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-perf/zzco;

    return-object p1
.end method
