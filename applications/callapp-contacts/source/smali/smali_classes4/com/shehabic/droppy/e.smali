.class public final Lcom/shehabic/droppy/e;
.super Lcom/shehabic/droppy/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/shehabic/droppy/c;-><init>()V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/shehabic/droppy/e;->b:I

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/shehabic/droppy/e;->a(I)Lcom/shehabic/droppy/d;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/shehabic/droppy/e;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/shehabic/droppy/e;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;

    invoke-direct {v0, p1}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shehabic/droppy/e;->c:Landroid/view/View;

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/shehabic/droppy/e;->c:Landroid/view/View;

    return-object p1
.end method
