.class final Lcom/google/android/gms/internal/ads/dey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dez;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dey;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/dew;->b:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 40
    if-gez v0, :cond_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    :cond_0
    return v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 4

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dey;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dey;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    move-object v1, v0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/dew;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V

    move-object v1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dey;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dey;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 11
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dey;->a(I)I

    move-result v2

    .line 14
    add-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dew;->d(I)I

    move-result v3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 32
    :goto_1
    return-void

    .line 17
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dew;->d(I)I

    move-result v4

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    move-object v2, v0

    .line 19
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 21
    new-instance v3, Lcom/google/android/gms/internal/ads/dew;

    invoke-direct {v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V

    move-object v2, v3

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dew;

    invoke-direct {v0, v2, v1, v5}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V

    move-object v1, v0

    .line 24
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dey;->a(I)I

    move-result v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dew;->d(I)I

    move-result v2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 29
    new-instance v2, Lcom/google/android/gms/internal/ads/dew;

    invoke-direct {v2, v0, v1, v5}, Lcom/google/android/gms/internal/ads/dew;-><init>(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dez;)V

    move-object v1, v2

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dey;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 33
    :cond_4
    instance-of v0, v1, Lcom/google/android/gms/internal/ads/dew;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 34
    check-cast v0, Lcom/google/android/gms/internal/ads/dew;

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dew;->a(Lcom/google/android/gms/internal/ads/dew;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dey;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dew;->b(Lcom/google/android/gms/internal/ads/dew;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    goto/16 :goto_0

    .line 37
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
