.class public Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/prototypes/CardWithList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultListObject"
.end annotation


# instance fields
.field protected mItemSwipeable:Z

.field protected mObjectId:Ljava/lang/String;

.field protected mOnItemClickListener:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

.field protected mOnItemSwipeListener:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;

.field protected mParentCard:Lit/gmariotti/cardslib/library/a/b;

.field final synthetic this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList;Lit/gmariotti/cardslib/library/a/b;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 547
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mItemSwipeable:Z

    .line 558
    iput-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mParentCard:Lit/gmariotti/cardslib/library/a/b;

    return-void
.end method


# virtual methods
.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnItemClickListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;
    .locals 1

    .line 587
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mOnItemClickListener:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSwipeListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;
    .locals 1

    .line 602
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mOnItemSwipeListener:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;

    return-object v0
.end method

.method public getParentCard()Lit/gmariotti/cardslib/library/a/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSwipeable()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mItemSwipeable:Z

    return v0
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mObjectId:Ljava/lang/String;

    return-void
.end method

.method public setOnItemClickListener(Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mOnItemClickListener:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

    return-void
.end method

.method public setOnItemSwipeListener(Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mItemSwipeable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mItemSwipeable:Z

    .line 611
    :goto_0
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mOnItemSwipeListener:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;

    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0

    .line 597
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;->mItemSwipeable:Z

    return-void
.end method
