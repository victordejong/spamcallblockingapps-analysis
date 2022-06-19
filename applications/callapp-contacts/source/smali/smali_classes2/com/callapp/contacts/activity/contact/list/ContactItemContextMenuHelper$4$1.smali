.class Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 151
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;Landroid/app/Activity;)V

    .line 170
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
