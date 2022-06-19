.class public abstract Landroidx/recyclerview/widget/RecyclerView$f;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$f$c;,
        Landroidx/recyclerview/widget/RecyclerView$f$a;,
        Landroidx/recyclerview/widget/RecyclerView$f$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$f$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$f$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 12728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12784
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$f$b;

    .line 12785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:Ljava/util/ArrayList;

    .line 12788
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$f;->c:J

    .line 12789
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$f;->d:J

    .line 12790
    iput-wide v4, p0, Landroidx/recyclerview/widget/RecyclerView$f;->e:J

    .line 12791
    iput-wide v4, p0, Landroidx/recyclerview/widget/RecyclerView$f;->f:J

    return-void
.end method

.method static e(Landroidx/recyclerview/widget/RecyclerView$x;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 13113
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->j:I

    and-int/lit8 v0, v0, 0xe

    .line 13114
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13115
    const/4 v0, 0x4

    .line 13124
    :cond_0
    :goto_0
    return v0

    .line 13117
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 13118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->f()I

    move-result v1

    .line 13119
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->e()I

    move-result v2

    .line 13120
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 13121
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$x;)Landroidx/recyclerview/widget/RecyclerView$f$c;
    .locals 1

    .prologue
    .line 12942
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$f;->j()Landroidx/recyclerview/widget/RecyclerView$f$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$f$c;->a(Landroidx/recyclerview/widget/RecyclerView$x;)Landroidx/recyclerview/widget/RecyclerView$f$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$x;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$f$c;"
        }
    .end annotation

    .prologue
    .line 12913
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$f;->j()Landroidx/recyclerview/widget/RecyclerView$f$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$f$c;->a(Landroidx/recyclerview/widget/RecyclerView$x;)Landroidx/recyclerview/widget/RecyclerView$f$c;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$f$b;)V
    .locals 0

    .prologue
    .line 12874
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$f$b;

    .line 12875
    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 13332
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->h(Landroidx/recyclerview/widget/RecyclerView$x;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
.end method

.method public abstract d()V
.end method

.method public abstract d(Landroidx/recyclerview/widget/RecyclerView$x;)V
.end method

.method public e()J
    .locals 2

    .prologue
    .line 12799
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 12817
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->c:J

    return-wide v0
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

    .prologue
    .line 13197
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->g(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 13198
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$f$b;

    if-eqz v0, :cond_0

    .line 13199
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$f$b;->a(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 13201
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 12835
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->d:J

    return-wide v0
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 13212
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 12853
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->f:J

    return-wide v0
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$x;)Z
    .locals 1

    .prologue
    .line 13302
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 13340
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 13341
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 13342
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$f$a;

    invoke-interface {v0}, Landroidx/recyclerview/widget/RecyclerView$f$a;->a()V

    .line 13341
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 13344
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13345
    return-void
.end method

.method public j()Landroidx/recyclerview/widget/RecyclerView$f$c;
    .locals 1

    .prologue
    .line 13358
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$f$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$f$c;-><init>()V

    return-object v0
.end method
