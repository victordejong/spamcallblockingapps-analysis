.class public final Lcom/google/android/gms/internal/ads/z73;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/z73;",
        "Lcom/google/android/gms/internal/ads/y73;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/z73;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/k83;

.field private zze:Lcom/google/android/gms/internal/ads/t73;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/z73;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/z73;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/z73;->zzg:Lcom/google/android/gms/internal/ads/z73;

    const-class v1, Lcom/google/android/gms/internal/ads/z73;

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

.method public static E()Lcom/google/android/gms/internal/ads/y73;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/z73;->zzg:Lcom/google/android/gms/internal/ads/z73;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/y73;

    return-object v0
.end method

.method public static F()Lcom/google/android/gms/internal/ads/z73;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/z73;->zzg:Lcom/google/android/gms/internal/ads/z73;

    return-object v0
.end method

.method static synthetic G()Lcom/google/android/gms/internal/ads/z73;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/z73;->zzg:Lcom/google/android/gms/internal/ads/z73;

    return-object v0
.end method

.method static synthetic H(Lcom/google/android/gms/internal/ads/z73;Lcom/google/android/gms/internal/ads/k83;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z73;->zzb:Lcom/google/android/gms/internal/ads/k83;

    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/ads/z73;Lcom/google/android/gms/internal/ads/t73;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z73;->zze:Lcom/google/android/gms/internal/ads/t73;

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/z73;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/q73;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/z73;->zzf:I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/z73;->zzg:Lcom/google/android/gms/internal/ads/z73;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/y73;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/y73;-><init>(Lcom/google/android/gms/internal/ads/x73;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/z73;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/z73;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/ads/z73;->zzg:Lcom/google/android/gms/internal/ads/z73;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lcom/google/android/gms/internal/ads/k83;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z73;->zzb:Lcom/google/android/gms/internal/ads/k83;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/k83;->E()Lcom/google/android/gms/internal/ads/k83;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final D()Lcom/google/android/gms/internal/ads/t73;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z73;->zze:Lcom/google/android/gms/internal/ads/t73;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/t73;->E()Lcom/google/android/gms/internal/ads/t73;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final J()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/z73;->zzf:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return v3

    :cond_4
    return v1
.end method
