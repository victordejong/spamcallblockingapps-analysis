.class public abstract Lit/gmariotti/cardslib/library/view/listener/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/listener/a/c;


# instance fields
.field protected a:Landroid/widget/Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/Adapter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a/a;->a:Landroid/widget/Adapter;

    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/b;)Z
    .locals 0

    .line 34
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    move-result p1

    return p1
.end method
