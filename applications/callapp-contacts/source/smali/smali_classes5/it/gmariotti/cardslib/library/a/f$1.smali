.class final Lit/gmariotti/cardslib/library/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lit/gmariotti/cardslib/library/a/f;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/f$1;->b:Lit/gmariotti/cardslib/library/a/f;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/a/f$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 177
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/f$1;->b:Lit/gmariotti/cardslib/library/a/f;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/a/f;->c:Landroid/content/Context;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/f$1;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
