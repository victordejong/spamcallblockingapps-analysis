.class public Landroidx/appcompat/widget/c1$a;
.super Lj4/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/c1;->u(IJ)Lm0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public N:Z

.field public final synthetic O:I

.field public final synthetic P:Landroidx/appcompat/widget/c1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/c1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c1$a;->P:Landroidx/appcompat/widget/c1;

    iput p2, p0, Landroidx/appcompat/widget/c1$a;->O:I

    invoke-direct {p0}, Lj4/w0;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/c1$a;->N:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/c1$a;->N:Z

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/c1$a;->N:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/c1$a;->P:Landroidx/appcompat/widget/c1;

    iget-object p1, p1, Landroidx/appcompat/widget/c1;->a:Landroidx/appcompat/widget/Toolbar;

    iget v0, p0, Landroidx/appcompat/widget/c1$a;->O:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/c1$a;->P:Landroidx/appcompat/widget/c1;

    iget-object p1, p1, Landroidx/appcompat/widget/c1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
