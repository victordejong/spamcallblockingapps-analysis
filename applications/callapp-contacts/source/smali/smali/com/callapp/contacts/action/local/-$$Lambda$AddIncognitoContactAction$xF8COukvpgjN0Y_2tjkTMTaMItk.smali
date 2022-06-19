.class public final synthetic Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$xF8COukvpgjN0Y_2tjkTMTaMItk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/action/local/AddIncognitoContactAction;

.field public final synthetic f$1:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/action/local/AddIncognitoContactAction;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$xF8COukvpgjN0Y_2tjkTMTaMItk;->f$0:Lcom/callapp/contacts/action/local/AddIncognitoContactAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$xF8COukvpgjN0Y_2tjkTMTaMItk;->f$1:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$xF8COukvpgjN0Y_2tjkTMTaMItk;->f$0:Lcom/callapp/contacts/action/local/AddIncognitoContactAction;

    iget-object v1, p0, Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$xF8COukvpgjN0Y_2tjkTMTaMItk;->f$1:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->lambda$xF8COukvpgjN0Y_2tjkTMTaMItk(Lcom/callapp/contacts/action/local/AddIncognitoContactAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void
.end method
