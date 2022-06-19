.class public Lit/gmariotti/cardslib/library/view/b/c;
.super Lit/gmariotti/cardslib/library/view/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/view/b/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ImageButton;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/b/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lit/gmariotti/cardslib/library/view/b/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
