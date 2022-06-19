.class public final Lcom/google/android/gms/internal/ads/w73;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/w73;",
        "Lcom/google/android/gms/internal/ads/v73;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/ads/w73;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/z73;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/w73;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/w73;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/w73;->zze:Lcom/google/android/gms/internal/ads/w73;

    const-class v1, Lcom/google/android/gms/internal/ads/w73;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    return-void
.end method

.method public static D(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/w73;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/w73;->zze:Lcom/google/android/gms/internal/ads/w73;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ie3;->s(Lcom/google/android/gms/internal/ads/ie3;Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/w73;

    return-object p0
.end method

.method public static E()Lcom/google/android/gms/internal/ads/v73;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/w73;->zze:Lcom/google/android/gms/internal/ads/w73;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/v73;

    return-object v0
.end method

.method static synthetic F()Lcom/google/android/gms/internal/ads/w73;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/w73;->zze:Lcom/google/android/gms/internal/ads/w73;

    return-object v0
.end method

.method static synthetic G(Lcom/google/android/gms/internal/ads/w73;Lcom/google/android/gms/internal/ads/z73;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w73;->zzb:Lcom/google/android/gms/internal/ads/z73;

    return-void
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/w73;->zze:Lcom/google/android/gms/internal/ads/w73;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/v73;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/v73;-><init>(Lcom/google/android/gms/internal/ads/u73;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/w73;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/w73;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzb"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/w73;->zze:Lcom/google/android/gms/internal/ads/w73;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lcom/google/android/gms/internal/ads/z73;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w73;->zzb:Lcom/google/android/gms/internal/ads/z73;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/z73;->F()Lcom/google/android/gms/internal/ads/z73;

    move-result-object v0

    :cond_0
    return-object v0
.end method
