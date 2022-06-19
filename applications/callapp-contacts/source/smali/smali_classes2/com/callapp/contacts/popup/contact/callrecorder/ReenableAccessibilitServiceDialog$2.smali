.class Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->c(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fe:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->dismiss()V

    .line 87
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->b(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$2;->a:Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->b(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/PopupDoneListener;->popupDone(Z)V

    :cond_1
    return-void
.end method
