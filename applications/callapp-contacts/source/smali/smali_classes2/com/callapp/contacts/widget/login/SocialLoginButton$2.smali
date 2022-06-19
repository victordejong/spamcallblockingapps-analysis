.class Lcom/callapp/contacts/widget/login/SocialLoginButton$2;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/login/SocialLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/widget/login/SocialLoginButton;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    iput-object p3, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a()V

    .line 83
    new-instance v0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;-><init>(Lcom/callapp/contacts/widget/login/SocialLoginButton$2;)V

    .line 126
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->b()V

    .line 142
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-static {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;)Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->c()V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-static {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;)Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->d()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->c()V

    .line 132
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-static {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;)Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->c()V

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-static {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;)Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->e()V

    return-void
.end method
