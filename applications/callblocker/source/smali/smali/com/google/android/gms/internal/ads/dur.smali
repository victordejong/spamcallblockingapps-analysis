.class public final Lcom/google/android/gms/internal/ads/dur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ads/duo;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/duv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/duv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dur;->d:Lcom/google/android/gms/internal/ads/duo;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/dur;->b:I

    .line 4
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/dur;->a:I

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dur;->c:I

    .line 6
    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 14
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 15
    array-length v0, v2

    if-nez v0, :cond_0

    .line 16
    const-string/jumbo v0, ""

    .line 32
    :goto_0
    return-object v0

    .line 17
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/dut;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/dut;-><init>()V

    .line 19
    new-instance v4, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/google/android/gms/internal/ads/dur;->b:I

    new-instance v5, Lcom/google/android/gms/internal/ads/duq;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/ads/duq;-><init>(Lcom/google/android/gms/internal/ads/dur;)V

    invoke-direct {v4, v0, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    move v0, v1

    .line 20
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 21
    aget-object v5, v2, v0

    .line 22
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/dus;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    .line 24
    array-length v6, v5

    if-eqz v6, :cond_1

    .line 25
    iget v6, p0, Lcom/google/android/gms/internal/ads/dur;->b:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/dur;->a:I

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/gms/internal/ads/dux;->a([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duw;

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dur;->d:Lcom/google/android/gms/internal/ads/duo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/duw;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/duo;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dut;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string/jumbo v1, "Error while writing hash to byteStream"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dut;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Ljava/lang/String;

    .line 9
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dur;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
