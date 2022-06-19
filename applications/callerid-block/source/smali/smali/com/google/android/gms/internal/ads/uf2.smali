.class public final Lcom/google/android/gms/internal/ads/uf2;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/uf2;",
        "Lcom/google/android/gms/internal/ads/rf2;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/ads/uf2;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/tf2;

.field private zzf:Lcom/google/android/gms/internal/ads/wc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wc2<",
            "Lcom/google/android/gms/internal/ads/qf2;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzesf;

.field private zzh:Lcom/google/android/gms/internal/ads/zzesf;

.field private zzi:I

.field private zzj:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/uf2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uf2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/uf2;->zzk:Lcom/google/android/gms/internal/ads/uf2;

    const-class v1, Lcom/google/android/gms/internal/ads/uf2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/uf2;->zzj:B

    invoke-static {}, Lcom/google/android/gms/internal/ads/oc2;->o()Lcom/google/android/gms/internal/ads/wc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uf2;->zzf:Lcom/google/android/gms/internal/ads/wc2;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzesf;->b:Lcom/google/android/gms/internal/ads/zzesf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uf2;->zzg:Lcom/google/android/gms/internal/ads/zzesf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uf2;->zzh:Lcom/google/android/gms/internal/ads/zzesf;

    return-void
.end method

.method public static E()Lcom/google/android/gms/internal/ads/rf2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/uf2;->zzk:Lcom/google/android/gms/internal/ads/uf2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->v()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rf2;

    return-object v0
.end method

.method static synthetic F()Lcom/google/android/gms/internal/ads/uf2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/uf2;->zzk:Lcom/google/android/gms/internal/ads/uf2;

    return-object v0
.end method

.method static synthetic G(Lcom/google/android/gms/internal/ads/uf2;Lcom/google/android/gms/internal/ads/qf2;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf2;->zzf:Lcom/google/android/gms/internal/ads/wc2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wc2;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oc2;->p(Lcom/google/android/gms/internal/ads/wc2;)Lcom/google/android/gms/internal/ads/wc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uf2;->zzf:Lcom/google/android/gms/internal/ads/wc2;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/uf2;->zzf:Lcom/google/android/gms/internal/ads/wc2;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/uf2;->zzj:B

    return-object v3

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/uf2;->zzk:Lcom/google/android/gms/internal/ads/uf2;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/rf2;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/rf2;-><init>(Lcom/google/android/gms/internal/ads/kf2;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/uf2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/uf2;-><init>()V

    return-object p1

    :cond_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    const-string p2, "zzf"

    aput-object p2, p1, v4

    const-class p2, Lcom/google/android/gms/internal/ads/qf2;

    aput-object p2, p1, v3

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/uf2;->zzk:Lcom/google/android/gms/internal/ads/uf2;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/uf2;->zzj:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
