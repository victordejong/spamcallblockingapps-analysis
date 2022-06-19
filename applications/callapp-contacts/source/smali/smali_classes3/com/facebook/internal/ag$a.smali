.class public Lcom/facebook/internal/ag$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/facebook/internal/ag$c;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/os/Bundle;

.field private g:Lcom/facebook/AccessToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/ag$a;->g:Lcom/facebook/AccessToken;

    .line 731
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    invoke-static {p1}, Lcom/facebook/internal/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    iput-object v0, p0, Lcom/facebook/internal/ag$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 736
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 742
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/ag$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 756
    invoke-static {p1}, Lcom/facebook/internal/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "applicationId"

    .line 758
    invoke-static {p2, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iput-object p2, p0, Lcom/facebook/internal/ag$a;->c:Ljava/lang/String;

    .line 761
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/internal/ag$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/facebook/internal/ag$a;->b:Landroid/content/Context;

    .line 825
    iput-object p2, p0, Lcom/facebook/internal/ag$a;->d:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 827
    iput-object p3, p0, Lcom/facebook/internal/ag$a;->f:Landroid/os/Bundle;

    return-void

    .line 829
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/ag$a;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/internal/ag;
    .locals 5

    .line 793
    iget-object v0, p0, Lcom/facebook/internal/ag$a;->g:Lcom/facebook/AccessToken;

    const-string v1, "app_id"

    if-eqz v0, :cond_0

    .line 794
    iget-object v2, p0, Lcom/facebook/internal/ag$a;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/facebook/internal/ag$a;->f:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/facebook/internal/ag$a;->g:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/ag$a;->f:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/internal/ag$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/ag$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/internal/ag$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/internal/ag$a;->f:Landroid/os/Bundle;

    iget v3, p0, Lcom/facebook/internal/ag$a;->e:I

    iget-object v4, p0, Lcom/facebook/internal/ag$a;->a:Lcom/facebook/internal/ag$c;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/ag;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/ag$c;)Lcom/facebook/internal/ag;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/facebook/internal/ag$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/facebook/internal/ag$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 812
    iget v0, p0, Lcom/facebook/internal/ag$a;->e:I

    return v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/facebook/internal/ag$a;->f:Landroid/os/Bundle;

    return-object v0
.end method
