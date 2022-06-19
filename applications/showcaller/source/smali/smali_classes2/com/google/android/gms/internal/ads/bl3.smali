.class public final Lcom/google/android/gms/internal/ads/bl3;
.super Lcom/google/android/gms/internal/ads/wj3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/wj3<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final j:Lcom/google/android/gms/internal/ads/j5;


# instance fields
.field private final k:[Lcom/google/android/gms/internal/ads/ok3;

.field private final l:[Lcom/google/android/gms/internal/ads/p7;

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/ok3;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/google/android/gms/internal/ads/tx2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/tx2<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/sj3;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:[[J

.field private r:Lcom/google/android/gms/internal/ads/zzhu;

.field private final s:Lcom/google/android/gms/internal/ads/yj3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a5;-><init>()V

    const-string v1, "MergingMediaSource"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/a5;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/a5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a5;->c()Lcom/google/android/gms/internal/ads/j5;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bl3;->j:Lcom/google/android/gms/internal/ads/j5;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Lcom/google/android/gms/internal/ads/ok3;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/yj3;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/yj3;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wj3;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bl3;->k:[Lcom/google/android/gms/internal/ads/ok3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->s:Lcom/google/android/gms/internal/ads/yj3;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->m:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/bl3;->p:I

    array-length p1, p3

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/p7;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->l:[Lcom/google/android/gms/internal/ads/p7;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->q:[[J

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->n:Ljava/util/Map;

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ay2;->a(I)Lcom/google/android/gms/internal/ads/yx2;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/yx2;->b(I)Lcom/google/android/gms/internal/ads/wx2;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wx2;->c()Lcom/google/android/gms/internal/ads/kx2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->o:Lcom/google/android/gms/internal/ads/tx2;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/lk3;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/al3;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bl3;->k:[Lcom/google/android/gms/internal/ads/ok3;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/al3;->a(I)Lcom/google/android/gms/internal/ads/lk3;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ok3;->c(Lcom/google/android/gms/internal/ads/lk3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/lk3;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->k:[Lcom/google/android/gms/internal/ads/ok3;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/lk3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bl3;->l:[Lcom/google/android/gms/internal/ads/p7;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bl3;->l:[Lcom/google/android/gms/internal/ads/p7;

    .line 2
    aget-object v4, v4, v3

    .line 3
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/p7;->j(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/mk3;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bl3;->k:[Lcom/google/android/gms/internal/ads/ok3;

    .line 4
    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bl3;->q:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v6, p3, v7

    .line 5
    invoke-interface {v5, v4, p2, v6, v7}, Lcom/google/android/gms/internal/ads/ok3;->e(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/lk3;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/al3;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bl3;->s:Lcom/google/android/gms/internal/ads/yj3;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bl3;->q:[[J

    .line 6
    aget-object p3, p3, v2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, v1, p4}, Lcom/google/android/gms/internal/ads/al3;-><init>(Lcom/google/android/gms/internal/ads/yj3;[J[Lcom/google/android/gms/internal/ads/lk3;[B)V

    return-object p1
.end method

.method protected final m(Lcom/google/android/gms/internal/ads/ol;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/wj3;->m(Lcom/google/android/gms/internal/ads/ol;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->k:[Lcom/google/android/gms/internal/ads/ok3;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bl3;->k:[Lcom/google/android/gms/internal/ads/ok3;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/wj3;->y(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ok3;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final p()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/wj3;->p()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->l:[Lcom/google/android/gms/internal/ads/p7;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bl3;->p:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bl3;->r:Lcom/google/android/gms/internal/ads/zzhu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->m:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bl3;->k:[Lcom/google/android/gms/internal/ads/ok3;

    .line 4
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final q()Lcom/google/android/gms/internal/ads/j5;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->k:[Lcom/google/android/gms/internal/ads/ok3;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ok3;->q()Lcom/google/android/gms/internal/ads/j5;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/bl3;->j:Lcom/google/android/gms/internal/ads/j5;

    :goto_0
    return-object v0
.end method

.method protected final bridge synthetic x(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ok3;Lcom/google/android/gms/internal/ads/p7;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->r:Lcom/google/android/gms/internal/ads/zzhu;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/bl3;->p:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/p7;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bl3;->p:I

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/p7;->g()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/bl3;->p:I

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bl3;->q:[[J

    .line 4
    array-length v1, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bl3;->l:[Lcom/google/android/gms/internal/ads/p7;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    .line 5
    const-class v0, J

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->q:[[J

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->m:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bl3;->l:[Lcom/google/android/gms/internal/ads/p7;

    check-cast p1, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->m:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->l:[Lcom/google/android/gms/internal/ads/p7;

    .line 9
    aget-object p1, p1, v2

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dg3;->r(Lcom/google/android/gms/internal/ads/p7;)V

    :cond_3
    :goto_1
    return-void

    .line 11
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhu;

    .line 12
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bl3;->r:Lcom/google/android/gms/internal/ads/zzhu;

    return-void
.end method

.method protected final bridge synthetic z(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/mk3;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl3;->r:Lcom/google/android/gms/internal/ads/zzhu;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/wj3;->zzu()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method
