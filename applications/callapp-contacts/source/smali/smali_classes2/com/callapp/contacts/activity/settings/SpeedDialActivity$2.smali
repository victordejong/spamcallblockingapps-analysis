.class Lcom/callapp/contacts/activity/settings/SpeedDialActivity$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$2;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$2;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a(Ljava/util/List;)V

    return-void
.end method
