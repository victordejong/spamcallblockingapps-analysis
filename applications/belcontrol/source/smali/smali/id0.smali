.class public abstract Lid0;
.super Led0;
.source ""

# interfaces
.implements Lcarbon/widget/AutoCompleteEditText$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Led0<",
        "TVH;TI;>;",
        "Lcarbon/widget/AutoCompleteEditText$b<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public a:Lcarbon/widget/RecyclerView$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcarbon/widget/RecyclerView$d<",
            "TI;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TI;>;",
            "Lcarbon/widget/RecyclerView$d<",
            "+TI;>;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Lgd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgd0<",
            "TI;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Led0;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lid0;->b:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lid0;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method public d(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lid0;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lid0;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcarbon/widget/RecyclerView$d;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0, p2}, Lcarbon/widget/RecyclerView$d;->a(Landroid/view/View;Ljava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Lid0;->a:Lcarbon/widget/RecyclerView$d;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0, p2}, Lcarbon/widget/RecyclerView$d;->a(Landroid/view/View;Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    iget-object v0, p0, Lid0;->e:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TI;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lid0;->c:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lid0;->e:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, Lid0;->d:Lgd0;

    if-nez v0, :cond_1

    new-instance v0, Lgd0;

    invoke-direct {v0}, Lgd0;-><init>()V

    iput-object v0, p0, Lid0;->d:Lgd0;

    :cond_1
    iget-object v0, p0, Lid0;->d:Lgd0;

    iget-object v1, p0, Lid0;->e:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lgd0;->f(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lid0;->d:Lgd0;

    invoke-static {v0}, Lc00;->a(Lc00$b;)Lc00$c;

    move-result-object v0

    iput-object p1, p0, Lid0;->e:Ljava/util/List;

    invoke-virtual {v0, p0}, Lc00$c;->e(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public g(Lcarbon/widget/RecyclerView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcarbon/widget/RecyclerView$d<",
            "TI;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lid0;->a:Lcarbon/widget/RecyclerView$d;

    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TI;"
        }
    .end annotation

    iget-object v0, p0, Lid0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lid0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
