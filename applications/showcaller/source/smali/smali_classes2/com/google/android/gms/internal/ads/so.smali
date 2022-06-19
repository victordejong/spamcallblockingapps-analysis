.class public final Lcom/google/android/gms/internal/ads/so;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/so;",
        "Lcom/google/android/gms/internal/ads/ko;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/so;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/so;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/so;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/so;->zzg:Lcom/google/android/gms/internal/ads/so;

    const-class v1, Lcom/google/android/gms/internal/ads/so;

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

.method public static E()Lcom/google/android/gms/internal/ads/ko;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/so;->zzg:Lcom/google/android/gms/internal/ads/so;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ko;

    return-object v0
.end method

.method public static F()Lcom/google/android/gms/internal/ads/so;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/so;->zzg:Lcom/google/android/gms/internal/ads/so;

    return-object v0
.end method

.method static synthetic G()Lcom/google/android/gms/internal/ads/so;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/so;->zzg:Lcom/google/android/gms/internal/ads/so;

    return-object v0
.end method

.method static synthetic J(Lcom/google/android/gms/internal/ads/so;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/so;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/so;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/so;->zzb:I

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/so;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/so;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/so;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/so;->zzb:I

    return-void
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/google/android/gms/internal/ads/so;->zzg:Lcom/google/android/gms/internal/ads/so;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/ko;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ko;-><init>(Lcom/google/android/gms/internal/ads/um;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/so;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/so;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzb"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/qo;->a:Lcom/google/android/gms/internal/ads/me3;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/mo;->a:Lcom/google/android/gms/internal/ads/me3;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/so;->zzg:Lcom/google/android/gms/internal/ads/so;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/so;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/so;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/so;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ro;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final I()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/so;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/no;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
