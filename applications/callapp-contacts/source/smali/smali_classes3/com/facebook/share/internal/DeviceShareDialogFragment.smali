.class public Lcom/facebook/share/internal/DeviceShareDialogFragment;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public c:Lcom/facebook/share/model/ShareContent;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/app/Dialog;

.field private volatile g:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

.field private volatile h:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/DeviceShareDialogFragment;)Landroid/app/Dialog;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->f:Landroid/app/Dialog;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->g:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->g:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-virtual {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/a/a;->c(Ljava/lang/String;)V

    :cond_0
    const-string v0, "error"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    .line 150
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method private a(Lcom/facebook/FacebookRequestError;)V
    .locals 2

    .line 223
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d()V

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error"

    .line 225
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .locals 4

    .line 237
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->g:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 238
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    invoke-static {}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->e()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    .line 251
    invoke-virtual {p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getExpiresIn()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    invoke-virtual {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->h:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->b()I

    :cond_0
    return-void
.end method

.method private static declared-synchronized e()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    monitor-enter v0

    .line 230
    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 233
    :cond_0
    sget-object v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 95
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$g;->com_facebook_auth_dialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->f:Landroid/app/Dialog;

    .line 96
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 97
    sget v0, Lcom/facebook/common/a$e;->com_facebook_device_auth_dialog_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 98
    sget v0, Lcom/facebook/common/a$d;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d:Landroid/widget/ProgressBar;

    .line 99
    sget v0, Lcom/facebook/common/a$d;->confirmation_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->e:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/facebook/common/a$d;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    new-instance v2, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v0, Lcom/facebook/common/a$d;->com_facebook_device_auth_instructions:I

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    sget v2, Lcom/facebook/common/a$f;->com_facebook_device_auth_instructions:I

    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->f:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2166
    iget-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->c:Lcom/facebook/share/model/ShareContent;

    if-eqz p1, :cond_1

    .line 2170
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 2171
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .line 3100
    invoke-static {p1}, Lcom/facebook/share/internal/f;->a(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 3101
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "href"

    invoke-static {v1, v2, v0}, Lcom/facebook/internal/ae;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 3104
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object p1

    const-string v0, "quote"

    .line 3103
    invoke-static {v1, v0, p1}, Lcom/facebook/internal/ae;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2172
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_1

    .line 2173
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {p1}, Lcom/facebook/share/internal/f;->a(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    :goto_0
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 1180
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 1181
    :cond_2
    new-instance p1, Lcom/facebook/FacebookRequestError;

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "Failed to get share content"

    invoke-direct {p1, v0, v1, v2}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/FacebookRequestError;)V

    .line 1184
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/af;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/internal/af;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access_token"

    .line 1185
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-static {}, Lcom/facebook/devicerequests/a/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_info"

    .line 1186
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    new-instance p1, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v6, Lcom/facebook/k;->POST:Lcom/facebook/k;

    new-instance v7, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    const-string v4, "device/share"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    .line 1218
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/h;

    .line 117
    iget-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->f:Landroid/app/Dialog;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    const-string p2, "request_state"

    .line 84
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    :cond_0
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 123
    iget-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->h:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 126
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 127
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->g:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->g:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    const-string v1, "request_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
