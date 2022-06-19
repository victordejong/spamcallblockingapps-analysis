.class public Le2/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final t:Landroid/widget/CompoundButton;

.field public final u:Le2/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Le2/a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    const v0, 0x7f090215

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Le2/a$a;->t:Landroid/widget/CompoundButton;

    const v0, 0x7f09021e

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iput-object p2, p0, Le2/a$a;->u:Le2/a;

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p2, Le2/a;->c:Le2/g;

    .line 7
    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le2/a$a;->u:Le2/a;

    .line 2
    iget-object v0, v0, Le2/a;->f:Le2/a$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le2/a$a;->u:Le2/a;

    .line 5
    iget-object v0, v0, Le2/a;->c:Le2/g;

    .line 6
    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 7
    iget-object v0, p0, Le2/a$a;->u:Le2/a;

    .line 8
    iget-object v1, v0, Le2/a;->f:Le2/a$b;

    .line 9
    iget-object v2, v0, Le2/a;->c:Le2/g;

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->e()I

    move-result v4

    const/4 v6, 0x0

    check-cast v1, Le2/g;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Le2/g;->f(Le2/g;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le2/a$a;->u:Le2/a;

    .line 2
    iget-object v0, v0, Le2/a;->f:Le2/a$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le2/a$a;->u:Le2/a;

    .line 5
    iget-object v0, v0, Le2/a;->c:Le2/g;

    .line 6
    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 7
    iget-object v0, p0, Le2/a$a;->u:Le2/a;

    .line 8
    iget-object v1, v0, Le2/a;->f:Le2/a$b;

    .line 9
    iget-object v2, v0, Le2/a;->c:Le2/g;

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->e()I

    move-result v4

    const/4 v6, 0x1

    .line 11
    check-cast v1, Le2/g;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Le2/g;->f(Le2/g;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
