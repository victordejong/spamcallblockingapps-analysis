.class public final Lcom/google/android/gms/internal/ads/t62;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/t62;",
        "Lcom/google/android/gms/internal/ads/s62;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/t62;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/d72;

.field private zze:Lcom/google/android/gms/internal/ads/n62;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/t62;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/t62;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/t62;->zzg:Lcom/google/android/gms/internal/ads/t62;

    const-class v1, Lcom/google/android/gms/internal/ads/t62;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    return-void
.end method

.method public static H()Lcom/google/android/gms/internal/ads/t62;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/t62;->zzg:Lcom/google/android/gms/internal/ads/t62;

    return-object v0
.end method

.method static synthetic I()Lcom/google/android/gms/internal/ads/t62;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/t62;->zzg:Lcom/google/android/gms/internal/ads/t62;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/t62;->zzg:Lcom/google/android/gms/internal/ads/t62;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/s62;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/s62;-><init>(Lcom/google/android/gms/internal/ads/r62;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/t62;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/t62;-><init>()V

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

    sget-object p2, Lcom/google/android/gms/internal/ads/t62;->zzg:Lcom/google/android/gms/internal/ads/t62;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()Lcom/google/android/gms/internal/ads/d72;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t62;->zzb:Lcom/google/android/gms/internal/ads/d72;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/d72;->H()Lcom/google/android/gms/internal/ads/d72;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final F()Lcom/google/android/gms/internal/ads/n62;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t62;->zze:Lcom/google/android/gms/internal/ads/n62;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/n62;->F()Lcom/google/android/gms/internal/ads/n62;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final G()Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/t62;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzemo;->zza(I)Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzemo;->f:Lcom/google/android/gms/internal/ads/zzemo;

    :cond_0
    return-object v0
.end method
