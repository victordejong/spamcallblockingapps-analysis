.class Lit/gmariotti/cardslib/library/prototypes/CardWithList$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/prototypes/CardWithList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 130
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->access$000(Lit/gmariotti/cardslib/library/prototypes/CardWithList;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 135
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->access$000(Lit/gmariotti/cardslib/library/prototypes/CardWithList;)V

    return-void
.end method
