.class public Le2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Le2/g;


# direct methods
.method public constructor <init>(Le2/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2/e;->a:Le2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Le2/e;->a:Le2/g;

    iget-object v0, v0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le2/e;->a:Le2/g;

    iget v1, v0, Le2/g;->p:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    :cond_0
    if-ne v1, v2, :cond_2

    .line 3
    iget-object v1, v0, Le2/g;->c:Le2/g$a;

    iget v1, v1, Le2/g$a;->A:I

    if-gez v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, v0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Le2/e$a;

    invoke-direct {v2, p0, v1}, Le2/e$a;-><init>(Le2/e;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
