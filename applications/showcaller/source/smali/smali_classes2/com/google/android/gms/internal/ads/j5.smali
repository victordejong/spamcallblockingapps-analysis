.class public final Lcom/google/android/gms/internal/ads/j5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/j5;

.field public static final b:Lcom/google/android/gms/internal/ads/w2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/w2<",
            "Lcom/google/android/gms/internal/ads/j5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/ads/i5;

.field public final e:Lcom/google/android/gms/internal/ads/g5;

.field public final f:Lcom/google/android/gms/internal/ads/n5;

.field public final g:Lcom/google/android/gms/internal/ads/c5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a5;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a5;->c()Lcom/google/android/gms/internal/ads/j5;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/j5;->a:Lcom/google/android/gms/internal/ads/j5;

    sget-object v0, Lcom/google/android/gms/internal/ads/x4;->a:Lcom/google/android/gms/internal/ads/w2;

    sput-object v0, Lcom/google/android/gms/internal/ads/j5;->b:Lcom/google/android/gms/internal/ads/w2;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/c5;Lcom/google/android/gms/internal/ads/i5;Lcom/google/android/gms/internal/ads/g5;Lcom/google/android/gms/internal/ads/n5;Lcom/google/android/gms/internal/ads/h5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/j5;->d:Lcom/google/android/gms/internal/ads/i5;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/j5;->e:Lcom/google/android/gms/internal/ads/g5;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/j5;->f:Lcom/google/android/gms/internal/ads/n5;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j5;->g:Lcom/google/android/gms/internal/ads/c5;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/j5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/j5;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->g:Lcom/google/android/gms/internal/ads/c5;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/j5;->g:Lcom/google/android/gms/internal/ads/c5;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/c5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->d:Lcom/google/android/gms/internal/ads/i5;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/j5;->d:Lcom/google/android/gms/internal/ads/i5;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->e:Lcom/google/android/gms/internal/ads/g5;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/j5;->e:Lcom/google/android/gms/internal/ads/g5;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->f:Lcom/google/android/gms/internal/ads/n5;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/j5;->f:Lcom/google/android/gms/internal/ads/n5;

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->d:Lcom/google/android/gms/internal/ads/i5;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/i5;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->e:Lcom/google/android/gms/internal/ads/g5;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g5;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->g:Lcom/google/android/gms/internal/ads/c5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c5;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->f:Lcom/google/android/gms/internal/ads/n5;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/n5;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
