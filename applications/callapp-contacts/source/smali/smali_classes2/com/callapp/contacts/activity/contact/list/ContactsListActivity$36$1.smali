.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;)V
    .locals 0

    .line 3489
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 3492
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getWearableClientHandler()Lcom/callapp/contacts/wearable/WearableClientHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a()V

    return-void
.end method
