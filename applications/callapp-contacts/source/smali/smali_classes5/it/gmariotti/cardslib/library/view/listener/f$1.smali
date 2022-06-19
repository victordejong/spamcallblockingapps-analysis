.class final Lit/gmariotti/cardslib/library/view/listener/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/view/listener/f;-><init>(Landroid/view/View;Lit/gmariotti/cardslib/library/view/listener/f$d;Lit/gmariotti/cardslib/library/view/listener/f$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/view/listener/f;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/f;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$1;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$1;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/view/listener/f;->a(Z)V

    .line 100
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$1;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 1042
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/listener/f;->e:Lit/gmariotti/cardslib/library/view/listener/f$d;

    .line 100
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f$1;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 2042
    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    .line 100
    invoke-interface {p1, v0}, Lit/gmariotti/cardslib/library/view/listener/f$d;->a(Landroid/os/Parcelable;)V

    .line 102
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$1;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    const/4 v0, 0x0

    .line 3042
    iput-object v0, p1, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    return-void
.end method
