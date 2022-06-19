.class public Lcom/callapp/contacts/popup/selection/PersonSelectPopup;
.super Lcom/callapp/contacts/manager/popup/ResultPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

.field public c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-boolean v2, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->c:Z

    if-eqz v2, :cond_0

    const-class v2, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;

    goto :goto_0

    :cond_0
    const-class v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->a:I

    const-string v2, "PERSON_SELECT_NET_ID"

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->f:Ljava/lang/String;

    const-string v2, "PERSON_SELECT_CONTACTS_FULL_NAME"

    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->g:Ljava/lang/String;

    const-string v2, "PERSON_SELECT_AUTO_SEARCH_TEXT"

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->d:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->d:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 89
    check-cast v1, Ljava/util/ArrayList;

    goto :goto_1

    .line 91
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    const-string v2, "PERSON_SELECT_LIST_KEY"

    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->b:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    if-nez v1, :cond_3

    .line 96
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 99
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 110
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, -0x1

    if-ne p3, p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->b:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    if-eqz p1, :cond_2

    const-string p1, "PERSON_SELECT_SELECTED_USER_ID"

    .line 115
    invoke-virtual {p4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DONTHAVE"

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->b:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    invoke-interface {p1}, Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;->a()V

    return-void

    .line 119
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->b:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;->a(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->b:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    if-eqz p1, :cond_2

    .line 124
    invoke-interface {p1}, Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;->b()V

    :cond_2
    return-void
.end method

.method public setAutoSearchText(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->g:Ljava/lang/String;

    return-void
.end method

.method public setContactsFullName(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->f:Ljava/lang/String;

    return-void
.end method
