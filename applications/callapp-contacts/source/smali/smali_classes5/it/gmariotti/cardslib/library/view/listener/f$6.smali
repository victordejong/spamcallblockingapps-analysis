.class final Lit/gmariotti/cardslib/library/view/listener/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/listener/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/f;
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

    .line 278
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/f$6;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 281
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f$6;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 1042
    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/listener/f;->i:Lit/gmariotti/cardslib/library/view/listener/f$c;

    .line 281
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/listener/f$c;->c()Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/view/listener/f$c$b;->NONE:Lit/gmariotti/cardslib/library/view/listener/f$c$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    .line 286
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f$6;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/listener/f;->a(Z)V

    .line 287
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f$6;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 2042
    iget-object v0, v0, Lit/gmariotti/cardslib/library/view/listener/f;->e:Lit/gmariotti/cardslib/library/view/listener/f$d;

    .line 287
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/f$6;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    .line 3042
    iget-object v1, v1, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    .line 287
    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/listener/f$d;->a(Landroid/os/Parcelable;)V

    .line 289
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/f$6;->a:Lit/gmariotti/cardslib/library/view/listener/f;

    const/4 v1, 0x0

    .line 4042
    iput-object v1, v0, Lit/gmariotti/cardslib/library/view/listener/f;->g:Landroid/os/Parcelable;

    return-void
.end method
