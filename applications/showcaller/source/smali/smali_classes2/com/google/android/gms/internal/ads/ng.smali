.class public final Lcom/google/android/gms/internal/ads/ng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/kg;


# instance fields
.field private final d:[Lcom/google/android/gms/internal/ads/kg;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/kg;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/zb;

.field private g:Lcom/google/android/gms/internal/ads/jg;

.field private h:Lcom/google/android/gms/internal/ads/ac;

.field private i:I

.field private j:Lcom/google/android/gms/internal/ads/zzasu;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/kg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->d:[Lcom/google/android/gms/internal/ads/kg;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ng;->e:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/gms/internal/ads/zb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->f:Lcom/google/android/gms/internal/ads/zb;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/ng;->i:I

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ng;ILcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ng;->j:Lcom/google/android/gms/internal/ads/zzasu;

    const/4 v0, 0x0

    if-nez p3, :cond_3

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ng;->f:Lcom/google/android/gms/internal/ads/zb;

    invoke-virtual {p2, v1, v2, p3}, Lcom/google/android/gms/internal/ads/ac;->g(ILcom/google/android/gms/internal/ads/zb;Z)Lcom/google/android/gms/internal/ads/zb;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/ng;->i:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_2

    iput v2, p0, Lcom/google/android/gms/internal/ads/ng;->i:I

    :cond_1
    move-object p3, v0

    goto :goto_1

    :cond_2
    if-eq p3, v2, :cond_1

    .line 2
    new-instance p3, Lcom/google/android/gms/internal/ads/zzasu;

    .line 3
    invoke-direct {p3, v2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(I)V

    .line 4
    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ng;->j:Lcom/google/android/gms/internal/ads/zzasu;

    :cond_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ng;->j:Lcom/google/android/gms/internal/ads/zzasu;

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ng;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ng;->d:[Lcom/google/android/gms/internal/ads/kg;

    .line 5
    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_5

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ng;->h:Lcom/google/android/gms/internal/ads/ac;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->e:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->g:Lcom/google/android/gms/internal/ads/jg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ng;->h:Lcom/google/android/gms/internal/ads/ac;

    .line 7
    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/ads/jg;->f(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ig;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/lg;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ng;->d:[Lcom/google/android/gms/internal/ads/kg;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/lg;->d:[Lcom/google/android/gms/internal/ads/ig;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/kg;->a(Lcom/google/android/gms/internal/ads/ig;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ng;->j:Lcom/google/android/gms/internal/ads/zzasu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ng;->d:[Lcom/google/android/gms/internal/ads/kg;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2
    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/kg;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    throw v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/ib;ZLcom/google/android/gms/internal/ads/jg;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ng;->g:Lcom/google/android/gms/internal/ads/jg;

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ng;->d:[Lcom/google/android/gms/internal/ads/kg;

    array-length v1, v0

    if-ge p3, v1, :cond_0

    aget-object v0, v0, p3

    new-instance v1, Lcom/google/android/gms/internal/ads/mg;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/ads/mg;-><init>(Lcom/google/android/gms/internal/ads/ng;I)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/kg;->c(Lcom/google/android/gms/internal/ads/ib;ZLcom/google/android/gms/internal/ads/jg;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(ILcom/google/android/gms/internal/ads/sh;)Lcom/google/android/gms/internal/ads/ig;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ng;->d:[Lcom/google/android/gms/internal/ads/kg;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/ig;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ng;->d:[Lcom/google/android/gms/internal/ads/kg;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/kg;->d(ILcom/google/android/gms/internal/ads/sh;)Lcom/google/android/gms/internal/ads/ig;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/lg;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/lg;-><init>([Lcom/google/android/gms/internal/ads/ig;)V

    return-object p1
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ng;->d:[Lcom/google/android/gms/internal/ads/kg;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/kg;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
