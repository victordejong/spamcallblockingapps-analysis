.class public final Lcom/google/android/gms/internal/ads/dqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/dqv;


# instance fields
.field public final b:I

.field private final c:[Lcom/google/android/gms/internal/ads/dqs;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dqv;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dqs;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dqv;-><init>([Lcom/google/android/gms/internal/ads/dqs;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dqv;->a:Lcom/google/android/gms/internal/ads/dqv;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/dqs;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqv;->c:[Lcom/google/android/gms/internal/ads/dqs;

    .line 3
    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqv;->b:I

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dqs;)I
    .locals 2

    .prologue
    .line 6
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dqv;->b:I

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqv;->c:[Lcom/google/android/gms/internal/ads/dqs;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 10
    :goto_1
    return v0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a(I)Lcom/google/android/gms/internal/ads/dqs;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqv;->c:[Lcom/google/android/gms/internal/ads/dqs;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    if-ne p0, p1, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v0

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/dqv;

    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/dqv;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/dqv;->b:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqv;->c:[Lcom/google/android/gms/internal/ads/dqs;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dqv;->c:[Lcom/google/android/gms/internal/ads/dqs;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqv;->d:I

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqv;->c:[Lcom/google/android/gms/internal/ads/dqs;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqv;->d:I

    .line 13
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqv;->d:I

    return v0
.end method
