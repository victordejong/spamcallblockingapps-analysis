.class public Lcom/a/a/a/a/a/f;
.super Ljava/lang/Object;
.source "UnwrapPositionResult.java"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$a;

.field public b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/a/a/a/a/a/f;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/a/a/a/a/a/f;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 49
    iput-object v0, p0, Lcom/a/a/a/a/a/f;->b:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/a/a/a/a/a/f;->c:I

    return-void
.end method

.method public b()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/a/a/a/a/a/f;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/a/a/a/f;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
