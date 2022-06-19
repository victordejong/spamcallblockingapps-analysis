.class public Lcom/amazonaws/auth/policy/Policy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2012-10-17"

    .line 64
    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->b:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2012-10-17"

    .line 64
    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->b:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->c:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Policy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/Policy;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/amazonaws/auth/policy/Policy;->a(Ljava/util/Collection;)V

    return-void
.end method

.method private a()V
    .locals 5

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/amazonaws/auth/policy/Policy;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/auth/policy/Statement;

    .line 1118
    iget-object v3, v2, Lcom/amazonaws/auth/policy/Statement;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2118
    iget-object v2, v2, Lcom/amazonaws/auth/policy/Statement;->a:Ljava/lang/String;

    .line 231
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 235
    iget-object v2, p0, Lcom/amazonaws/auth/policy/Policy;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/auth/policy/Statement;

    .line 3118
    iget-object v4, v3, Lcom/amazonaws/auth/policy/Statement;->a:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 3139
    iput-object v4, v3, Lcom/amazonaws/auth/policy/Statement;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/auth/policy/Statement;",
            ">;)V"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Policy;->c:Ljava/util/List;

    .line 178
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Policy;->a()V

    return-void
.end method
