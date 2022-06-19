.class public Lcom/facebook/FacebookActivity;
.super Landroidx/fragment/app/d;
.source "FacebookActivity.java"


# static fields
.field public static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;


# instance fields
.field private n:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "PassThrough"

    sput-object v0, Lcom/facebook/FacebookActivity;->k:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "SingleFragment"

    sput-object v0, Lcom/facebook/FacebookActivity;->l:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookActivity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/facebook/internal/s;->c(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/facebook/internal/s;->a(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 137
    invoke-static {v1, v2, v0}, Lcom/facebook/internal/s;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->finish()V

    .line 143
    return-void
.end method


# virtual methods
.method protected f()Landroidx/fragment/app/Fragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->m()Landroidx/fragment/app/i;

    move-result-object v3

    .line 91
    sget-object v0, Lcom/facebook/FacebookActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroidx/fragment/app/i;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "FacebookDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcom/facebook/internal/f;

    invoke-direct {v0}, Lcom/facebook/internal/f;-><init>()V

    .line 96
    invoke-virtual {v0, v4}, Lcom/facebook/internal/f;->c(Z)V

    .line 97
    sget-object v1, Lcom/facebook/FacebookActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/internal/f;->a(Landroidx/fragment/app/i;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    const-string/jumbo v0, "DeviceShareDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v1, Lcom/facebook/c/a/a;

    invoke-direct {v1}, Lcom/facebook/c/a/a;-><init>()V

    .line 102
    invoke-virtual {v1, v4}, Lcom/facebook/c/a/a;->c(Z)V

    .line 103
    const-string/jumbo v0, "content"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/b/a;

    invoke-virtual {v1, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/b/a;)V

    .line 104
    sget-object v0, Lcom/facebook/FacebookActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/facebook/c/a/a;->a(Landroidx/fragment/app/i;Ljava/lang/String;)V

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Lcom/facebook/login/k;

    invoke-direct {v0}, Lcom/facebook/login/k;-><init>()V

    .line 108
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->c(Z)V

    .line 109
    invoke-virtual {v3}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$c;->com_facebook_fragment_container:I

    sget-object v3, Lcom/facebook/FacebookActivity;->l:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroidx/fragment/app/o;->b()I

    goto :goto_0
.end method

.method public h()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->n:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->n:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/facebook/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    sget-object v1, Lcom/facebook/FacebookActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application\'s onCreate method."

    invoke-static {v1, v2}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/j;->a(Landroid/content/Context;)V

    .line 78
    :cond_0
    sget v1, Lcom/facebook/common/a$d;->com_facebook_activity_layout:I

    invoke-virtual {p0, v1}, Lcom/facebook/FacebookActivity;->setContentView(I)V

    .line 80
    sget-object v1, Lcom/facebook/FacebookActivity;->k:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/facebook/FacebookActivity;->i()V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/FacebookActivity;->n:Landroidx/fragment/app/Fragment;

    goto :goto_0
.end method
