.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->getNewFragment()Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity$1;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity$1;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity$1;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;->a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    return-void
.end method
