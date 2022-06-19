.class public Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;
    }
.end annotation


# static fields
.field public static final synthetic I0:I


# instance fields
.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:Ljava/lang/String;

.field public H0:Lj9/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0c002e

    .line 2
    iput p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->D0:I

    const p1, 0x7f0c0030

    .line 3
    iput p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->E0:I

    const/high16 p1, 0x7f100000

    .line 4
    iput p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->F0:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->G0:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Li4/d;->l:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 7
    :try_start_0
    iget v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->D0:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->D0:I

    const/4 p2, 0x2

    .line 8
    iget v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->E0:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->E0:I

    .line 9
    iget p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->F0:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->F0:I

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->G0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    :try_start_1
    iget-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->G0:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lk9/b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->G0:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lk9/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lk9/b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->F0:I

    invoke-direct {p1, v1, v2}, Lk9/b;-><init>(Landroid/content/Context;I)V

    .line 15
    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 16
    new-instance v2, Lj9/b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lj9/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->H0:Lj9/b;

    .line 17
    iget v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->D0:I

    .line 18
    iput v1, v2, Lj9/b;->d:I

    .line 19
    iget v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->E0:I

    .line 20
    iput v1, v2, Lj9/b;->e:I

    .line 21
    iget-object v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->G0:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc4/e;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110072

    invoke-static {p1, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    new-instance v1, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;

    iget-object v2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->H0:Lj9/b;

    invoke-direct {v1, p0, v2, p1}, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a;-><init>(Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;Lj9/b;Lk9/b;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    :goto_2
    iget-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogRecyclerView;->H0:Lj9/b;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 25
    :catch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110073

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    :goto_3
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 27
    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 28
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->m1(I)V

    .line 29
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void

    :catchall_0
    move-exception p2

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method
