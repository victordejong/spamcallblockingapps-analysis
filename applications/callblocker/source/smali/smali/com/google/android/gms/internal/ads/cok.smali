.class public final Lcom/google/android/gms/internal/ads/cok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/coj;

.field private c:Lcom/google/android/gms/internal/ads/coj;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/coj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/coj;-><init>(Lcom/google/android/gms/internal/ads/cog;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cok;->b:Lcom/google/android/gms/internal/ads/coj;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cok;->b:Lcom/google/android/gms/internal/ads/coj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cok;->c:Lcom/google/android/gms/internal/ads/coj;

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cok;->d:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cok;->a:Ljava/lang/String;

    .line 6
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/cog;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cok;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cok;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 7
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/coj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/coj;-><init>(Lcom/google/android/gms/internal/ads/cog;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cok;->c:Lcom/google/android/gms/internal/ads/coj;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/coj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cok;->c:Lcom/google/android/gms/internal/ads/coj;

    .line 12
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/coj;->a:Ljava/lang/Object;

    .line 14
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 15
    const-string/jumbo v1, ""

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cok;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cok;->b:Lcom/google/android/gms/internal/ads/coj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/coj;

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/coj;->a:Ljava/lang/Object;

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v1, ", "

    .line 22
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 24
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 28
    :goto_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/coj;

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
