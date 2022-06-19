.class public Lcom/facebook/internal/f;
.super Landroidx/fragment/app/c;
.source "FacebookDialogFragment.java"


# instance fields
.field private ae:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/facebook/internal/f;->r()Landroidx/fragment/app/d;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroidx/fragment/app/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-static {v0, p1, p2}, Lcom/facebook/internal/s;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v2

    .line 155
    if-nez p2, :cond_0

    const/4 v0, -0x1

    .line 157
    :goto_0
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/d;->setResult(ILandroid/content/Intent;)V

    .line 158
    invoke-virtual {v1}, Landroidx/fragment/app/d;->finish()V

    .line 159
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/internal/f;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/internal/f;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/f;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/f;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method private o(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/facebook/internal/f;->r()Landroidx/fragment/app/d;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 167
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/d;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {v0}, Landroidx/fragment/app/d;->finish()V

    .line 169
    return-void
.end method


# virtual methods
.method public I()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroidx/fragment/app/c;->I()V

    .line 126
    iget-object v0, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/facebook/internal/z;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    check-cast v0, Lcom/facebook/internal/z;

    invoke-virtual {v0}, Lcom/facebook/internal/z;->e()V

    .line 129
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    .line 53
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/facebook/internal/f;->r()Landroidx/fragment/app/d;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/d;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/facebook/internal/s;->c(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "is_fallback"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "params"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 69
    invoke-static {v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    const-string/jumbo v1, "FacebookDialogFragment"

    const-string/jumbo v2, "Cannot start a WebDialog with an empty/missing \'actionName\'"

    invoke-static {v1, v2}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/d;->finish()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance v3, Lcom/facebook/internal/z$a;

    invoke-direct {v3, v0, v2, v1}, Lcom/facebook/internal/z$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/facebook/internal/f$1;

    invoke-direct {v0, p0}, Lcom/facebook/internal/f$1;-><init>(Lcom/facebook/internal/f;)V

    .line 78
    invoke-virtual {v3, v0}, Lcom/facebook/internal/z$a;->a(Lcom/facebook/internal/z$c;)Lcom/facebook/internal/z$a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/facebook/internal/z$a;->a()Lcom/facebook/internal/z;

    move-result-object v0

    .line 108
    :goto_1
    iput-object v0, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    goto :goto_0

    .line 86
    :cond_2
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    const-string/jumbo v1, "FacebookDialogFragment"

    const-string/jumbo v2, "Cannot start a fallback WebDialog with an empty/missing \'url\'"

    invoke-static {v1, v2}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroidx/fragment/app/d;->finish()V

    goto :goto_0

    .line 95
    :cond_3
    const-string/jumbo v2, "fb%s://bridge/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/i;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/facebook/internal/f$2;

    invoke-direct {v1, p0}, Lcom/facebook/internal/f$2;-><init>(Lcom/facebook/internal/f;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/z;->a(Lcom/facebook/internal/z$c;)V

    goto :goto_1
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0, v1, v1}, Lcom/facebook/internal/f;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/f;->a(Z)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    return-object v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/facebook/internal/f;->d()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/internal/f;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/facebook/internal/f;->d()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 144
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/c;->k()V

    .line 145
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    iget-object v0, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/facebook/internal/z;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/internal/f;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/facebook/internal/f;->ae:Landroid/app/Dialog;

    check-cast v0, Lcom/facebook/internal/z;

    invoke-virtual {v0}, Lcom/facebook/internal/z;->e()V

    .line 137
    :cond_0
    return-void
.end method
