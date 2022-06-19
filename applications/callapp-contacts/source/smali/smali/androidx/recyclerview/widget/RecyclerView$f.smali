.class public abstract Landroidx/recyclerview/widget/RecyclerView$f;
.super Ljava/lang/Object;
.source "SourceFile"


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
        Landroidx/recyclerview/widget/RecyclerView$f$b;,
        Landroidx/recyclerview/widget/RecyclerView$f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field h:Landroidx/recyclerview/widget/RecyclerView$f$a;

.field i:J

.field j:J

.field k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13201
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->h:Landroidx/recyclerview/widget/RecyclerView$f$a;

    .line 13202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    .line 13205
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->i:J

    .line 13206
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:J

    const-wide/16 v0, 0xfa

    .line 13207
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->j:J

    .line 13208
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->k:J

    return-void
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView$v;)Landroidx/recyclerview/widget/RecyclerView$f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ")",
            "Landroidx/recyclerview/widget/RecyclerView$f$b;"
        }
    .end annotation

    .line 14767
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$f$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$f$b;-><init>()V

    .line 14846
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$f$b;->a(Landroidx/recyclerview/widget/RecyclerView$v;)Landroidx/recyclerview/widget/RecyclerView$f$b;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroidx/recyclerview/widget/RecyclerView$v;)I
    .locals 3

    .line 13525
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, 0xe

    .line 13526
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 13530
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->getOldPosition()I

    move-result v1

    .line 13531
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->getAbsoluteAdapterPosition()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)Z
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$v;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 13741
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->g(Landroidx/recyclerview/widget/RecyclerView$v;)Z

    move-result p1

    return p1
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)Z
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$v;)V
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)Z
.end method

.method public abstract d()V
.end method

.method public final e()J
    .locals 2

    .line 13252
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:J

    return-wide v0
.end method

.method public final f()V
    .locals 3

    .line 13749
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 13751
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13753
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 1

    .line 13610
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->h:Landroidx/recyclerview/widget/RecyclerView$f$a;

    if-eqz v0, :cond_0

    .line 13611
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$f$a;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    :cond_0
    return-void
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$v;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
