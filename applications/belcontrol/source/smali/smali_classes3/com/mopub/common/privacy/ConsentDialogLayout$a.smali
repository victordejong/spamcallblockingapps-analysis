.class public Lcom/mopub/common/privacy/ConsentDialogLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/CloseableLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/ConsentDialogLayout;->l(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/ConsentDialogLayout;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$a;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$a;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->h(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$a;->a:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->h(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout$c;->onCloseClick()V

    :cond_0
    return-void
.end method
