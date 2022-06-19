.class Lcom/callapp/contacts/action/shared/ShareFileAction$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/shared/ShareFileAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/callapp/contacts/action/shared/ShareFileAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareFileAction;Landroid/content/Intent;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->d:Lcom/callapp/contacts/action/shared/ShareFileAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p4, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 109
    new-instance v2, Lcom/callapp/contacts/framework/dao/ContentQuery;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v3, "_data"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/action/shared/ShareFileAction$2$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/action/shared/ShareFileAction$2$1;-><init>(Lcom/callapp/contacts/action/shared/ShareFileAction$2;)V

    .line 1185
    invoke-virtual {v2, v3, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    check-cast v2, Ljava/lang/String;

    .line 117
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-static {v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 121
    :cond_1
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->c:Landroid/content/Context;

    .line 1432
    iput-object v2, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 121
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120072

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v3, 0x7f120073

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2111
    invoke-virtual {v0, v3, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    invoke-static {v2}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 134
    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->d:Lcom/callapp/contacts/action/shared/ShareFileAction;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/action/shared/ShareFileAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120070

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method
