.class Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;->a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand$2;->a:Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1202e1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method
