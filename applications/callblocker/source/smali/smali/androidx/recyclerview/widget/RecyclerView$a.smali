.class public abstract Landroidx/recyclerview/widget/RecyclerView$a;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$x;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$b;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6985
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    .line 6986
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 7129
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$c;)V
    .locals 1

    .prologue
    .line 7287
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b;->registerObserver(Ljava/lang/Object;)V

    .line 7288
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 7196
    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7065
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$x;I)V

    .line 7066
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7313
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 7141
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7145
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    .line 7146
    return-void
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 7157
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 7077
    :try_start_0
    const-string/jumbo v0, "RV CreateView"

    invoke-static {v0}, Landroidx/core/os/a;->a(Ljava/lang/String;)V

    .line 7078
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 7079
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7080
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7087
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/a;->a()V

    .line 7088
    throw v0

    .line 7084
    :cond_0
    :try_start_1
    iput p2, v0, Landroidx/recyclerview/widget/RecyclerView$x;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7087
    invoke-static {}, Landroidx/core/os/a;->a()V

    .line 7085
    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c;)V
    .locals 1

    .prologue
    .line 7301
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b;->unregisterObserver(Ljava/lang/Object;)V

    .line 7302
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 7099
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    .line 7100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7101
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->e:J

    .line 7103
    :cond_0
    const/16 v0, 0x207

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->a(II)V

    .line 7106
    const-string/jumbo v0, "RV OnBindView"

    invoke-static {v0}, Landroidx/core/os/a;->a(Ljava/lang/String;)V

    .line 7107
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->v()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$x;ILjava/util/List;)V

    .line 7108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->u()V

    .line 7109
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7110
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz v1, :cond_1

    .line 7111
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    .line 7113
    :cond_1
    invoke-static {}, Landroidx/core/os/a;->a()V

    .line 7114
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7322
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 7175
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$x;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 7233
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 7370
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$b;->a(II)V

    .line 7371
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 7247
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 7267
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 7354
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b;->b()V

    .line 7355
    return-void
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 7515
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$b;->b(II)V

    .line 7516
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 7259
    return-void
.end method
