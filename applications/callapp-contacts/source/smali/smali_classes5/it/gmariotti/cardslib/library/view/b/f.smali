.class public final Lit/gmariotti/cardslib/library/view/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lit/gmariotti/cardslib/library/view/b/a;
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 33
    new-instance v0, Lit/gmariotti/cardslib/library/view/b/e;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/b/e;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 34
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_1

    .line 35
    new-instance v0, Lit/gmariotti/cardslib/library/view/b/d;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/b/d;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 36
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 37
    new-instance v0, Lit/gmariotti/cardslib/library/view/b/c;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/b/c;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 39
    :cond_2
    new-instance v0, Lit/gmariotti/cardslib/library/view/b/b;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/b/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
