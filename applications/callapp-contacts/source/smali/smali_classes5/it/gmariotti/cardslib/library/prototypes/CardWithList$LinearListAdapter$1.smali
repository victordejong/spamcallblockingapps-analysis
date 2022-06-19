.class Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

.field final synthetic val$object:Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

.field final synthetic val$position:I

.field final synthetic val$viewChild:Landroid/view/View;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;Landroid/view/View;I)V
    .locals 0

    .line 790
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->this$1:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->val$object:Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

    iput-object p3, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->val$viewChild:Landroid/view/View;

    iput p4, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 793
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->this$1:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->playSoundEffect(I)V

    .line 794
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->val$object:Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->getOnItemClickListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->this$1:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->val$viewChild:Landroid/view/View;

    iget v2, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->val$position:I

    iget-object v3, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;->val$object:Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

    invoke-interface {p1, v0, v1, v2, v3}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;->onItemClick(Lit/gmariotti/cardslib/library/prototypes/LinearListView;Landroid/view/View;ILit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;)V

    return-void
.end method
