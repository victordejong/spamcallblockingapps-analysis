.class public final Lcom/google/android/gms/internal/ads/bg;
.super Lcom/google/android/gms/internal/ads/bq;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bh;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bu;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xcc

    .line 26
    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/bg;->a:I

    .line 27
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 28
    sput v0, Lcom/google/android/gms/internal/ads/bg;->b:I

    sput v0, Lcom/google/android/gms/internal/ads/bg;->c:I

    .line 29
    sget v0, Lcom/google/android/gms/internal/ads/bg;->a:I

    sput v0, Lcom/google/android/gms/internal/ads/bg;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bh;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bq;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->f:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->g:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bg;->e:Ljava/lang/String;

    .line 5
    if-eqz p2, :cond_0

    .line 6
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 7
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bh;

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bg;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bg;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 11
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/bg;->h:I

    .line 12
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/bg;->i:I

    .line 13
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/bg;->j:I

    .line 14
    iput p6, p0, Lcom/google/android/gms/internal/ads/bg;->k:I

    .line 15
    iput p7, p0, Lcom/google/android/gms/internal/ads/bg;->l:I

    .line 16
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/bg;->m:Z

    .line 17
    return-void

    .line 11
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/bg;->c:I

    goto :goto_1

    .line 12
    :cond_2
    sget v0, Lcom/google/android/gms/internal/ads/bg;->d:I

    goto :goto_2

    .line 13
    :cond_3
    const/16 v0, 0xc

    goto :goto_3
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->g:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->f:Ljava/util/List;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/bg;->h:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/bg;->i:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/bg;->j:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/bg;->k:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/bg;->l:I

    return v0
.end method
