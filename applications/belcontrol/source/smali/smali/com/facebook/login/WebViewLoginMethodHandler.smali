.class public Lcom/facebook/login/WebViewLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/WebViewLoginMethodHandler$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/WebViewLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Lhn0;

.field public f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$b;

    invoke-direct {v0}, Lcom/facebook/login/WebViewLoginMethodHandler$b;-><init>()V

    sput-object v0, Lcom/facebook/login/WebViewLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Lhn0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhn0;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Lhn0;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "web_view"

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;->o(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/WebViewLoginMethodHandler$a;

    invoke-direct {v1, p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$a;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    invoke-static {}, Lcom/facebook/login/LoginClient;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Ljava/lang/String;

    const-string v3, "e2e"

    invoke-virtual {p0, v3, v2}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->i()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lfn0;->M(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Lcom/facebook/login/WebViewLoginMethodHandler$c;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$c;->j(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$c;

    invoke-virtual {v4, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$c;->k(Z)Lcom/facebook/login/WebViewLoginMethodHandler$c;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$c;->i(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$c;

    invoke-virtual {v4, v1}, Lhn0$e;->h(Lhn0$g;)Lhn0$e;

    invoke-virtual {v4}, Lhn0$e;->a()Lhn0;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Lhn0;

    new-instance p1, Lgm0;

    invoke-direct {p1}, Lgm0;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Lhn0;

    invoke-virtual {p1, v1}, Lgm0;->n(Landroid/app/Dialog;)V

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {p1, v1, v2}, Lfd;->show(Lnd;Ljava/lang/String;)V

    return v0
.end method

.method public r()Lli0;
    .locals 1

    sget-object v0, Lli0;->g:Lli0;

    return-object v0
.end method

.method public v(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lri0;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/WebLoginMethodHandler;->t(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lri0;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
