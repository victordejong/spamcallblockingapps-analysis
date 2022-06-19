.class public Lit/gmariotti/cardslib/library/a/e;
.super Lit/gmariotti/cardslib/library/a/a/a;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    sget v0, Lit/gmariotti/cardslib/library/a$e;->inner_base_expand:I

    invoke-direct {p0, p1, v0}, Lit/gmariotti/cardslib/library/a/e;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/e;->a:Z

    .line 109
    iput p2, p0, Lit/gmariotti/cardslib/library/a/e;->mInnerLayout:I

    .line 111
    sget p1, Lit/gmariotti/cardslib/library/a$e;->inner_base_expand:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/e;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 165
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_expand_inner_simple_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 167
    iget-object p2, p0, Lit/gmariotti/cardslib/library/a/e;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 132
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/e;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/e;->isNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget v0, Lit/gmariotti/cardslib/library/a$e;->native_inner_base_expand:I

    iput v0, p0, Lit/gmariotti/cardslib/library/a/e;->mInnerLayout:I

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/a/a;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    iget v0, p0, Lit/gmariotti/cardslib/library/a/e;->mInnerLayout:I

    if-ltz v0, :cond_1

    .line 146
    invoke-virtual {p0, p2, p1}, Lit/gmariotti/cardslib/library/a/e;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method protected isNative()Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/e;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/e;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isNative()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
