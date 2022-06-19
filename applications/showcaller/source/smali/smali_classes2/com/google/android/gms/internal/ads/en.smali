.class public final Lcom/google/android/gms/internal/ads/en;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/en;",
        "Lcom/google/android/gms/internal/ads/dn;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/en;


# instance fields
.field private zzb:I

.field private zze:Z

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/en;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/en;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/en;->zzg:Lcom/google/android/gms/internal/ads/en;

    const-class v1, Lcom/google/android/gms/internal/ads/en;

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

.method public static C()Lcom/google/android/gms/internal/ads/dn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/en;->zzg:Lcom/google/android/gms/internal/ads/en;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dn;

    return-object v0
.end method

.method public static D()Lcom/google/android/gms/internal/ads/en;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/en;->zzg:Lcom/google/android/gms/internal/ads/en;

    return-object v0
.end method

.method static synthetic E()Lcom/google/android/gms/internal/ads/en;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/en;->zzg:Lcom/google/android/gms/internal/ads/en;

    return-object v0
.end method

.method static synthetic F(Lcom/google/android/gms/internal/ads/en;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/en;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/en;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/en;->zze:Z

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/ads/en;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/en;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/en;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/en;->zzf:I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/en;->zzg:Lcom/google/android/gms/internal/ads/en;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/dn;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/dn;-><init>(Lcom/google/android/gms/internal/ads/um;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/en;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/en;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/ads/en;->zzg:Lcom/google/android/gms/internal/ads/en;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u100b\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
