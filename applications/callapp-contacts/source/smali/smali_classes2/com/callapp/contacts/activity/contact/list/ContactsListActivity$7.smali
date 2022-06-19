.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b()V

    .line 682
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c()V

    return-void
.end method

.method public static synthetic lambda$Ymv_0BLZKHW7gDeMCIph8ZRszP8(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 680
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$7$Ymv_0BLZKHW7gDeMCIph8ZRszP8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$7$Ymv_0BLZKHW7gDeMCIph8ZRszP8;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
