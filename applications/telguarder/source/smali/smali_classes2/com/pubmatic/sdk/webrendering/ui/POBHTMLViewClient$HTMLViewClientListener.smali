.class public interface abstract Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HTMLViewClientListener"
.end annotation


# virtual methods
.method public abstract onPageFinished(Landroid/webkit/WebView;)V
.end method

.method public abstract onReceivedError(Lcom/pubmatic/sdk/common/POBError;)V
.end method

.method public abstract shouldOverrideUrlLoading(Ljava/lang/String;)Z
.end method
