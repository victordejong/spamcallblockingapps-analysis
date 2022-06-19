.class Lcom/callapp/contacts/util/webview/BaseWebViewDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/webview/BaseWebViewDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/webview/BaseWebViewDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$1;->a:Lcom/callapp/contacts/util/webview/BaseWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 75
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$1;->a:Lcom/callapp/contacts/util/webview/BaseWebViewDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->dismiss()V

    return-void
.end method
