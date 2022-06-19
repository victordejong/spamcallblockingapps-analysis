.class public final Lit/gmariotti/cardslib/library/view/listener/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/listener/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 431
    sget v0, Lit/gmariotti/cardslib/library/a$c;->list_card_undobar_message:I

    return v0
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/c;[I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 444
    sget v0, Lit/gmariotti/cardslib/library/a$f;->list_card_undo_items:I

    array-length v1, p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 436
    sget v0, Lit/gmariotti/cardslib/library/a$c;->list_card_undobar_button:I

    return v0
.end method

.method public final c()Lit/gmariotti/cardslib/library/view/listener/f$c$b;
    .locals 1

    .line 451
    sget-object v0, Lit/gmariotti/cardslib/library/view/listener/f$c$b;->NONE:Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    return-object v0
.end method

.method public final d()Lit/gmariotti/cardslib/library/view/listener/f$c$a;
    .locals 1

    .line 456
    sget-object v0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->ALPHA:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    return-object v0
.end method
