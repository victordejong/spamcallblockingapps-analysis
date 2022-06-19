.class public final Lcom/shehabic/droppy/b;
.super Lcom/shehabic/droppy/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/shehabic/droppy/c;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/shehabic/droppy/b;->f:Z

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/shehabic/droppy/b;->b:I

    .line 15
    iput p1, p0, Lcom/shehabic/droppy/b;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/shehabic/droppy/c;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/shehabic/droppy/b;->f:Z

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/shehabic/droppy/b;->b:I

    .line 21
    iput-object p1, p0, Lcom/shehabic/droppy/b;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/shehabic/droppy/b;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lcom/shehabic/droppy/b;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shehabic/droppy/b;->c:Landroid/view/View;

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/shehabic/droppy/b;->c:Landroid/view/View;

    return-object p1
.end method
