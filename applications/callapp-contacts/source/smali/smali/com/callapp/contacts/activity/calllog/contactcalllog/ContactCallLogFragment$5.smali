.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteAndRefresh(Landroid/content/Context;Ljava/util/List;ZLcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

.field final synthetic b:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic c:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;->c:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->d()V

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;->c:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->refreshData()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
