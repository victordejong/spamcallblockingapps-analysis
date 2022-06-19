.class Lcom/facebook/c/a/a$1;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c/a/a;->c(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/c/a/a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/c/a/a$1;->a:Lcom/facebook/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/c/a/a$1;->a:Lcom/facebook/c/a/a;

    invoke-static {v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    return-void
.end method
