.class public final Lcom/google/android/gms/internal/ads/tx3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tx3;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/tx3;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/tx3;->c:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/tx3;->d:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tx3;->e:Ljava/lang/String;

    return-void
.end method

.method private final d()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/tx3;->d:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/tx3;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/tx3;->b:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/tx3;->c:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/tx3;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tx3;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tx3;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tx3;->d()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/tx3;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tx3;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tx3;->e:Ljava/lang/String;

    return-object v0
.end method
