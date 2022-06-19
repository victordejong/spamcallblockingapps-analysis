.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$1;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$1;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a()V

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$1;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$000(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    :cond_0
    return-void
.end method
