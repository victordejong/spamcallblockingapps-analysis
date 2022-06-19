.class public final Lcom/google/android/gms/internal/ads/d72;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/d72;",
        "Lcom/google/android/gms/internal/ads/c72;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/d72;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzesf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/d72;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/d72;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/d72;->zzg:Lcom/google/android/gms/internal/ads/d72;

    const-class v1, Lcom/google/android/gms/internal/ads/d72;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzesf;->b:Lcom/google/android/gms/internal/ads/zzesf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/d72;->zzf:Lcom/google/android/gms/internal/ads/zzesf;

    return-void
.end method

.method public static H()Lcom/google/android/gms/internal/ads/d72;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/d72;->zzg:Lcom/google/android/gms/internal/ads/d72;

    return-object v0
.end method

.method static synthetic I()Lcom/google/android/gms/internal/ads/d72;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/d72;->zzg:Lcom/google/android/gms/internal/ads/d72;

    return-object v0
.end method


# virtual methods
.method protected final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/d72;->zzg:Lcom/google/android/gms/internal/ads/d72;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/c72;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/c72;-><init>(Lcom/google/android/gms/internal/ads/b72;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/d72;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/d72;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzb"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/d72;->zzg:Lcom/google/android/gms/internal/ads/d72;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()Lcom/google/android/gms/internal/ads/zzeni;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/d72;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeni;->zza(I)Lcom/google/android/gms/internal/ads/zzeni;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeni;->g:Lcom/google/android/gms/internal/ads/zzeni;

    :cond_0
    return-object v0
.end method

.method public final F()Lcom/google/android/gms/internal/ads/zzenk;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/d72;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzenk;->zza(I)Lcom/google/android/gms/internal/ads/zzenk;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzenk;->g:Lcom/google/android/gms/internal/ads/zzenk;

    :cond_0
    return-object v0
.end method

.method public final G()Lcom/google/android/gms/internal/ads/zzesf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d72;->zzf:Lcom/google/android/gms/internal/ads/zzesf;

    return-object v0
.end method
