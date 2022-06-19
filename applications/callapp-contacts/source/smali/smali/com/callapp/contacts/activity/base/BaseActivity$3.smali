.class Lcom/callapp/contacts/activity/base/BaseActivity$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity$3;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$3;->a:Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->handleIncognitoMode()V

    return-void
.end method
