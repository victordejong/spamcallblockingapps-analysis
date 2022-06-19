.class public final Lcom/facebook/appevents/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/facebook/appevents/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    new-instance v0, Lcom/facebook/appevents/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/facebook/appevents/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    invoke-direct {p0, v0}, Lcom/facebook/appevents/m;-><init>(Lcom/facebook/appevents/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Lcom/facebook/appevents/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/appevents/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    invoke-direct {p0, v0}, Lcom/facebook/appevents/m;-><init>(Lcom/facebook/appevents/h;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/appevents/h;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/facebook/appevents/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/appevents/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    invoke-direct {p0, v0}, Lcom/facebook/appevents/m;-><init>(Lcom/facebook/appevents/h;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "previous"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 113
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    const/4 v1, 0x0

    const-string v2, "fb_sdk_settings_changed"

    invoke-virtual {v0, v2, v1, p1}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
