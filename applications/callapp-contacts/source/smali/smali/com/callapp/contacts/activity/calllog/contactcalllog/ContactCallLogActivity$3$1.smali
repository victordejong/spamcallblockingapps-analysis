.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3$1;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3$1;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->showMultiSelect(Z)V

    :cond_0
    return-void
.end method
