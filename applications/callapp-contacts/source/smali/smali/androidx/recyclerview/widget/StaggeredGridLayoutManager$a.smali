.class final Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:Z

.field f:[I

.field final synthetic g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .line 3243
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3244
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v0, -0x1

    .line 3248
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    const/high16 v1, -0x80000000

    .line 3249
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    const/4 v1, 0x0

    .line 3250
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 3251
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 3252
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 3253
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    if-eqz v1, :cond_0

    .line 3254
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method
