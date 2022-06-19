.class final Lcom/facebook/internal/ag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/ag;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ag;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ag;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/facebook/internal/ag$1;->a:Lcom/facebook/internal/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 384
    iget-object p1, p0, Lcom/facebook/internal/ag$1;->a:Lcom/facebook/internal/ag;

    invoke-virtual {p1}, Lcom/facebook/internal/ag;->cancel()V

    return-void
.end method
