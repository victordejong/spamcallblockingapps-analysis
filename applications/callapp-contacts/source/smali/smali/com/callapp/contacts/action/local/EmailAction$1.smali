.class Lcom/callapp/contacts/action/local/EmailAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/EmailAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/action/local/EmailAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/EmailAction;Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/action/local/EmailAction$1;->d:Lcom/callapp/contacts/action/local/EmailAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/EmailAction$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/EmailAction$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/callapp/contacts/action/local/EmailAction$1;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EmailAction$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EmailAction$1;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EmailAction$1;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EmailAction$1;->b:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ""

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
