.class Lcom/callapp/contacts/util/webview/WebViewDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/webview/WebViewDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/webview/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/webview/WebViewDialog;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$1;->a:Lcom/callapp/contacts/util/webview/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$1;->a:Lcom/callapp/contacts/util/webview/WebViewDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/webview/WebViewDialog;->dismiss()V

    return-void
.end method
