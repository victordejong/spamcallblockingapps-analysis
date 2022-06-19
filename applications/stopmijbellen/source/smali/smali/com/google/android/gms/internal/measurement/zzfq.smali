.class public final Lcom/google/android/gms/internal/measurement/zzfq;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzfq;",
        "Lcom/google/android/gms/internal/measurement/zzfp;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzfq;


# instance fields
.field private zza:I

.field private zze:Ljava/lang/String;

.field private zzf:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfq;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfq;->zzg:Lcom/google/android/gms/internal/measurement/zzfq;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzfp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfq;->zzg:Lcom/google/android/gms/internal/measurement/zzfq;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbt()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfp;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/measurement/zzfq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfq;->zzg:Lcom/google/android/gms/internal/measurement/zzfq;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfq;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzfq;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzf:J

    return-void
.end method


# virtual methods
.method public final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfq;->zzg:Lcom/google/android/gms/internal/measurement/zzfq;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfp;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfp;-><init>(Lcom/google/android/gms/internal/measurement/zzff;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfq;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zza"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfq;->zzg:Lcom/google/android/gms/internal/measurement/zzfq;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001"

    .line 7
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbz(Lcom/google/android/gms/internal/measurement/zzli;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
