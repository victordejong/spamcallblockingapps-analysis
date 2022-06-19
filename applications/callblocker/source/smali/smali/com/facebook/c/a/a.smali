.class public Lcom/facebook/c/a/a;
.super Landroidx/fragment/app/c;
.source "DeviceShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/c/a/a$a;
    }
.end annotation


# static fields
.field private static aj:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private ae:Landroid/widget/ProgressBar;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/app/Dialog;

.field private volatile ah:Lcom/facebook/c/a/a$a;

.field private volatile ai:Ljava/util/concurrent/ScheduledFuture;

.field private ak:Lcom/facebook/c/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/c/a/a;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/c/a/a;->ag:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/c/a/a;->ah:Lcom/facebook/c/a/a$a;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/c/a/a;->ah:Lcom/facebook/c/a/a$a;

    invoke-virtual {v0}, Lcom/facebook/c/a/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 145
    :cond_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/i;

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/facebook/c/a/a;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/i;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/c/a/a;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/facebook/c/a/a;->r()Landroidx/fragment/app/d;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 155
    :cond_2
    return-void
.end method

.method private a(Lcom/facebook/c/a/a$a;)V
    .locals 5

    .prologue
    .line 239
    iput-object p1, p0, Lcom/facebook/c/a/a;->ah:Lcom/facebook/c/a/a$a;

    .line 240
    iget-object v0, p0, Lcom/facebook/c/a/a;->af:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/c/a/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/facebook/c/a/a;->af:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/facebook/c/a/a;->ae:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    invoke-static {}, Lcom/facebook/c/a/a;->av()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/c/a/a$3;

    invoke-direct {v1, p0}, Lcom/facebook/c/a/a$3;-><init>(Lcom/facebook/c/a/a;)V

    .line 251
    invoke-virtual {p1}, Lcom/facebook/c/a/a$a;->b()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/a/a;->ai:Ljava/util/concurrent/ScheduledFuture;

    .line 253
    return-void
.end method

.method static synthetic a(Lcom/facebook/c/a/a;Lcom/facebook/c/a/a$a;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/c/a/a;Lcom/facebook/i;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/c/a/a;->a(Lcom/facebook/i;)V

    return-void
.end method

.method private a(Lcom/facebook/i;)V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/facebook/c/a/a;->as()V

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/c/a/a;->a(ILandroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private as()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/facebook/c/a/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/facebook/c/a/a;->v()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->b()I

    .line 161
    :cond_0
    return-void
.end method

.method private at()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/facebook/c/a/a;->ak:Lcom/facebook/c/b/a;

    .line 169
    if-nez v0, :cond_0

    move-object v0, v1

    .line 177
    :goto_0
    return-object v0

    .line 172
    :cond_0
    instance-of v2, v0, Lcom/facebook/c/b/c;

    if-eqz v2, :cond_1

    .line 173
    check-cast v0, Lcom/facebook/c/b/c;

    invoke-static {v0}, Lcom/facebook/c/a/d;->a(Lcom/facebook/c/b/c;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    instance-of v2, v0, Lcom/facebook/c/b/g;

    if-eqz v2, :cond_2

    .line 175
    check-cast v0, Lcom/facebook/c/b/g;

    invoke-static {v0}, Lcom/facebook/c/a/d;->a(Lcom/facebook/c/b/g;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 177
    goto :goto_0
.end method

.method private au()V
    .locals 6

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/facebook/c/a/a;->at()Landroid/os/Bundle;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    new-instance v0, Lcom/facebook/i;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v4, "Failed to get share content"

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/i;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/i;)V

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/internal/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "access_token"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "device_info"

    .line 190
    invoke-static {}, Lcom/facebook/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/facebook/k;

    const/4 v1, 0x0

    const-string/jumbo v2, "device/share"

    sget-object v4, Lcom/facebook/o;->b:Lcom/facebook/o;

    new-instance v5, Lcom/facebook/c/a/a$2;

    invoke-direct {v5, p0}, Lcom/facebook/c/a/a$2;-><init>(Lcom/facebook/c/a/a;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    .line 220
    invoke-virtual {v0}, Lcom/facebook/k;->j()Lcom/facebook/l;

    .line 221
    return-void
.end method

.method private static declared-synchronized av()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 3

    .prologue
    .line 232
    const-class v1, Lcom/facebook/c/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/c/a/a;->aj:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/c/a/a;->aj:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 235
    :cond_0
    sget-object v0, Lcom/facebook/c/a/a;->aj:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 85
    if-eqz p3, :cond_0

    .line 86
    const-string/jumbo v0, "request_state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/a/a$a;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/a$a;)V

    .line 91
    :cond_0
    return-object v1
.end method

.method public a(Lcom/facebook/c/b/a;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/c/a/a;->ak:Lcom/facebook/c/b/a;

    .line 165
    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/c/a/a;->r()Landroidx/fragment/app/d;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$f;->com_facebook_auth_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/c/a/a;->ag:Landroid/app/Dialog;

    .line 98
    invoke-virtual {p0}, Lcom/facebook/c/a/a;->r()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    sget v1, Lcom/facebook/common/a$d;->com_facebook_device_auth_dialog_fragment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    sget v0, Lcom/facebook/common/a$c;->progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/c/a/a;->ae:Landroid/widget/ProgressBar;

    .line 101
    sget v0, Lcom/facebook/common/a$c;->confirmation_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/c/a/a;->af:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/facebook/common/a$c;->cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    new-instance v2, Lcom/facebook/c/a/a$1;

    invoke-direct {v2, p0}, Lcom/facebook/c/a/a$1;-><init>(Lcom/facebook/c/a/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lcom/facebook/common/a$c;->com_facebook_device_auth_instructions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    sget v2, Lcom/facebook/common/a$e;->com_facebook_device_auth_instructions:I

    .line 114
    invoke-virtual {p0, v2}, Lcom/facebook/c/a/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/c/a/a;->ag:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcom/facebook/c/a/a;->au()V

    .line 119
    iget-object v0, p0, Lcom/facebook/c/a/a;->ag:Landroid/app/Dialog;

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->e(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/facebook/c/a/a;->ah:Lcom/facebook/c/a/a$a;

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "request_state"

    iget-object v1, p0, Lcom/facebook/c/a/a;->ah:Lcom/facebook/c/a/a$a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/c/a/a;->ai:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/c/a/a;->ai:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 128
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/c/a/a;->a(ILandroid/content/Intent;)V

    .line 130
    return-void
.end method
