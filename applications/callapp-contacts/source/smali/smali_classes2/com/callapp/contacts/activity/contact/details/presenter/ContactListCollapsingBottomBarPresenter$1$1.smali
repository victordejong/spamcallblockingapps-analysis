.class Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eA:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter$1;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
