.class public final Lcom/google/android/gms/internal/ads/ks2;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/ks2;",
        "Lcom/google/android/gms/internal/ads/js2;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/oe3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oe3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lcom/google/android/gms/internal/ads/ks2;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/ne3;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/hs2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hs2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ks2;->zzf:Lcom/google/android/gms/internal/ads/oe3;

    new-instance v0, Lcom/google/android/gms/internal/ads/ks2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ks2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ks2;->zzj:Lcom/google/android/gms/internal/ads/ks2;

    const-class v1, Lcom/google/android/gms/internal/ads/ks2;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ie3;->l()Lcom/google/android/gms/internal/ads/ne3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ks2;->zze:Lcom/google/android/gms/internal/ads/ne3;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ks2;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ks2;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ks2;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static C()Lcom/google/android/gms/internal/ads/js2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ks2;->zzj:Lcom/google/android/gms/internal/ads/ks2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/js2;

    return-object v0
.end method

.method static synthetic D()Lcom/google/android/gms/internal/ads/ks2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ks2;->zzj:Lcom/google/android/gms/internal/ads/ks2;

    return-object v0
.end method

.method static synthetic E(Lcom/google/android/gms/internal/ads/ks2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/ks2;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ks2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ks2;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/ads/ks2;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ks2;->zze:Lcom/google/android/gms/internal/ads/ne3;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/re3;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ie3;->m(Lcom/google/android/gms/internal/ads/ne3;)Lcom/google/android/gms/internal/ads/ne3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ks2;->zze:Lcom/google/android/gms/internal/ads/ne3;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ks2;->zze:Lcom/google/android/gms/internal/ads/ne3;

    const/4 p1, 0x2

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ne3;->d0(I)V

    return-void
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/ks2;->zzj:Lcom/google/android/gms/internal/ads/ks2;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/js2;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/js2;-><init>(Lcom/google/android/gms/internal/ads/hs2;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/ks2;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ks2;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/is2;->a:Lcom/google/android/gms/internal/ads/me3;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/ks2;->zzj:Lcom/google/android/gms/internal/ads/ks2;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
