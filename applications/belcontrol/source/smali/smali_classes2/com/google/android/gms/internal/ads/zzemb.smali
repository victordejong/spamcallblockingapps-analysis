.class public final Lcom/google/android/gms/internal/ads/zzemb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzenm;


# static fields
.field private static final zzisg:Lcom/google/android/gms/internal/ads/zzeml;


# instance fields
.field private final zzisf:Lcom/google/android/gms/internal/ads/zzeml;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeme;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeme;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemb;->zzisg:Lcom/google/android/gms/internal/ads/zzeml;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzemd;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeml;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelc;->zzbir()Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemb;->zzbjq()Lcom/google/android/gms/internal/ads/zzeml;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzemd;-><init>([Lcom/google/android/gms/internal/ads/zzeml;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzemb;-><init>(Lcom/google/android/gms/internal/ads/zzeml;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeml;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeld;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeml;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemb;->zzisf:Lcom/google/android/gms/internal/ads/zzeml;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzemm;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzemm;->zzbjy()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/ads/zzemz;->zzitk:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzbjq()Lcom/google/android/gms/internal/ads/zzeml;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeml;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemb;->zzisg:Lcom/google/android/gms/internal/ads/zzeml;

    return-object v0
.end method


# virtual methods
.method public final zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzenj;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzenj<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzelb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzenl;->zzi(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemb;->zzisf:Lcom/google/android/gms/internal/ads/zzeml;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzeml;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzemm;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzemm;->zzbjz()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenl;->zzbkn()Lcom/google/android/gms/internal/ads/zzeob;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekr;->zzbhz()Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzemm;->zzbka()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzemu;->zza(Lcom/google/android/gms/internal/ads/zzeob;Lcom/google/android/gms/internal/ads/zzekq;Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzemu;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenl;->zzbkl()Lcom/google/android/gms/internal/ads/zzeob;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekr;->zzbia()Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzemm;->zzbka()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzemu;->zza(Lcom/google/android/gms/internal/ads/zzeob;Lcom/google/android/gms/internal/ads/zzekq;Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzemu;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzemb;->zza(Lcom/google/android/gms/internal/ads/zzemm;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemy;->zzbkc()Lcom/google/android/gms/internal/ads/zzemw;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbjp()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenl;->zzbkn()Lcom/google/android/gms/internal/ads/zzeob;

    move-result-object v6

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekr;->zzbhz()Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemj;->zzbjw()Lcom/google/android/gms/internal/ads/zzemh;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzems;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzemm;Lcom/google/android/gms/internal/ads/zzemw;Lcom/google/android/gms/internal/ads/zzely;Lcom/google/android/gms/internal/ads/zzeob;Lcom/google/android/gms/internal/ads/zzekq;Lcom/google/android/gms/internal/ads/zzemh;)Lcom/google/android/gms/internal/ads/zzems;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemj;->zzbjw()Lcom/google/android/gms/internal/ads/zzemh;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzems;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzemm;Lcom/google/android/gms/internal/ads/zzemw;Lcom/google/android/gms/internal/ads/zzely;Lcom/google/android/gms/internal/ads/zzeob;Lcom/google/android/gms/internal/ads/zzekq;Lcom/google/android/gms/internal/ads/zzemh;)Lcom/google/android/gms/internal/ads/zzems;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzemb;->zza(Lcom/google/android/gms/internal/ads/zzemm;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemy;->zzbkb()Lcom/google/android/gms/internal/ads/zzemw;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzely;->zzbjo()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenl;->zzbkl()Lcom/google/android/gms/internal/ads/zzeob;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekr;->zzbia()Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemj;->zzbjv()Lcom/google/android/gms/internal/ads/zzemh;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzems;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzemm;Lcom/google/android/gms/internal/ads/zzemw;Lcom/google/android/gms/internal/ads/zzely;Lcom/google/android/gms/internal/ads/zzeob;Lcom/google/android/gms/internal/ads/zzekq;Lcom/google/android/gms/internal/ads/zzemh;)Lcom/google/android/gms/internal/ads/zzems;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzenl;->zzbkm()Lcom/google/android/gms/internal/ads/zzeob;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzemj;->zzbjv()Lcom/google/android/gms/internal/ads/zzemh;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzems;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzemm;Lcom/google/android/gms/internal/ads/zzemw;Lcom/google/android/gms/internal/ads/zzely;Lcom/google/android/gms/internal/ads/zzeob;Lcom/google/android/gms/internal/ads/zzekq;Lcom/google/android/gms/internal/ads/zzemh;)Lcom/google/android/gms/internal/ads/zzems;

    move-result-object p1

    return-object p1
.end method
