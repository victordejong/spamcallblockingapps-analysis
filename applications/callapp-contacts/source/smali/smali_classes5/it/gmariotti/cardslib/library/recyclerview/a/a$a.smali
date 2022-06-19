.class public final Lit/gmariotti/cardslib/library/recyclerview/a/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/recyclerview/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final r:Lit/gmariotti/cardslib/library/view/a/a;

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->s:Z

    .line 90
    sget v0, Lit/gmariotti/cardslib/library/recyclerview/a$a;->list_cardId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/view/a/a;

    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->r:Lit/gmariotti/cardslib/library/view/a/a;

    return-void
.end method
