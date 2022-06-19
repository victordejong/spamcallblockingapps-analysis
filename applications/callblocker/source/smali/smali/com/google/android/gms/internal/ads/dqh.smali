.class public final Lcom/google/android/gms/internal/ads/dqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dqg;


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/dqg;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/dqg;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dlo;

.field private d:Lcom/google/android/gms/internal/ads/dqf;

.field private e:Lcom/google/android/gms/internal/ads/dln;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Lcom/google/android/gms/internal/ads/zzmn;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/dqg;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/dlo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dlo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->c:Lcom/google/android/gms/internal/ads/dlo;

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqh;->g:I

    .line 6
    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->h:Lcom/google/android/gms/internal/ads/zzmn;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dln;->a()I

    move-result v2

    move v0, v1

    .line 36
    :goto_0
    if-ge v0, v2, :cond_3

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dqh;->c:Lcom/google/android/gms/internal/ads/dlo;

    invoke-virtual {p2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;Z)Lcom/google/android/gms/internal/ads/dlo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/dlo;->e:Z

    if-eqz v3, :cond_2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzmn;-><init>(I)V

    .line 45
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->h:Lcom/google/android/gms/internal/ads/zzmn;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->h:Lcom/google/android/gms/internal/ads/zzmn;

    if-eqz v0, :cond_6

    .line 54
    :cond_1
    :goto_2
    return-void

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqh;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dln;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqh;->g:I

    .line 44
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 42
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dln;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dqh;->g:I

    if-eq v0, v1, :cond_4

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzmn;-><init>(I)V

    goto :goto_1

    .line 48
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    if-nez p1, :cond_7

    .line 50
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dqh;->e:Lcom/google/android/gms/internal/ads/dln;

    .line 51
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dqh;->f:Ljava/lang/Object;

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->d:Lcom/google/android/gms/internal/ads/dqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqh;->e:Lcom/google/android/gms/internal/ads/dln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqh;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dqf;->a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dqh;ILcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dqh;->a(ILcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/drn;)Lcom/google/android/gms/internal/ads/dqe;
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/dqe;

    .line 20
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/dqg;->a(ILcom/google/android/gms/internal/ads/drn;)Lcom/google/android/gms/internal/ads/dqe;

    move-result-object v2

    aput-object v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dqi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dqi;-><init>([Lcom/google/android/gms/internal/ads/dqe;)V

    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->h:Lcom/google/android/gms/internal/ads/zzmn;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqh;->h:Lcom/google/android/gms/internal/ads/zzmn;

    throw v0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 16
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dqg;->a()V

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dkt;ZLcom/google/android/gms/internal/ads/dqf;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dqh;->d:Lcom/google/android/gms/internal/ads/dqf;

    move v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    aget-object v2, v2, v0

    new-instance v3, Lcom/google/android/gms/internal/ads/dqj;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/dqj;-><init>(Lcom/google/android/gms/internal/ads/dqh;I)V

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/dqg;->a(Lcom/google/android/gms/internal/ads/dkt;ZLcom/google/android/gms/internal/ads/dqf;)V

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqe;)V
    .locals 3

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/dqi;

    .line 25
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dqg;->a(Lcom/google/android/gms/internal/ads/dqe;)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqh;->a:[Lcom/google/android/gms/internal/ads/dqg;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 30
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dqg;->b()V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
