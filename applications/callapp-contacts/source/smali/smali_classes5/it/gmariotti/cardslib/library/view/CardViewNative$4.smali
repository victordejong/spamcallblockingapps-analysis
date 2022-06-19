.class final Lit/gmariotti/cardslib/library/view/CardViewNative$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardViewNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/a/b$a;

.field final synthetic b:Lit/gmariotti/cardslib/library/view/CardViewNative;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Lit/gmariotti/cardslib/library/a/b$a;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$4;->b:Lit/gmariotti/cardslib/library/view/CardViewNative;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$4;->a:Lit/gmariotti/cardslib/library/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 626
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative$4;->a:Lit/gmariotti/cardslib/library/a/b$a;

    if-eqz v0, :cond_0

    .line 627
    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/a/b$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
