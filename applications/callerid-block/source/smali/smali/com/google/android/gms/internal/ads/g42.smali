.class public final Lcom/google/android/gms/internal/ads/g42;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/g42;",
        "Lcom/google/android/gms/internal/ads/f42;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/g42;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzesf;

.field private zzf:Lcom/google/android/gms/internal/ads/m42;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/g42;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/g42;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/g42;->zzg:Lcom/google/android/gms/internal/ads/g42;

    const-class v1, Lcom/google/android/gms/internal/ads/g42;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzesf;->b:Lcom/google/android/gms/internal/ads/zzesf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g42;->zze:Lcom/google/android/gms/internal/ads/zzesf;

    return-void
.end method

.method public static H(Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/g42;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/g42;->zzg:Lcom/google/android/gms/internal/ads/g42;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/oc2;->s(Lcom/google/android/gms/internal/ads/oc2;Lcom/google/android/gms/internal/ads/zzesf;Lcom/google/android/gms/internal/ads/bc2;)Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/g42;

    return-object p0
.end method

.method public static I()Lcom/google/android/gms/internal/ads/f42;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/g42;->zzg:Lcom/google/android/gms/internal/ads/g42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->v()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/f42;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/g42;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/g42;->zzg:Lcom/google/android/gms/internal/ads/g42;

    return-object v0
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/g42;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/g42;->zzb:I

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/g42;Lcom/google/android/gms/internal/ads/zzesf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g42;->zze:Lcom/google/android/gms/internal/ads/zzesf;

    return-void
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/g42;Lcom/google/android/gms/internal/ads/m42;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g42;->zzf:Lcom/google/android/gms/internal/ads/m42;

    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/ads/g42;->zzg:Lcom/google/android/gms/internal/ads/g42;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/f42;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/f42;-><init>(Lcom/google/android/gms/internal/ads/e42;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/g42;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/g42;-><init>()V

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

    sget-object p2, Lcom/google/android/gms/internal/ads/g42;->zzg:Lcom/google/android/gms/internal/ads/g42;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/g42;->zzb:I

    return v0
.end method

.method public final F()Lcom/google/android/gms/internal/ads/zzesf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g42;->zze:Lcom/google/android/gms/internal/ads/zzesf;

    return-object v0
.end method

.method public final G()Lcom/google/android/gms/internal/ads/m42;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g42;->zzf:Lcom/google/android/gms/internal/ads/m42;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/m42;->F()Lcom/google/android/gms/internal/ads/m42;

    move-result-object v0

    :cond_0
    return-object v0
.end method
