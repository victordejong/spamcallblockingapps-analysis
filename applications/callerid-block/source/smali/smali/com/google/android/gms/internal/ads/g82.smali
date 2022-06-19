.class public final Lcom/google/android/gms/internal/ads/g82;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/g82;",
        "Lcom/google/android/gms/internal/ads/d82;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/g82;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/wc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wc2<",
            "Lcom/google/android/gms/internal/ads/f82;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/g82;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/g82;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/g82;->zzf:Lcom/google/android/gms/internal/ads/g82;

    const-class v1, Lcom/google/android/gms/internal/ads/g82;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/oc2;->o()Lcom/google/android/gms/internal/ads/wc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g82;->zze:Lcom/google/android/gms/internal/ads/wc2;

    return-void
.end method

.method public static E()Lcom/google/android/gms/internal/ads/d82;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/g82;->zzf:Lcom/google/android/gms/internal/ads/g82;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->v()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/d82;

    return-object v0
.end method

.method static synthetic F()Lcom/google/android/gms/internal/ads/g82;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/g82;->zzf:Lcom/google/android/gms/internal/ads/g82;

    return-object v0
.end method

.method static synthetic G(Lcom/google/android/gms/internal/ads/g82;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/g82;->zzb:I

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/internal/ads/g82;Lcom/google/android/gms/internal/ads/f82;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g82;->zze:Lcom/google/android/gms/internal/ads/wc2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wc2;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oc2;->p(Lcom/google/android/gms/internal/ads/wc2;)Lcom/google/android/gms/internal/ads/wc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g82;->zze:Lcom/google/android/gms/internal/ads/wc2;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g82;->zze:Lcom/google/android/gms/internal/ads/wc2;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    sget-object p1, Lcom/google/android/gms/internal/ads/g82;->zzf:Lcom/google/android/gms/internal/ads/g82;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/d82;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/d82;-><init>(Lcom/google/android/gms/internal/ads/c82;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/g82;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/g82;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzb"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-class p2, Lcom/google/android/gms/internal/ads/f82;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/g82;->zzf:Lcom/google/android/gms/internal/ads/g82;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
