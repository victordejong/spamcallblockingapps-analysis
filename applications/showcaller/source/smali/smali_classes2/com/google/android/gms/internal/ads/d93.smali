.class public final Lcom/google/android/gms/internal/ads/d93;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/d93;",
        "Lcom/google/android/gms/internal/ads/c93;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/d93;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/d93;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/d93;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/d93;->zzg:Lcom/google/android/gms/internal/ads/d93;

    const-class v1, Lcom/google/android/gms/internal/ads/d93;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/d93;->zzb:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->d:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/d93;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static E()Lcom/google/android/gms/internal/ads/c93;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/d93;->zzg:Lcom/google/android/gms/internal/ads/d93;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/c93;

    return-object v0
.end method

.method public static F()Lcom/google/android/gms/internal/ads/d93;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/d93;->zzg:Lcom/google/android/gms/internal/ads/d93;

    return-object v0
.end method

.method static synthetic G()Lcom/google/android/gms/internal/ads/d93;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/d93;->zzg:Lcom/google/android/gms/internal/ads/d93;

    return-object v0
.end method

.method static synthetic H(Lcom/google/android/gms/internal/ads/d93;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d93;->zzb:Ljava/lang/String;

    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/ads/d93;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d93;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/d93;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fa3;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/d93;->zzf:I

    return-void
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/ads/d93;->zzg:Lcom/google/android/gms/internal/ads/d93;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/c93;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/c93;-><init>(Lcom/google/android/gms/internal/ads/b93;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/d93;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/d93;-><init>()V

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

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/d93;->zzg:Lcom/google/android/gms/internal/ads/d93;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d93;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d93;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-object v0
.end method

.method public final J()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/d93;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fa3;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
