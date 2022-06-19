.class final Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$4;
.super Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    .line 378
    invoke-direct/range {p0 .. p9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 0

    .line 381
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->onDialogDismissed(Landroid/content/DialogInterface;)V

    return-void
.end method
