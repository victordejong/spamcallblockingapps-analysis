.class final Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BringToFrontTask"
.end annotation


# instance fields
.field final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 2108
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 2109
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 2114
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
