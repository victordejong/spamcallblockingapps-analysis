.class Lcom/facebook/internal/z$3;
.super Landroid/webkit/WebView;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/z;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/z;


# direct methods
.method constructor <init>(Lcom/facebook/internal/z;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/facebook/internal/z$3;->a:Lcom/facebook/internal/z;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 540
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    goto :goto_0
.end method
