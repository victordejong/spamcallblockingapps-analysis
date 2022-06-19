.class public Lcom/callapp/contacts/util/video/TrimmerActivity;
.super Lcom/callapp/contacts/activity/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lb/video_trimmer_library/a/c;
.implements Lcom/linkedin/android/litr/e;


# instance fields
.field private a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;-><init>()V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f12072f

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p1, -0x64

    .line 94
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/video/TrimmerActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$WEwOq7IDvp1uxw0L5aOpvyVBACo(Lcom/callapp/contacts/util/video/TrimmerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/video/TrimmerActivity;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 129
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "error while previewing video"

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->g:Ljava/io/File;

    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 144
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f12072f

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->f:Ljava/io/File;

    .line 147
    new-instance v0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    iget-object v5, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->f:Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Lcom/linkedin/android/litr/e;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->d:Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

    .line 148
    invoke-virtual {v0}, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120504

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Throwable;)V

    .line 201
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 202
    iget-object p2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->f:Ljava/io/File;

    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 203
    iget-object p2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 204
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p2

    const v0, 0x7f120503

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4111
    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget p2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->b:I

    const-string v0, "EXTRA_ASSIGN_FLOW"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object p2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->c:Ljava/lang/String;

    const-string v0, "EXTRA_CONTACT_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object p2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->g:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 208
    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/util/video/TrimmerActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->finish()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 154
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 175
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 176
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120812

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    iget v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->b:I

    const-string v1, "EXTRA_ASSIGN_FLOW"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->c:Ljava/lang/String;

    const-string v1, "EXTRA_CONTACT_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->f:Ljava/io/File;

    iget-object v1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->g:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->g:Ljava/io/File;

    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    :goto_1
    const/4 v0, -0x1

    .line 187
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/util/video/TrimmerActivity;->setResult(ILandroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->finish()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    iget-object p1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d004a

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    const/16 v0, -0x64

    .line 118
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->setResult(I)V

    .line 119
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 61
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/video/TrimmerActivity;->showActionBar(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VIDEO_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->finish()V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_VIDEO_FILE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "CallScreenTheme"

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_ASSIGN_FLOW"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->b:I

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_CONTACT_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->c:Ljava/lang/String;

    .line 81
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->e:Ljava/io/File;

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->finish()V

    return-void

    .line 87
    :cond_2
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const v2, 0x7f120537

    .line 88
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    const p1, 0x7f0a0aa1

    .line 91
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/video/TrimmerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/video/VideoTrimmerView;

    .line 92
    new-instance v0, Lcom/callapp/contacts/util/video/-$$Lambda$TrimmerActivity$WEwOq7IDvp1uxw0L5aOpvyVBACo;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/video/-$$Lambda$TrimmerActivity$WEwOq7IDvp1uxw0L5aOpvyVBACo;-><init>(Lcom/callapp/contacts/util/video/TrimmerActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->setTrimmerEvents(Lcom/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents;)V

    const v0, 0x7f0a01c7

    .line 97
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1201a9

    .line 98
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01c8

    .line 99
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/util/video/TrimmerActivity$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/util/video/TrimmerActivity$1;-><init>(Lcom/callapp/contacts/util/video/TrimmerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x3a98

    .line 107
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->setMaxDurationInMs(I)V

    .line 108
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->setOnK4LVideoListener(Lcom/lb/video_trimmer_library/a/c;)V

    .line 109
    new-instance v0, Ljava/io/File;

    const-string v2, "CallAppMedia"

    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->g:Ljava/io/File;

    .line 110
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->setDestinationFile(Ljava/io/File;)V

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->e:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->setVideoURI(Landroid/net/Uri;)V

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/video/VideoTrimmerView;->setVideoInformationVisibility(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/util/video/TrimmerActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 135
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->onDestroy()V

    return-void
.end method
