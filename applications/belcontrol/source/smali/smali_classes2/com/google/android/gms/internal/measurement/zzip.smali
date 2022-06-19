.class public final Lcom/google/android/gms/internal/measurement/zzip;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjj;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zziv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zziv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzin;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zziv;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzio;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zziv;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhn;->zza()Lcom/google/android/gms/internal/measurement/zzhn;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zziv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zziv;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzio;-><init>([Lcom/google/android/gms/internal/measurement/zziv;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzia;->zzb(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzip;->zza:Lcom/google/android/gms/internal/measurement/zziv;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zziu;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zziu;->zzc()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzji;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzji<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzip;->zza:Lcom/google/android/gms/internal/measurement/zziv;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/zziv;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zziu;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjk;->zzC()Lcom/google/android/gms/internal/measurement/zzjw;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhh;->zza()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v0

    :goto_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zziu;->zzb()Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(Lcom/google/android/gms/internal/measurement/zzjw;Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzix;)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjk;->zzA()Lcom/google/android/gms/internal/measurement/zzjw;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhh;->zzb()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzip;->zzb(Lcom/google/android/gms/internal/measurement/zziu;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjd;->zzb()Lcom/google/android/gms/internal/measurement/zzjc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzil;->zzd()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjk;->zzC()Lcom/google/android/gms/internal/measurement/zzjw;

    move-result-object v6

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhh;->zza()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzit;->zzb()Lcom/google/android/gms/internal/measurement/zzis;

    move-result-object v8

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzip;->zzb(Lcom/google/android/gms/internal/measurement/zziu;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjd;->zza()Lcom/google/android/gms/internal/measurement/zzjc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzil;->zzc()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjk;->zzA()Lcom/google/android/gms/internal/measurement/zzjw;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhh;->zzb()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjk;->zzB()Lcom/google/android/gms/internal/measurement/zzjw;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzit;->zza()Lcom/google/android/gms/internal/measurement/zzis;

    move-result-object v8

    :goto_3
    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzja;->zzk(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zziu;Lcom/google/android/gms/internal/measurement/zzjc;Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzjw;Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzis;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object p1

    return-object p1
.end method
