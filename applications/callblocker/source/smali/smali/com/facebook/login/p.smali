.class abstract Lcom/facebook/login/p;
.super Lcom/facebook/login/n;
.source "NativeAppLoginMethodHandler.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/login/n;-><init>(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/j;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/login/n;-><init>(Lcom/facebook/login/j;)V

    .line 40
    return-void
.end method

.method private a(Lcom/facebook/login/j$c;Landroid/content/Intent;)Lcom/facebook/login/j$d;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 77
    invoke-direct {p0, v2}, Lcom/facebook/login/p;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 78
    const-string/jumbo v0, "error_code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "error_code"

    .line 79
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    invoke-direct {p0, v2}, Lcom/facebook/login/p;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 83
    const-string/jumbo v5, "e2e"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v5}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 85
    invoke-virtual {p0, v5}, Lcom/facebook/login/p;->b(Ljava/lang/String;)V

    .line 88
    :cond_0
    if-nez v3, :cond_3

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lcom/facebook/d;->b:Lcom/facebook/d;

    .line 92
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->d()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v0, v2, v3, v4}, Lcom/facebook/login/p;->a(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/d;Ljava/lang/String;)Lcom/facebook/a;

    move-result-object v0

    .line 93
    invoke-static {p1, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Lcom/facebook/a;)Lcom/facebook/login/j$d;
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    :cond_1
    :goto_1
    return-object v1

    :cond_2
    move-object v0, v1

    .line 79
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v1

    goto :goto_1

    .line 97
    :cond_3
    sget-object v2, Lcom/facebook/internal/v;->a:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    sget-object v2, Lcom/facebook/internal/v;->b:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    invoke-static {p1, v1}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v1

    goto :goto_1

    .line 102
    :cond_4
    invoke-static {p1, v3, v4, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v1

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    const-string/jumbo v0, "error_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    return-object v0
.end method

.method private b(Lcom/facebook/login/j$c;Landroid/content/Intent;)Lcom/facebook/login/j$d;
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 108
    invoke-direct {p0, v1}, Lcom/facebook/login/p;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string/jumbo v0, "error_code"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "error_code"

    .line 110
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    const-string/jumbo v3, "CONNECTION_FAILURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-direct {p0, v1}, Lcom/facebook/login/p;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    .line 122
    :goto_1
    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p1, v2}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "error_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, "error_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    return-object v0
.end method


# virtual methods
.method a(IILandroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/login/p;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v0

    .line 55
    if-nez p3, :cond_0

    .line 57
    const-string/jumbo v1, "Operation canceled"

    invoke-static {v0, v1}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    .line 67
    :goto_0
    if-eqz v0, :cond_3

    .line 68
    iget-object v1, p0, Lcom/facebook/login/p;->b:Lcom/facebook/login/j;

    invoke-virtual {v1, v0}, Lcom/facebook/login/j;->a(Lcom/facebook/login/j$d;)V

    .line 72
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    if-nez p2, :cond_1

    .line 59
    invoke-direct {p0, v0, p3}, Lcom/facebook/login/p;->b(Lcom/facebook/login/j$c;Landroid/content/Intent;)Lcom/facebook/login/j$d;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 61
    const-string/jumbo v1, "Unexpected resultCode from authorization."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/facebook/login/p;->a(Lcom/facebook/login/j$c;Landroid/content/Intent;)Lcom/facebook/login/j$d;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/facebook/login/p;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->i()V

    goto :goto_1
.end method

.method protected a(Landroid/content/Intent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return v0

    .line 147
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/login/p;->b:Lcom/facebook/login/j;

    invoke-virtual {v1}, Lcom/facebook/login/j;->a()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method abstract a(Lcom/facebook/login/j$c;)Z
.end method
