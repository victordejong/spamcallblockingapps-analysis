.class Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 240
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f12071d

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120615

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/app/Activity;)V

    return-void
.end method
