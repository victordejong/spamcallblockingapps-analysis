.class Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic b:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->b:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;

    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->b:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->d(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f1200f3

    .line 390
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->b:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;

    iget-object v2, v2, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    .line 397
    invoke-static {v2, v3, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 399
    iget-object v3, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->b:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;

    iget-object v3, v3, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 401
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.SUBJECT"

    .line 403
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TITLE"

    .line 404
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->b:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, " "

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->b:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;

    iget-object v5, v5, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120064

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120365

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 410
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/jpeg"

    .line 413
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 414
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 416
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->b:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    const v1, 0x7f120629

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 418
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1207ec

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    .line 420
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method
