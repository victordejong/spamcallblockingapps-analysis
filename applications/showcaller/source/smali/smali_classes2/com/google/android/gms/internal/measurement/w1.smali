.class public final Lcom/google/android/gms/internal/measurement/w1;
.super Lcom/google/android/gms/internal/measurement/x5;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/x5<",
        "Lcom/google/android/gms/internal/measurement/w1;",
        "Lcom/google/android/gms/internal/measurement/v1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/z6;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/measurement/w1;


# instance fields
.field private zza:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:F

.field private zzi:D

.field private zzj:Lcom/google/android/gms/internal/measurement/e6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/e6<",
            "Lcom/google/android/gms/internal/measurement/w1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/w1;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/w1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/w1;->zzk:Lcom/google/android/gms/internal/measurement/w1;

    const-class v1, Lcom/google/android/gms/internal/measurement/w1;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/x5;->w(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/x5;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/x5;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x5;->q()Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzj:Lcom/google/android/gms/internal/measurement/e6;

    return-void
.end method

.method public static M()Lcom/google/android/gms/internal/measurement/v1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/w1;->zzk:Lcom/google/android/gms/internal/measurement/w1;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x5;->s()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/v1;

    return-object v0
.end method

.method static synthetic N()Lcom/google/android/gms/internal/measurement/w1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/w1;->zzk:Lcom/google/android/gms/internal/measurement/w1;

    return-object v0
.end method

.method static synthetic O(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w1;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w1;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/w1;->zzk:Lcom/google/android/gms/internal/measurement/w1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/w1;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic R(Lcom/google/android/gms/internal/measurement/w1;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/w1;->zzg:J

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzg:J

    return-void
.end method

.method static synthetic T(Lcom/google/android/gms/internal/measurement/w1;D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/w1;->zzi:D

    return-void
.end method

.method static synthetic U(Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzi:D

    return-void
.end method

.method static synthetic V(Lcom/google/android/gms/internal/measurement/w1;Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/w1;->Y()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzj:Lcom/google/android/gms/internal/measurement/e6;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic W(Lcom/google/android/gms/internal/measurement/w1;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/w1;->Y()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzj:Lcom/google/android/gms/internal/measurement/e6;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/o4;->l(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic X(Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x5;->q()Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzj:Lcom/google/android/gms/internal/measurement/e6;

    return-void
.end method

.method private final Y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzj:Lcom/google/android/gms/internal/measurement/e6;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/e6;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x5;->r(Lcom/google/android/gms/internal/measurement/e6;)Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzj:Lcom/google/android/gms/internal/measurement/e6;

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzg:J

    return-wide v0
.end method

.method public final G()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzh:F

    return v0
.end method

.method public final I()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zza:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzi:D

    return-wide v0
.end method

.method public final K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/w1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzj:Lcom/google/android/gms/internal/measurement/e6;

    return-object v0
.end method

.method public final L()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->zzj:Lcom/google/android/gms/internal/measurement/e6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final y(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/w1;->zzk:Lcom/google/android/gms/internal/measurement/w1;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/v1;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/v1;-><init>(Lcom/google/android/gms/internal/measurement/j1;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/w1;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/w1;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zza"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 6
    const-class p3, Lcom/google/android/gms/internal/measurement/w1;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/w1;->zzk:Lcom/google/android/gms/internal/measurement/w1;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    .line 7
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/x5;->x(Lcom/google/android/gms/internal/measurement/y6;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
