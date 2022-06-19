.class final Lcom/google/android/gms/internal/firebase-perf/zzfe;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-perf/zzgh;


# static fields
.field private static final zzrz:Lcom/google/android/gms/internal/firebase-perf/zzfo;


# instance fields
.field private final zzry:Lcom/google/android/gms/internal/firebase-perf/zzfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzfh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-perf/zzfe;->zzrz:Lcom/google/android/gms/internal/firebase-perf/zzfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzfg;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase-perf/zzfo;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzef;->zzgh()Lcom/google/android/gms/internal/firebase-perf/zzef;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfe;->zzhc()Lcom/google/android/gms/internal/firebase-perf/zzfo;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzfg;-><init>([Lcom/google/android/gms/internal/firebase-perf/zzfo;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-perf/zzfe;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-perf/zzfo;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzei;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-perf/zzfo;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzfe;->zzry:Lcom/google/android/gms/internal/firebase-perf/zzfo;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-perf/zzfp;)Z
    .locals 1

    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-perf/zzfp;->zzhk()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/firebase-perf/zzeh$zzd;->zzqo:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzhc()Lcom/google/android/gms/internal/firebase-perf/zzfo;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 54
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzfe;->zzrz:Lcom/google/android/gms/internal/firebase-perf/zzfo;

    return-object v0
.end method


# virtual methods
.method public final zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-perf/zzge;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/firebase-perf/zzge<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-perf/zzgg;->zzf(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzfe;->zzry:Lcom/google/android/gms/internal/firebase-perf/zzfo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzfo;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-perf/zzfp;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-perf/zzfp;->zzhl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-class v0, Lcom/google/android/gms/internal/firebase-perf/zzeh;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzgg;->zzhw()Lcom/google/android/gms/internal/firebase-perf/zzgw;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzea;->zzgb()Lcom/google/android/gms/internal/firebase-perf/zzdy;

    move-result-object v0

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-perf/zzfp;->zzhm()Lcom/google/android/gms/internal/firebase-perf/zzfr;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzfu;->zza(Lcom/google/android/gms/internal/firebase-perf/zzgw;Lcom/google/android/gms/internal/firebase-perf/zzdy;Lcom/google/android/gms/internal/firebase-perf/zzfr;)Lcom/google/android/gms/internal/firebase-perf/zzfu;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzgg;->zzhu()Lcom/google/android/gms/internal/firebase-perf/zzgw;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzea;->zzgc()Lcom/google/android/gms/internal/firebase-perf/zzdy;

    move-result-object v0

    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-perf/zzfp;->zzhm()Lcom/google/android/gms/internal/firebase-perf/zzfr;

    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzfu;->zza(Lcom/google/android/gms/internal/firebase-perf/zzgw;Lcom/google/android/gms/internal/firebase-perf/zzdy;Lcom/google/android/gms/internal/firebase-perf/zzfr;)Lcom/google/android/gms/internal/firebase-perf/zzfu;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    const-class v0, Lcom/google/android/gms/internal/firebase-perf/zzeh;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-perf/zzfe;->zza(Lcom/google/android/gms/internal/firebase-perf/zzfp;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfy;->zzho()Lcom/google/android/gms/internal/firebase-perf/zzfw;

    move-result-object v3

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfb;->zzhb()Lcom/google/android/gms/internal/firebase-perf/zzfb;

    move-result-object v4

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzgg;->zzhw()Lcom/google/android/gms/internal/firebase-perf/zzgw;

    move-result-object v5

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzea;->zzgb()Lcom/google/android/gms/internal/firebase-perf/zzdy;

    move-result-object v6

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfm;->zzhi()Lcom/google/android/gms/internal/firebase-perf/zzfk;

    move-result-object v7

    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-perf/zzfv;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-perf/zzfp;Lcom/google/android/gms/internal/firebase-perf/zzfw;Lcom/google/android/gms/internal/firebase-perf/zzfb;Lcom/google/android/gms/internal/firebase-perf/zzgw;Lcom/google/android/gms/internal/firebase-perf/zzdy;Lcom/google/android/gms/internal/firebase-perf/zzfk;)Lcom/google/android/gms/internal/firebase-perf/zzfv;

    move-result-object p1

    return-object p1

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfy;->zzho()Lcom/google/android/gms/internal/firebase-perf/zzfw;

    move-result-object v3

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfb;->zzhb()Lcom/google/android/gms/internal/firebase-perf/zzfb;

    move-result-object v4

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzgg;->zzhw()Lcom/google/android/gms/internal/firebase-perf/zzgw;

    move-result-object v5

    const/4 v6, 0x0

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfm;->zzhi()Lcom/google/android/gms/internal/firebase-perf/zzfk;

    move-result-object v7

    move-object v1, p1

    .line 36
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-perf/zzfv;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-perf/zzfp;Lcom/google/android/gms/internal/firebase-perf/zzfw;Lcom/google/android/gms/internal/firebase-perf/zzfb;Lcom/google/android/gms/internal/firebase-perf/zzgw;Lcom/google/android/gms/internal/firebase-perf/zzdy;Lcom/google/android/gms/internal/firebase-perf/zzfk;)Lcom/google/android/gms/internal/firebase-perf/zzfv;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-perf/zzfe;->zza(Lcom/google/android/gms/internal/firebase-perf/zzfp;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfy;->zzhn()Lcom/google/android/gms/internal/firebase-perf/zzfw;

    move-result-object v3

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfb;->zzha()Lcom/google/android/gms/internal/firebase-perf/zzfb;

    move-result-object v4

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzgg;->zzhu()Lcom/google/android/gms/internal/firebase-perf/zzgw;

    move-result-object v5

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzea;->zzgc()Lcom/google/android/gms/internal/firebase-perf/zzdy;

    move-result-object v6

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfm;->zzhh()Lcom/google/android/gms/internal/firebase-perf/zzfk;

    move-result-object v7

    move-object v1, p1

    .line 45
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-perf/zzfv;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-perf/zzfp;Lcom/google/android/gms/internal/firebase-perf/zzfw;Lcom/google/android/gms/internal/firebase-perf/zzfb;Lcom/google/android/gms/internal/firebase-perf/zzgw;Lcom/google/android/gms/internal/firebase-perf/zzdy;Lcom/google/android/gms/internal/firebase-perf/zzfk;)Lcom/google/android/gms/internal/firebase-perf/zzfv;

    move-result-object p1

    return-object p1

    .line 47
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfy;->zzhn()Lcom/google/android/gms/internal/firebase-perf/zzfw;

    move-result-object v3

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfb;->zzha()Lcom/google/android/gms/internal/firebase-perf/zzfb;

    move-result-object v4

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzgg;->zzhv()Lcom/google/android/gms/internal/firebase-perf/zzgw;

    move-result-object v5

    const/4 v6, 0x0

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzfm;->zzhh()Lcom/google/android/gms/internal/firebase-perf/zzfk;

    move-result-object v7

    move-object v1, p1

    .line 51
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-perf/zzfv;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-perf/zzfp;Lcom/google/android/gms/internal/firebase-perf/zzfw;Lcom/google/android/gms/internal/firebase-perf/zzfb;Lcom/google/android/gms/internal/firebase-perf/zzgw;Lcom/google/android/gms/internal/firebase-perf/zzdy;Lcom/google/android/gms/internal/firebase-perf/zzfk;)Lcom/google/android/gms/internal/firebase-perf/zzfv;

    move-result-object p1

    return-object p1
.end method
