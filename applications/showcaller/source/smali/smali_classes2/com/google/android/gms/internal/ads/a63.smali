.class public final Lcom/google/android/gms/internal/ads/a63;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/a63;",
        "Lcom/google/android/gms/internal/ads/z53;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/a63;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/g63;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a63;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a63;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/a63;->zzg:Lcom/google/android/gms/internal/ads/a63;

    const-class v1, Lcom/google/android/gms/internal/ads/a63;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->d:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/a63;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static F(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/a63;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/a63;->zzg:Lcom/google/android/gms/internal/ads/a63;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ie3;->s(Lcom/google/android/gms/internal/ads/ie3;Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/a63;

    return-object p0
.end method

.method public static G()Lcom/google/android/gms/internal/ads/z53;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/a63;->zzg:Lcom/google/android/gms/internal/ads/a63;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/z53;

    return-object v0
.end method

.method public static H()Lcom/google/android/gms/internal/ads/a63;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/a63;->zzg:Lcom/google/android/gms/internal/ads/a63;

    return-object v0
.end method

.method static synthetic I()Lcom/google/android/gms/internal/ads/a63;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/a63;->zzg:Lcom/google/android/gms/internal/ads/a63;

    return-object v0
.end method

.method static synthetic J(Lcom/google/android/gms/internal/ads/a63;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/a63;->zzb:I

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/a63;Lcom/google/android/gms/internal/ads/g63;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a63;->zze:Lcom/google/android/gms/internal/ads/g63;

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/a63;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a63;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/a63;->zzg:Lcom/google/android/gms/internal/ads/a63;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/z53;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/z53;-><init>(Lcom/google/android/gms/internal/ads/y53;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/a63;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/a63;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/ads/a63;->zzg:Lcom/google/android/gms/internal/ads/a63;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/a63;->zzb:I

    return v0
.end method

.method public final D()Lcom/google/android/gms/internal/ads/g63;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a63;->zze:Lcom/google/android/gms/internal/ads/g63;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/g63;->E()Lcom/google/android/gms/internal/ads/g63;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final E()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a63;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-object v0
.end method
