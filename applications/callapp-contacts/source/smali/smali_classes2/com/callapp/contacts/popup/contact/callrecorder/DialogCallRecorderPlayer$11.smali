.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 12

    .line 393
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v11, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f120142

    .line 394
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f120141

    .line 395
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120049

    .line 396
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1201a9

    .line 397
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    .line 398
    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$900(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)I

    move-result v6

    new-instance v8, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;)V

    new-instance v9, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$2;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$2;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 393
    invoke-virtual {p1, v0, v11}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
