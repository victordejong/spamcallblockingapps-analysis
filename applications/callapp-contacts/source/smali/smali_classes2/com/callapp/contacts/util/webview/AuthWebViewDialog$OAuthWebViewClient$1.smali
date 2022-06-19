.class Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;->a(Lcom/callapp/contacts/api/helper/common/LoginListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/common/LoginListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;Lcom/callapp/contacts/api/helper/common/LoginListener;Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;->c:Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;

    iput-object p2, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;->a:Lcom/callapp/contacts/api/helper/common/LoginListener;

    iput-object p3, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;->a:Lcom/callapp/contacts/api/helper/common/LoginListener;

    iget-object v1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/api/helper/common/LoginListener;->b(Ljava/lang/String;)V

    return-void
.end method
