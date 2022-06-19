.class final Lcom/facebook/referrals/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Landroidx/fragment/app/Fragment;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/referrals/a;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/facebook/referrals/a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/referrals/a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/facebook/referrals/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/facebook/internal/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/referrals/a;->c:Ljava/lang/String;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/facebook/referrals/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 1119
    iget-object v0, p0, Lcom/facebook/referrals/a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/referrals/a;->b:Landroidx/fragment/app/Fragment;

    .line 1120
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1154
    invoke-direct {p0}, Lcom/facebook/referrals/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2141
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2142
    invoke-static {}, Lcom/facebook/internal/ae;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/referrals/a;->a:Ljava/lang/String;

    .line 2146
    invoke-static {}, Lcom/facebook/referrals/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "redirect_uri"

    .line 2144
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    iget-object v3, p0, Lcom/facebook/referrals/a;->a:Ljava/lang/String;

    const-string v4, "state"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    sget-boolean v3, Lcom/facebook/g;->a:Z

    const-string v4, "share_referral"

    if-eqz v3, :cond_2

    .line 1128
    invoke-static {v4, v0}, Lcom/facebook/internal/d;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/login/a;->a(Landroid/net/Uri;)V

    .line 1131
    :cond_2
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/facebook/referrals/a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1132
    sget-object v5, Lcom/facebook/CustomTabMainActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    sget-object v4, Lcom/facebook/CustomTabMainActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1134
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/referrals/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    iget-object v0, p0, Lcom/facebook/referrals/a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_4

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error_message"

    const-string v3, "Failed to open Referral dialog: Chrome custom tab could not be started. Please make sure internet permission is granted and Chrome is installed"

    .line 61
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-direct {p0, v2, v0}, Lcom/facebook/referrals/a;->a(ILandroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method final a(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_3

    .line 76
    sget-object p1, Lcom/facebook/CustomTabMainActivity;->d:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 78
    invoke-static {}, Lcom/facebook/referrals/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/ae;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 3096
    iget-object v1, p0, Lcom/facebook/referrals/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v0, "state"

    .line 3097
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3098
    iget-object v1, p0, Lcom/facebook/referrals/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 3099
    iput-object v1, p0, Lcom/facebook/referrals/a;->a:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const-string p1, "error_message"

    const-string v0, "The referral response was missing a valid challenge string."

    .line 85
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_3
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/facebook/referrals/a;->a(ILandroid/content/Intent;)V

    return-void
.end method
