.class final Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView$1;->a:Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 1

    .line 172
    instance-of v0, p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    if-eqz v0, :cond_0

    .line 173
    check-cast p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->s:Z

    :cond_0
    return-void
.end method
