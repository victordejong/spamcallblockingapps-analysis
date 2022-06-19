.class public Lcom/callapp/contacts/activity/contact/cards/NoteCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final NOTE_REQUEST_CODE:I = 0x64


# instance fields
.field private footerText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/NoteCard;Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->editOrAddNote(Ljava/lang/String;I)V

    return-void
.end method

.method private editOrAddNote(Ljava/lang/String;I)V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "contactId"

    .line 131
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "position"

    .line 132
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string p2, "note"

    .line 133
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x64

    invoke-static {p1, v1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private refreshListData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 102
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v4}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    const v5, 0x7f080433

    .line 105
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v5

    const v6, 0x7f0601ec

    .line 1392
    iput v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    .line 2367
    iput v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f:I

    .line 2474
    iput v1, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 107
    new-instance v6, Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/callapp/contacts/activity/contact/cards/NoteCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/NoteCard;Ljava/lang/String;I)V

    .line 3342
    iput-object v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 116
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3357
    iput-object v3, v4, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 119
    :cond_0
    invoke-virtual {v4, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private updateDataFromContact(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 139
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNote()[Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->refreshListData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->updateCardData(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->updateCardData(Ljava/util/Collection;)V

    :goto_0
    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->showCard(Z)V

    return-void
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204de

    .line 60
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->note:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x5f

    return v0
.end method

.method public onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 152
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    const-string p1, ""

    const/4 v0, -0x1

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->editOrAddNote(Ljava/lang/String;I)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->updateDataFromContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void

    .line 84
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->hideCard()V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .locals 2

    const v0, 0x7f0d0223

    .line 65
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->showOuterFooter(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0664

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->footerText:Landroid/widget/TextView;

    const v1, 0x7f0a0663

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->footerText:Landroid/widget/TextView;

    const v1, 0x7f1204db

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->footerText:Landroid/widget/TextView;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onThemeChangedInner()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/NoteCard;->footerText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0601ec

    .line 93
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public shouldHideCardOnThemeChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
