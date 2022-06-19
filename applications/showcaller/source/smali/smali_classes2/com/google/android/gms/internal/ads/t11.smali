.class public final Lcom/google/android/gms/internal/ads/t11;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/t11;

.field private static final b:Lcom/google/android/gms/internal/ads/ub0;

.field public static final c:Lcom/google/android/gms/internal/ads/w2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/w2<",
            "Lcom/google/android/gms/internal/ads/t11;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:J

.field private final e:[Lcom/google/android/gms/internal/ads/ub0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/t11;

    const/4 v9, 0x0

    new-array v2, v9, [Lcom/google/android/gms/internal/ads/ub0;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/t11;-><init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/ub0;JJI)V

    sput-object v8, Lcom/google/android/gms/internal/ads/t11;->a:Lcom/google/android/gms/internal/ads/t11;

    new-instance v0, Lcom/google/android/gms/internal/ads/ub0;

    const-wide/16 v1, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ub0;-><init>(J)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/ub0;->b(I)Lcom/google/android/gms/internal/ads/ub0;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/t11;->b:Lcom/google/android/gms/internal/ads/ub0;

    sget-object v0, Lcom/google/android/gms/internal/ads/a;->a:Lcom/google/android/gms/internal/ads/w2;

    sput-object v0, Lcom/google/android/gms/internal/ads/t11;->c:Lcom/google/android/gms/internal/ads/w2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/ub0;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/t11;->d:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t11;->e:[Lcom/google/android/gms/internal/ads/ub0;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/ub0;
    .locals 1

    if-gez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/t11;->b:Lcom/google/android/gms/internal/ads/ub0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t11;->e:[Lcom/google/android/gms/internal/ads/ub0;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/t11;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/t11;

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t11;->e:[Lcom/google/android/gms/internal/ads/ub0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/t11;->e:[Lcom/google/android/gms/internal/ads/ub0;

    .line 3
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    long-to-int v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t11;->e:[Lcom/google/android/gms/internal/ads/ub0;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs=0, adGroups=["

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
