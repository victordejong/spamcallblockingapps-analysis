.class Lcom/a/a/a/a/c/l$a;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Lcom/a/a/a/a/c/i;

.field public c:Landroidx/recyclerview/widget/RecyclerView$w;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Lcom/a/a/a/a/c/j;

.field public m:Lcom/a/a/a/a/c/j;

.field public n:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    iput-object v0, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    .line 197
    iput-object v0, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/i;IILcom/a/a/a/a/c/j;Lcom/a/a/a/a/c/j;Z)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    iput-object p3, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    .line 173
    iput-object p2, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 174
    iput p4, p0, Lcom/a/a/a/a/c/l$a;->d:I

    .line 175
    iput p5, p0, Lcom/a/a/a/a/c/l$a;->e:I

    .line 176
    iput-object p6, p0, Lcom/a/a/a/a/c/l$a;->l:Lcom/a/a/a/a/c/j;

    .line 177
    iput-object p7, p0, Lcom/a/a/a/a/c/l$a;->m:Lcom/a/a/a/a/c/j;

    .line 178
    iput-boolean p8, p0, Lcom/a/a/a/a/c/l$a;->n:Z

    .line 179
    invoke-static {p1}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    iput p2, p0, Lcom/a/a/a/a/c/l$a;->j:I

    .line 180
    iget p2, p0, Lcom/a/a/a/a/c/l$a;->j:I

    invoke-static {p2}, Lcom/a/a/a/a/d/a;->a(I)I

    move-result p2

    const/4 p6, 0x1

    const/4 p7, 0x0

    if-ne p2, p6, :cond_0

    goto :goto_0

    :cond_0
    move p6, p7

    :goto_0
    iput-boolean p6, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    .line 182
    iget p2, p3, Lcom/a/a/a/a/c/i;->f:I

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/a/a/a/a/c/l$a;->h:I

    iput p4, p0, Lcom/a/a/a/a/c/l$a;->f:I

    .line 183
    iget p2, p3, Lcom/a/a/a/a/c/i;->g:I

    sub-int/2addr p5, p2

    iput p5, p0, Lcom/a/a/a/a/c/l$a;->i:I

    iput p5, p0, Lcom/a/a/a/a/c/l$a;->g:I

    .line 185
    iget-boolean p2, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-eqz p2, :cond_1

    .line 186
    iget p2, p0, Lcom/a/a/a/a/c/l$a;->f:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/a/a/a/a/c/l$a;->f:I

    .line 187
    iget p2, p0, Lcom/a/a/a/a/c/l$a;->f:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    iget-object p1, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget p1, p1, Lcom/a/a/a/a/c/i;->a:I

    sub-int/2addr p3, p1

    invoke-static {p7, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/l$a;->f:I

    goto :goto_1

    .line 189
    :cond_1
    iget p2, p0, Lcom/a/a/a/a/c/l$a;->g:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/a/a/a/a/c/l$a;->g:I

    .line 190
    iget p2, p0, Lcom/a/a/a/a/c/l$a;->g:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p3, p1

    iget-object p1, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget p1, p1, Lcom/a/a/a/a/c/i;->b:I

    sub-int/2addr p3, p1

    invoke-static {p7, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/l$a;->g:I

    :goto_1
    return-void
.end method
