.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;)V
    .locals 0

    .line 580
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 599
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7$2;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 584
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 586
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    .line 591
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;->b()V

    :cond_1
    return-void
.end method
