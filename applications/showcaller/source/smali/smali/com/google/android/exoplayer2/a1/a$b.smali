.class final Lcom/google/android/exoplayer2/a1/a$b;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/a1/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/source/v$a;",
            "Lcom/google/android/exoplayer2/a1/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/y0$b;

.field private d:Lcom/google/android/exoplayer2/a1/a$a;

.field private e:Lcom/google/android/exoplayer2/a1/a$a;

.field private f:Lcom/google/android/exoplayer2/a1/a$a;

.field private g:Lcom/google/android/exoplayer2/y0;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->b:Ljava/util/HashMap;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/y0$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/y0$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->c:Lcom/google/android/exoplayer2/y0$b;

    .line 5
    sget-object v0, Lcom/google/android/exoplayer2/y0;->a:Lcom/google/android/exoplayer2/y0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/a1/a$b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private p(Lcom/google/android/exoplayer2/a1/a$a;Lcom/google/android/exoplayer2/y0;)Lcom/google/android/exoplayer2/a1/a$a;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/a1/a$a;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a$b;->c:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/y0;->f(ILcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/y0$b;->c:I

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/a1/a$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/a1/a$a;->a:Lcom/google/android/exoplayer2/source/v$a;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/exoplayer2/a1/a$a;-><init>(Lcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/y0;I)V

    return-object v1
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/a1/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->e:Lcom/google/android/exoplayer2/a1/a$a;

    return-object v0
.end method

.method public c()Lcom/google/android/exoplayer2/a1/a$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/a$a;

    :goto_0
    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/a1/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/a1/a$a;

    return-object p1
.end method

.method public e()Lcom/google/android/exoplayer2/a1/a$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/a$a;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public f()Lcom/google/android/exoplayer2/a1/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->f:Lcom/google/android/exoplayer2/a1/a$a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->h:Z

    return v0
.end method

.method public h(ILcom/google/android/exoplayer2/source/v$a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    iget-object v1, p2, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer2/a1/a$a;

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/google/android/exoplayer2/y0;->a:Lcom/google/android/exoplayer2/y0;

    :goto_1
    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/a1/a$b;->c:Lcom/google/android/exoplayer2/y0$b;

    .line 3
    invoke-virtual {p1, v0, v3}, Lcom/google/android/exoplayer2/y0;->f(ILcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/y0$b;->c:I

    :cond_2
    invoke-direct {v4, p2, v5, p1}, Lcom/google/android/exoplayer2/a1/a$a;-><init>(Lcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/y0;I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/a1/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->d:Lcom/google/android/exoplayer2/a1/a$a;

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y0;->q()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->d:Lcom/google/android/exoplayer2/a1/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->e:Lcom/google/android/exoplayer2/a1/a$a;

    :cond_3
    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/v$a;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a1/a$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->f:Lcom/google/android/exoplayer2/a1/a$a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/a1/a$a;->a:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/v$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/a1/a$a;

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->f:Lcom/google/android/exoplayer2/a1/a$a;

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/a1/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->d:Lcom/google/android/exoplayer2/a1/a$a;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public j(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->d:Lcom/google/android/exoplayer2/a1/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->e:Lcom/google/android/exoplayer2/a1/a$a;

    return-void
.end method

.method public k(Lcom/google/android/exoplayer2/source/v$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/a1/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->f:Lcom/google/android/exoplayer2/a1/a$a;

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->h:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->d:Lcom/google/android/exoplayer2/a1/a$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->e:Lcom/google/android/exoplayer2/a1/a$a;

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->h:Z

    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/y0;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/a1/a$a;

    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/a1/a$b;->p(Lcom/google/android/exoplayer2/a1/a$a;Lcom/google/android/exoplayer2/y0;)Lcom/google/android/exoplayer2/a1/a$a;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1/a$b;->b:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/exoplayer2/a1/a$a;->a:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->f:Lcom/google/android/exoplayer2/a1/a$a;

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/a1/a$b;->p(Lcom/google/android/exoplayer2/a1/a$a;Lcom/google/android/exoplayer2/y0;)Lcom/google/android/exoplayer2/a1/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a1/a$b;->f:Lcom/google/android/exoplayer2/a1/a$a;

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->d:Lcom/google/android/exoplayer2/a1/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a1/a$b;->e:Lcom/google/android/exoplayer2/a1/a$a;

    return-void
.end method

.method public o(I)Lcom/google/android/exoplayer2/a1/a$a;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/a1/a$a;

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    iget-object v5, v3, Lcom/google/android/exoplayer2/a1/a$a;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 4
    iget-object v5, p0, Lcom/google/android/exoplayer2/a1/a$b;->g:Lcom/google/android/exoplayer2/y0;

    iget-object v6, p0, Lcom/google/android/exoplayer2/a1/a$b;->c:Lcom/google/android/exoplayer2/y0$b;

    .line 5
    invoke-virtual {v5, v4, v6}, Lcom/google/android/exoplayer2/y0;->f(ILcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/y0$b;->c:I

    if-ne v4, p1, :cond_1

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    move-object v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method
