.class public final Lcom/google/android/gms/internal/ads/bvi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bvj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cah",
            "<",
            "Lcom/google/android/gms/internal/ads/cak;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/chh;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/ug;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bwz;Lcom/google/android/gms/internal/ads/chh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ug;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bwz",
            "<",
            "Lcom/google/android/gms/internal/ads/cak;",
            ">;",
            "Lcom/google/android/gms/internal/ads/chh;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/ug;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvi;->a:Lcom/google/android/gms/internal/ads/cah;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvi;->b:Lcom/google/android/gms/internal/ads/chh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvi;->c:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bvi;->d:Lcom/google/android/gms/internal/ads/ug;

    .line 6
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/cak;)Lcom/google/android/gms/internal/ads/bvj;
    .locals 15

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvi;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/chh;->e:Lcom/google/android/gms/internal/ads/dyd;

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dyd;->g:[Lcom/google/android/gms/internal/ads/dyd;

    if-nez v0, :cond_2

    .line 16
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dyd;->a:Ljava/lang/String;

    .line 17
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/dyd;->i:Z

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvi;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvi;->d:Lcom/google/android/gms/internal/ads/ug;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->n()Ljava/lang/String;

    move-result-object v8

    .line 43
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dyd;->g:[Lcom/google/android/gms/internal/ads/dyd;

    if-eqz v0, :cond_c

    .line 45
    const/4 v4, 0x0

    .line 46
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dyd;->g:[Lcom/google/android/gms/internal/ads/dyd;

    array-length v12, v11

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v12, :cond_a

    aget-object v13, v11, v9

    .line 47
    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/dyd;->i:Z

    if-eqz v0, :cond_6

    .line 48
    const/4 v0, 0x1

    .line 62
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move v4, v0

    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dyd;->g:[Lcom/google/android/gms/internal/ads/dyd;

    array-length v7, v6

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_0

    aget-object v8, v6, v4

    .line 21
    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/dyd;->i:Z

    if-nez v9, :cond_3

    if-nez v0, :cond_3

    .line 22
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/dyd;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_3
    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/dyd;->i:Z

    if-eqz v8, :cond_4

    if-nez v5, :cond_4

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v5, 0x1

    .line 27
    :cond_4
    if-eqz v0, :cond_5

    if-nez v5, :cond_0

    .line 28
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 49
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    const-string/jumbo v0, "|"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_7
    iget v0, v13, Lcom/google/android/gms/internal/ads/dyd;->e:I

    const/4 v14, -0x1

    if-ne v0, v14, :cond_8

    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_8

    .line 53
    iget v0, v13, Lcom/google/android/gms/internal/ads/dyd;->f:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 55
    :goto_3
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v0, "x"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v0, v13, Lcom/google/android/gms/internal/ads/dyd;->b:I

    const/4 v14, -0x2

    if-ne v0, v14, :cond_9

    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_9

    .line 59
    iget v0, v13, Lcom/google/android/gms/internal/ads/dyd;->c:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 61
    :goto_4
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_1

    .line 54
    :cond_8
    iget v0, v13, Lcom/google/android/gms/internal/ads/dyd;->e:I

    goto :goto_3

    .line 60
    :cond_9
    iget v0, v13, Lcom/google/android/gms/internal/ads/dyd;->b:I

    goto :goto_4

    .line 63
    :cond_a
    if-eqz v4, :cond_c

    .line 64
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    const/4 v0, 0x0

    const-string/jumbo v4, "|"

    invoke-virtual {v10, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_b
    const/4 v0, 0x0

    const-string/jumbo v4, "320x50"

    invoke-virtual {v10, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    new-instance v0, Lcom/google/android/gms/internal/ads/bvj;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/bvi;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/chh;->o:Z

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/bvj;-><init>(Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bvj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvi;->a:Lcom/google/android/gms/internal/ads/cah;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cah;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/bvl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bvl;-><init>(Lcom/google/android/gms/internal/ads/bvi;)V

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 11
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
