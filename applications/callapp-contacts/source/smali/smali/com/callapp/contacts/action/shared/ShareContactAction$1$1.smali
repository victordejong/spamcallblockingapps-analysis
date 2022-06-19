.class Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction$1;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 182
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogList;

    const v1, 0x7f1202be

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f120066

    .line 184
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    new-instance v4, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-direct {v4, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f120067

    .line 187
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v4, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-direct {v4, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v4, v4, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f120063

    invoke-static {v4, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 191
    new-instance v6, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-direct {v6, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v3, v3, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isActiveCallAppUserDuringPeriod()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 195
    iget-object v3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v3, v3, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f1203db

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    new-instance v4, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-direct {v4, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterText;

    iget-object v3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v3, v3, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->b:Landroid/app/Activity;

    const v4, 0x7f0d00aa

    invoke-direct {v2, v3, v4, v1}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 200
    new-instance v1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 221
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v2, v2, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
