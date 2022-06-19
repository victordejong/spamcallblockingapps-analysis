.class Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;I[Ljava/lang/String;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;->c:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1;

    iput p2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 485
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;->a:I

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1$1;->b:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 486
    aget-object v0, v1, v0

    .line 487
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 1432
    iput-object v0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 488
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b()V

    :cond_0
    return-void
.end method
