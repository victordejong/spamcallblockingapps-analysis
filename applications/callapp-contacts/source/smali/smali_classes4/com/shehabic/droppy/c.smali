.class public abstract Lcom/shehabic/droppy/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/shehabic/droppy/d;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Landroid/view/View;

.field protected d:I

.field protected e:I

.field protected f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/shehabic/droppy/c;->a:I

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/shehabic/droppy/c;->b:I

    .line 20
    iput v0, p0, Lcom/shehabic/droppy/c;->d:I

    .line 21
    iput v0, p0, Lcom/shehabic/droppy/c;->e:I

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/shehabic/droppy/c;->f:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/shehabic/droppy/c;->e:I

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/shehabic/droppy/c;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lcom/shehabic/droppy/c;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shehabic/droppy/c;->c:Landroid/view/View;

    .line 29
    :cond_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 30
    iget-object v0, p0, Lcom/shehabic/droppy/c;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lcom/shehabic/droppy/c;->c:Landroid/view/View;

    return-object p1
.end method

.method public final a(I)Lcom/shehabic/droppy/d;
    .locals 0

    .line 42
    iput p1, p0, Lcom/shehabic/droppy/c;->e:I

    return-object p0
.end method

.method public final b()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/shehabic/droppy/c;->f:Z

    return v0
.end method
