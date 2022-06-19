.class Lcom/facebook/login/WebViewLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/WebViewLoginMethodHandler$a;
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
.field private e2e:Ljava/lang/String;

.field private loginDialog:Lcom/facebook/internal/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$2;

    invoke-direct {v0}, Lcom/facebook/login/WebViewLoginMethodHandler$2;-><init>()V

    sput-object v0, Lcom/facebook/login/WebViewLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/ag;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/facebook/internal/ag;->cancel()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/ag;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "web_view"

    return-object v0
.end method

.method getTokenSource()Lcom/facebook/c;
    .locals 1

    .line 51
    sget-object v0, Lcom/facebook/c;->WEB_VIEW:Lcom/facebook/c;

    return-object v0
.end method

.method needsInternetPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onWebDialogComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)I
    .locals 6

    .line 69
    invoke-virtual {p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler;->getParameters(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/facebook/login/WebViewLoginMethodHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$1;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 79
    invoke-static {}, Lcom/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    const-string v3, "e2e"

    .line 80
    invoke-virtual {p0, v3, v2}, Lcom/facebook/login/WebViewLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/facebook/internal/ae;->e(Landroid/content/Context;)Z

    move-result v3

    .line 85
    new-instance v4, Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 86
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 1119
    iput-object v0, v4, Lcom/facebook/login/WebViewLoginMethodHandler$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v0, "fbconnect://chrome_os_success"

    goto :goto_0

    :cond_0
    const-string v0, "fbconnect://success"

    .line 1132
    :goto_0
    iput-object v0, v4, Lcom/facebook/login/WebViewLoginMethodHandler$a;->d:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthType()Ljava/lang/String;

    move-result-object v0

    .line 1140
    iput-object v0, v4, Lcom/facebook/login/WebViewLoginMethodHandler$a;->c:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/d;

    move-result-object p1

    .line 1145
    iput-object p1, v4, Lcom/facebook/login/WebViewLoginMethodHandler$a;->e:Lcom/facebook/login/d;

    .line 1782
    iput-object v1, v4, Lcom/facebook/internal/ag$a;->a:Lcom/facebook/internal/ag$c;

    .line 92
    invoke-virtual {v4}, Lcom/facebook/internal/ag$a;->a()Lcom/facebook/internal/ag;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/ag;

    .line 94
    new-instance p1, Lcom/facebook/internal/g;

    invoke-direct {p1}, Lcom/facebook/internal/g;-><init>()V

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p1, v0}, Lcom/facebook/internal/g;->setRetainInstance(Z)V

    .line 96
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->loginDialog:Lcom/facebook/internal/ag;

    .line 2050
    iput-object v1, p1, Lcom/facebook/internal/g;->c:Landroid/app/Dialog;

    .line 97
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {p1, v1, v2}, Lcom/facebook/internal/g;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/facebook/login/WebLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    iget-object p2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
