.class public Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lj9/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lj9/b;

.field public b:Lk9/b;

.field public final synthetic c:Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;


# direct methods
.method public constructor <init>(Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;Lj9/b;Lk9/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;->c:Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;->a:Lj9/b;

    .line 3
    iput-object p3, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;->b:Lk9/b;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_0
    iget-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;->b:Lk9/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lk9/b;->a()Lj9/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget p1, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->I0:I

    iget-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;->c:Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lj9/a;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;->a:Lj9/b;

    .line 3
    iget-object p1, p1, Lj9/a;->a:Ljava/util/LinkedList;

    .line 4
    iget-object v1, v0, Lj9/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    iget-object v2, v0, Lj9/b;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    add-int/2addr p1, v1

    .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->d(II)V

    :cond_0
    return-void
.end method
