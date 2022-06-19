.class public Lf/y$a;
.super Lj4/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic N:Lf/y;


# direct methods
.method public constructor <init>(Lf/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/y$a;->N:Lf/y;

    invoke-direct {p0}, Lj4/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lf/y$a;->N:Lf/y;

    iget-boolean v0, p1, Lf/y;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lf/y;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Lf/y$a;->N:Lf/y;

    iget-object p1, p1, Lf/y;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Lf/y$a;->N:Lf/y;

    iget-object p1, p1, Lf/y;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lf/y$a;->N:Lf/y;

    iget-object p1, p1, Lf/y;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    iget-object p1, p0, Lf/y$a;->N:Lf/y;

    const/4 v0, 0x0

    iput-object v0, p1, Lf/y;->t:Lk/g;

    .line 7
    iget-object v1, p1, Lf/y;->k:Lk/a$a;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p1, Lf/y;->j:Lk/a;

    invoke-interface {v1, v2}, Lk/a$a;->d(Lk/a;)V

    .line 9
    iput-object v0, p1, Lf/y;->j:Lk/a;

    .line 10
    iput-object v0, p1, Lf/y;->k:Lk/a$a;

    .line 11
    :cond_1
    iget-object p1, p0, Lf/y$a;->N:Lf/y;

    iget-object p1, p1, Lf/y;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 12
    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p1}, Lm0/v$h;->c(Landroid/view/View;)V

    :cond_2
    return-void
.end method
