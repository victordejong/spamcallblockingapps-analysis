.class public Lf/p$a;
.super Lj4/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/p;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic N:Lf/p;


# direct methods
.method public constructor <init>(Lf/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/p$a;->N:Lf/p;

    invoke-direct {p0}, Lj4/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/p$a;->N:Lf/p;

    iget-object p1, p1, Lf/p;->a:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lf/p$a;->N:Lf/p;

    iget-object p1, p1, Lf/p;->a:Lf/m;

    iget-object p1, p1, Lf/m;->r:Lm0/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm0/y;->d(Lm0/z;)Lm0/y;

    .line 3
    iget-object p1, p0, Lf/p$a;->N:Lf/p;

    iget-object p1, p1, Lf/p;->a:Lf/m;

    iput-object v0, p1, Lf/m;->r:Lm0/y;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/p$a;->N:Lf/p;

    iget-object p1, p1, Lf/p;->a:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
