.class public Lg6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/RewardItem;
.implements Lp8/h;
.implements Landroidx/lifecycle/z;
.implements Lo4/s;
.implements Lz4/f;


# static fields
.field public static a:Lg6/b;

.field public static b:Lg6/b;

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static g:[Z

.field public static final h:Lz4/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0402fe

    aput v2, v0, v1

    .line 1
    sput-object v0, Lg6/b;->c:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lg6/b;->d:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lg6/b;->e:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lg6/b;->f:[I

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 3
    sput-object v0, Lg6/b;->g:[Z

    .line 4
    new-instance v0, Lg6/b;

    invoke-direct {v0}, Lg6/b;-><init>()V

    sput-object v0, Lg6/b;->h:Lz4/f;

    return-void

    :array_0
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data

    :array_1
    .array-data 4
        0x10100d0
        0x1010199
    .end array-data

    :array_2
    .array-data 4
        0x1010199
        0x1010449
        0x101044a
        0x101044b
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lv/e;Lt/d;Lv/d;)V
    .locals 6

    const/4 v0, -0x1

    .line 1
    iput v0, p2, Lv/d;->o:I

    .line 2
    iput v0, p2, Lv/d;->p:I

    .line 3
    iget-object v0, p0, Lv/d;->U:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Lv/d;->U:[I

    aget v0, v0, v1

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v0, p2, Lv/d;->J:Lv/c;

    iget v0, v0, Lv/c;->g:I

    .line 5
    invoke-virtual {p0}, Lv/d;->u()I

    move-result v1

    iget-object v4, p2, Lv/d;->L:Lv/c;

    iget v4, v4, Lv/c;->g:I

    sub-int/2addr v1, v4

    .line 6
    iget-object v4, p2, Lv/d;->J:Lv/c;

    invoke-virtual {p1, v4}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v5

    iput-object v5, v4, Lv/c;->i:Lt/h;

    .line 7
    iget-object v4, p2, Lv/d;->L:Lv/c;

    invoke-virtual {p1, v4}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v5

    iput-object v5, v4, Lv/c;->i:Lt/h;

    .line 8
    iget-object v4, p2, Lv/d;->J:Lv/c;

    iget-object v4, v4, Lv/c;->i:Lt/h;

    invoke-virtual {p1, v4, v0}, Lt/d;->e(Lt/h;I)V

    .line 9
    iget-object v4, p2, Lv/d;->L:Lv/c;

    iget-object v4, v4, Lv/c;->i:Lt/h;

    invoke-virtual {p1, v4, v1}, Lt/d;->e(Lt/h;I)V

    .line 10
    iput v2, p2, Lv/d;->o:I

    .line 11
    iput v0, p2, Lv/d;->a0:I

    sub-int/2addr v1, v0

    .line 12
    iput v1, p2, Lv/d;->W:I

    .line 13
    iget v0, p2, Lv/d;->d0:I

    if-ge v1, v0, :cond_0

    .line 14
    iput v0, p2, Lv/d;->W:I

    .line 15
    :cond_0
    iget-object v0, p0, Lv/d;->U:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Lv/d;->U:[I

    aget v0, v0, v1

    if-ne v0, v3, :cond_3

    .line 16
    iget-object v0, p2, Lv/d;->K:Lv/c;

    iget v0, v0, Lv/c;->g:I

    .line 17
    invoke-virtual {p0}, Lv/d;->l()I

    move-result p0

    iget-object v1, p2, Lv/d;->M:Lv/c;

    iget v1, v1, Lv/c;->g:I

    sub-int/2addr p0, v1

    .line 18
    iget-object v1, p2, Lv/d;->K:Lv/c;

    invoke-virtual {p1, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v3

    iput-object v3, v1, Lv/c;->i:Lt/h;

    .line 19
    iget-object v1, p2, Lv/d;->M:Lv/c;

    invoke-virtual {p1, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v3

    iput-object v3, v1, Lv/c;->i:Lt/h;

    .line 20
    iget-object v1, p2, Lv/d;->K:Lv/c;

    iget-object v1, v1, Lv/c;->i:Lt/h;

    invoke-virtual {p1, v1, v0}, Lt/d;->e(Lt/h;I)V

    .line 21
    iget-object v1, p2, Lv/d;->M:Lv/c;

    iget-object v1, v1, Lv/c;->i:Lt/h;

    invoke-virtual {p1, v1, p0}, Lt/d;->e(Lt/h;I)V

    .line 22
    iget v1, p2, Lv/d;->c0:I

    if-gtz v1, :cond_1

    .line 23
    iget v1, p2, Lv/d;->i0:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 24
    :cond_1
    iget-object v1, p2, Lv/d;->N:Lv/c;

    invoke-virtual {p1, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v3

    iput-object v3, v1, Lv/c;->i:Lt/h;

    .line 25
    iget-object v1, p2, Lv/d;->N:Lv/c;

    iget-object v1, v1, Lv/c;->i:Lt/h;

    iget v3, p2, Lv/d;->c0:I

    add-int/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Lt/d;->e(Lt/h;I)V

    .line 26
    :cond_2
    iput v2, p2, Lv/d;->p:I

    .line 27
    iput v0, p2, Lv/d;->b0:I

    sub-int/2addr p0, v0

    .line 28
    iput p0, p2, Lv/d;->X:I

    .line 29
    iget p1, p2, Lv/d;->e0:I

    if-ge p0, p1, :cond_3

    .line 30
    iput p1, p2, Lv/d;->X:I

    :cond_3
    return-void
.end method

.method public static final d(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/x;
    .locals 4

    const-string v0, "Cannot create an instance of "

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/x;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public b(Lz4/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0$AnalyticsConnectorRegistrar(Lz4/d;)Lx4/a;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float v0, p2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float p1, p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAmount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lj4/i2;->a:Lj4/i2;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
