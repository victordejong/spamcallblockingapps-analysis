.class public final synthetic Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/popup/contact/DialogList;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;->f$0:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;->f$2:Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;->f$0:Lcom/callapp/contacts/popup/contact/DialogList;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;->f$2:Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;

    invoke-static {v0, v1, v2, p1}, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager;->lambda$yzKDIRDa2WWmsIhFEFAU1v3BEjA(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;I)V

    return-void
.end method
