.class final Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteCallLogEntries(Landroid/content/Context;Ljava/util/List;IZZLandroid/content/DialogInterface$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(ZLjava/util/List;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;->a:Z

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 78
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;->a:Z

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/List;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->c()V

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 84
    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method
