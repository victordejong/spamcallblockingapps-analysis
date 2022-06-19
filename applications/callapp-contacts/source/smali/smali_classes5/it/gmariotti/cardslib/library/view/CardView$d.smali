.class public final Lit/gmariotti/cardslib/library/view/CardView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field a:Lit/gmariotti/cardslib/library/view/CardView$c;

.field final synthetic b:Lit/gmariotti/cardslib/library/view/CardView;


# direct methods
.method private constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;Lit/gmariotti/cardslib/library/view/CardView$c;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardView$d;->b:Lit/gmariotti/cardslib/library/view/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardView$d;->a:Lit/gmariotti/cardslib/library/view/CardView$c;

    return-void
.end method

.method synthetic constructor <init>(Lit/gmariotti/cardslib/library/view/CardView;Lit/gmariotti/cardslib/library/view/CardView$c;Lit/gmariotti/cardslib/library/view/CardView$1;)V
    .locals 0

    .line 802
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/view/CardView$d;-><init>(Lit/gmariotti/cardslib/library/view/CardView;Lit/gmariotti/cardslib/library/view/CardView$c;)V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 812
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardView$d;->a:Lit/gmariotti/cardslib/library/view/CardView$c;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0, p1}, Lit/gmariotti/cardslib/library/view/CardView$c;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
