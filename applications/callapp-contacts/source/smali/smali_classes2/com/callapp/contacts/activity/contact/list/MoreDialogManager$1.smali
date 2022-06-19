.class final Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/list/OnSortAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/MoreDialogManager;->a(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$1;->a:Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$1;->a:Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;->c()V

    return-void
.end method
