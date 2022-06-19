.class Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$2;->this$1:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(ILit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;)Z
    .locals 0

    .line 851
    invoke-interface {p3}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->isSwipeable()Z

    move-result p1

    return p1
.end method

.method public onDismiss(Lit/gmariotti/cardslib/library/prototypes/LinearListView;IZ)V
    .locals 0

    .line 860
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$2;->this$1:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    invoke-virtual {p1, p2}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

    .line 861
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$2;->this$1:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    invoke-virtual {p2, p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->remove(Ljava/lang/Object;)V

    .line 862
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->getOnItemSwipeListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 863
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->getOnItemSwipeListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;->onItemSwipe(Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;Z)V

    :cond_0
    return-void
.end method
