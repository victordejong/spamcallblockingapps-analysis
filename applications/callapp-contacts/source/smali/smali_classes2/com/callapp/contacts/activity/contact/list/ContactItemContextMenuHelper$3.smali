.class final Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/ActionDoneListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$3;->a:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$3;->a:Lcom/callapp/contacts/action/ActionDoneListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-interface {p1, v0}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    :cond_0
    return-void
.end method
