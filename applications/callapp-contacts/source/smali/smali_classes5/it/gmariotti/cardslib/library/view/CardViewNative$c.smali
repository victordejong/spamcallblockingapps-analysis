.class public final Lit/gmariotti/cardslib/library/view/CardViewNative$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardViewNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

.field final synthetic b:Lit/gmariotti/cardslib/library/view/CardViewNative;


# direct methods
.method private constructor <init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 1018
    invoke-direct {p0, p1, p2, p3, v0}, Lit/gmariotti/cardslib/library/view/CardViewNative$c;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;Z)V

    return-void
.end method

.method private constructor <init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;Z)V
    .locals 7

    .line 1021
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$c;->b:Lit/gmariotti/cardslib/library/view/CardViewNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardViewNative$1;)V

    iput-object v6, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$c;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    return-void
.end method

.method synthetic constructor <init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardViewNative$1;)V
    .locals 0

    .line 1013
    invoke-direct {p0, p1, p2, p3, p4}, Lit/gmariotti/cardslib/library/view/CardViewNative$c;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1027
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$c;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 1834
    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->a:Landroid/view/View;

    .line 1027
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$c;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->a(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    .line 1030
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$c;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 2834
    iget-boolean v0, v0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->c:Z

    if-eqz v0, :cond_2

    .line 1031
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$c;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->b(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    .line 1034
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$c;->a:Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    .line 3834
    iget-boolean v0, v0, Lit/gmariotti/cardslib/library/view/CardViewNative$b;->c:Z

    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method
