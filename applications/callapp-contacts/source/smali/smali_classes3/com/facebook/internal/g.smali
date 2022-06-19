.class public Lcom/facebook/internal/g;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# instance fields
.field public c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/facebook/internal/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/facebook/internal/z;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 151
    :goto_0
    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 152
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/g;Landroid/os/Bundle;)V
    .locals 1

    .line 3156
    invoke-virtual {p0}, Lcom/facebook/internal/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 3158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_0

    .line 3159
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 3161
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 3162
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/g;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/g;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/facebook/internal/g;->c:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p1, p1}, Lcom/facebook/internal/g;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lcom/facebook/internal/g;->setShowsDialog(Z)V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/facebook/internal/g;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object p1, p0, Lcom/facebook/internal/g;->c:Landroid/app/Dialog;

    instance-of p1, p1, Lcom/facebook/internal/ag;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/internal/g;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/facebook/internal/g;->c:Landroid/app/Dialog;

    check-cast p1, Lcom/facebook/internal/ag;

    invoke-virtual {p1}, Lcom/facebook/internal/ag;->c()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object p1, p0, Lcom/facebook/internal/g;->c:Landroid/app/Dialog;

    if-nez p1, :cond_3

    .line 58
    invoke-virtual {p0}, Lcom/facebook/internal/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/facebook/internal/z;->b(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_fallback"

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "action"

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    .line 66
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 69
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 73
    :cond_0
    new-instance v2, Lcom/facebook/internal/ag$a;

    invoke-direct {v2, p1, v1, v0}, Lcom/facebook/internal/ag$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/facebook/internal/g$1;

    invoke-direct {p1, p0}, Lcom/facebook/internal/g$1;-><init>(Lcom/facebook/internal/g;)V

    .line 1782
    iput-object p1, v2, Lcom/facebook/internal/ag$a;->a:Lcom/facebook/internal/ag$c;

    .line 82
    invoke-virtual {v2}, Lcom/facebook/internal/ag$a;->a()Lcom/facebook/internal/ag;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v1, "url"

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 87
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "fb%s://bridge/"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {p1, v0, v1}, Lcom/facebook/internal/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/k;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/facebook/internal/g$2;

    invoke-direct {v0, p0}, Lcom/facebook/internal/g$2;-><init>(Lcom/facebook/internal/g;)V

    .line 2281
    iput-object v0, p1, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ag$c;

    .line 104
    :goto_0
    iput-object p1, p0, Lcom/facebook/internal/g;->c:Landroid/app/Dialog;

    :cond_3
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/facebook/internal/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/internal/g;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/facebook/internal/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 140
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/c;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 121
    invoke-super {p0}, Landroidx/fragment/app/c;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/facebook/internal/g;->c:Landroid/app/Dialog;

    instance-of v1, v0, Lcom/facebook/internal/ag;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Lcom/facebook/internal/ag;

    invoke-virtual {v0}, Lcom/facebook/internal/ag;->c()V

    :cond_0
    return-void
.end method
