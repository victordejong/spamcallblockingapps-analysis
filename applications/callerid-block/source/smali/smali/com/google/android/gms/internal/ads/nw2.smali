.class public final Lcom/google/android/gms/internal/ads/nw2;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/nw2;",
        "Lcom/google/android/gms/internal/ads/mw2;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/nw2;


# instance fields
.field private zzb:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/nw2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nw2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/nw2;->zzh:Lcom/google/android/gms/internal/ads/nw2;

    const-class v1, Lcom/google/android/gms/internal/ads/nw2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    return-void
.end method

.method public static E()Lcom/google/android/gms/internal/ads/mw2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/nw2;->zzh:Lcom/google/android/gms/internal/ads/nw2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->v()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mw2;

    return-object v0
.end method

.method static synthetic F()Lcom/google/android/gms/internal/ads/nw2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/nw2;->zzh:Lcom/google/android/gms/internal/ads/nw2;

    return-object v0
.end method

.method static synthetic G(Lcom/google/android/gms/internal/ads/nw2;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/nw2;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/nw2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/nw2;->zze:Z

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/internal/ads/nw2;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/nw2;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/nw2;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/nw2;->zzf:Z

    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/ads/nw2;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/nw2;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/nw2;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/nw2;->zzg:I

    return-void
.end method


# virtual methods
.method protected final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/nw2;->zzh:Lcom/google/android/gms/internal/ads/nw2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/mw2;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/mw2;-><init>(Lcom/google/android/gms/internal/ads/bw2;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/nw2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/nw2;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzb"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/nw2;->zzh:Lcom/google/android/gms/internal/ads/nw2;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u100b\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
