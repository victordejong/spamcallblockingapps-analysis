.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 401
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1$1;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 409
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;

    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->dismiss()V

    return-void
.end method
