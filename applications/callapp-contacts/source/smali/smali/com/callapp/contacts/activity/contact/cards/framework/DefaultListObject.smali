.class public Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Lit/gmariotti/cardslib/library/a/b;

.field protected d:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

.field protected e:Z

.field protected f:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/a/b;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->e:Z

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->c:Lit/gmariotti/cardslib/library/a/b;

    return-void
.end method


# virtual methods
.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOnItemClickListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->d:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSwipeListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->f:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;

    return-object v0
.end method

.method public getParentCard()Lit/gmariotti/cardslib/library/a/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSwipeable()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->e:Z

    return v0
.end method

.method public setOnItemClickListener(Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->d:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

    return-void
.end method

.method public setOnItemSwipeListener(Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->e:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->e:Z

    .line 90
    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->f:Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;

    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;->e:Z

    return-void
.end method
