.class public final synthetic Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$X5xcmnkmzdCtEChHjElaFVJX2n0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/popup/OptInWithTopImagePopup;

.field public final synthetic f$1:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/popup/OptInWithTopImagePopup;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$X5xcmnkmzdCtEChHjElaFVJX2n0;->f$0:Lcom/callapp/contacts/popup/OptInWithTopImagePopup;

    iput-object p2, p0, Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$X5xcmnkmzdCtEChHjElaFVJX2n0;->f$1:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$X5xcmnkmzdCtEChHjElaFVJX2n0;->f$0:Lcom/callapp/contacts/popup/OptInWithTopImagePopup;

    iget-object v1, p0, Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$X5xcmnkmzdCtEChHjElaFVJX2n0;->f$1:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->lambda$X5xcmnkmzdCtEChHjElaFVJX2n0(Lcom/callapp/contacts/popup/OptInWithTopImagePopup;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V

    return-void
.end method
