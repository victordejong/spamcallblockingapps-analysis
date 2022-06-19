.class Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;-><init>(Landroid/content/Context;ILit/gmariotti/cardslib/library/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 94
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->access$100(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->access$002(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;Z)Z

    .line 95
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 100
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->access$002(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;Z)Z

    .line 101
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
