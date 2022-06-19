.class public final Lit/gmariotti/cardslib/library/a/i;
.super Lit/gmariotti/cardslib/library/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/a/i$b;,
        Lit/gmariotti/cardslib/library/a/i$d;,
        Lit/gmariotti/cardslib/library/a/i$c;,
        Lit/gmariotti/cardslib/library/a/i$a;
    }
.end annotation


# static fields
.field public static i:I = -0x1


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:I

.field protected e:Lit/gmariotti/cardslib/library/a/i$c;

.field protected f:Lit/gmariotti/cardslib/library/a/i$d;

.field protected g:Lit/gmariotti/cardslib/library/a/i$b;

.field protected h:I

.field protected j:Lit/gmariotti/cardslib/library/a/i$a;

.field protected k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 182
    sget v0, Lit/gmariotti/cardslib/library/a$e;->inner_base_header:I

    invoke-direct {p0, p1, v0}, Lit/gmariotti/cardslib/library/a/i;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 192
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/i;->a:Z

    .line 104
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/i;->b:Z

    .line 109
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/i;->c:Z

    .line 114
    sget v0, Lit/gmariotti/cardslib/library/a/i;->i:I

    iput v0, p0, Lit/gmariotti/cardslib/library/a/i;->d:I

    .line 144
    iput p1, p0, Lit/gmariotti/cardslib/library/a/i;->h:I

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lit/gmariotti/cardslib/library/a/i;->j:Lit/gmariotti/cardslib/library/a/i$a;

    .line 168
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/i;->k:Z

    .line 170
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/i;->l:Z

    .line 193
    iput p2, p0, Lit/gmariotti/cardslib/library/a/i;->mInnerLayout:I

    .line 195
    sget p1, Lit/gmariotti/cardslib/library/a$e;->inner_base_header:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/i;->l:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lit/gmariotti/cardslib/library/a/i$a;
    .locals 1

    .line 293
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/i;->j:Lit/gmariotti/cardslib/library/a/i$a;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 380
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_header_inner_simple_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/i;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b()Lit/gmariotti/cardslib/library/a/i$c;
    .locals 1

    .line 397
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/i;->e:Lit/gmariotti/cardslib/library/a/i$c;

    return-object v0
.end method

.method public final c()Lit/gmariotti/cardslib/library/a/i$d;
    .locals 1

    .line 406
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/i;->f:Lit/gmariotti/cardslib/library/a/i$d;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/i;->a:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/i;->b:Z

    return v0
.end method

.method public final f()I
    .locals 1

    .line 470
    iget v0, p0, Lit/gmariotti/cardslib/library/a/i;->d:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 480
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/i;->g:Lit/gmariotti/cardslib/library/a/i$b;

    if-nez v0, :cond_1

    .line 481
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/i;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "CardHeader"

    const-string v1, "You set visible=true to other button menu, but you don\'t add any listener"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 485
    :cond_1
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/i;->c:Z

    return v0
.end method

.method public final getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 345
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/i;->l:Z

    if-eqz v0, :cond_1

    .line 1544
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/i;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1545
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/i;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isNative()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 346
    sget v0, Lit/gmariotti/cardslib/library/a$e;->native_inner_base_header:I

    iput v0, p0, Lit/gmariotti/cardslib/library/a/i;->mInnerLayout:I

    .line 348
    :cond_1
    invoke-super {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/a/a;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 356
    iget p2, p0, Lit/gmariotti/cardslib/library/a/i;->mInnerLayout:I

    if-ltz p2, :cond_2

    .line 357
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/a/i;->a(Landroid/view/View;)V

    :cond_2
    return-object p1
.end method

.method public final h()Lit/gmariotti/cardslib/library/a/i$b;
    .locals 1

    .line 503
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/i;->g:Lit/gmariotti/cardslib/library/a/i$b;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 521
    iget v0, p0, Lit/gmariotti/cardslib/library/a/i;->h:I

    return v0
.end method
