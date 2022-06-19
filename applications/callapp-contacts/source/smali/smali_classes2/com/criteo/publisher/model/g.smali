.class public Lcom/criteo/publisher/model/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/criteo/publisher/model/AdSize;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/m0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/criteo/publisher/model/AdSize;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    sput-object v0, Lcom/criteo/publisher/model/g;->c:Lcom/criteo/publisher/model/AdSize;

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/m0/k;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/g;->a:Lcom/criteo/publisher/logging/g;

    .line 62
    iput-object p1, p0, Lcom/criteo/publisher/model/g;->b:Lcom/criteo/publisher/m0/k;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/AdUnit;)Lcom/criteo/publisher/model/AdSize;
    .locals 2

    .line 92
    sget-object v0, Lcom/criteo/publisher/model/g$a;->a:[I

    invoke-interface {p1}, Lcom/criteo/publisher/model/AdUnit;->getAdUnitType()Lcom/criteo/publisher/m0/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    .line 99
    sget-object p1, Lcom/criteo/publisher/model/g;->c:Lcom/criteo/publisher/model/AdSize;

    return-object p1

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Found an invalid AdUnit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/criteo/publisher/model/g;->b:Lcom/criteo/publisher/m0/k;

    invoke-virtual {p1}, Lcom/criteo/publisher/m0/k;->b()Lcom/criteo/publisher/model/AdSize;

    move-result-object p1

    return-object p1

    .line 94
    :cond_2
    check-cast p1, Lcom/criteo/publisher/model/BannerAdUnit;

    .line 95
    invoke-virtual {p1}, Lcom/criteo/publisher/model/BannerAdUnit;->getSize()Lcom/criteo/publisher/model/AdSize;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/criteo/publisher/model/n;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/n;

    .line 135
    invoke-virtual {v1}, Lcom/criteo/publisher/model/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/criteo/publisher/model/n;->c()Lcom/criteo/publisher/model/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/criteo/publisher/model/AdSize;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/criteo/publisher/model/n;->c()Lcom/criteo/publisher/model/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/criteo/publisher/model/AdSize;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/criteo/publisher/model/g;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v1}, Lcom/criteo/publisher/f;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static a(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 160
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 166
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int v2, v1, p1

    .line 167
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 168
    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/AdUnit;

    if-eqz v1, :cond_0

    .line 83
    invoke-direct {p0, v1}, Lcom/criteo/publisher/model/g;->a(Lcom/criteo/publisher/model/AdUnit;)Lcom/criteo/publisher/model/AdSize;

    move-result-object v2

    .line 84
    new-instance v3, Lcom/criteo/publisher/model/n;

    invoke-interface {v1}, Lcom/criteo/publisher/model/AdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/criteo/publisher/model/AdUnit;->getAdUnitType()Lcom/criteo/publisher/m0/a;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lcom/criteo/publisher/model/n;-><init>(Lcom/criteo/publisher/model/AdSize;Ljava/lang/String;Lcom/criteo/publisher/m0/a;)V

    .line 85
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, v0}, Lcom/criteo/publisher/model/g;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/criteo/publisher/model/g;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/criteo/publisher/model/AdUnit;)Lcom/criteo/publisher/model/n;
    .locals 2

    .line 123
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/criteo/publisher/model/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/criteo/publisher/model/n;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
