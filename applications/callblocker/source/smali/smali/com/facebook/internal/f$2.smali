.class Lcom/facebook/internal/f$2;
.super Ljava/lang/Object;
.source "FacebookDialogFragment.java"

# interfaces
.implements Lcom/facebook/internal/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/f;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/f;


# direct methods
.method constructor <init>(Lcom/facebook/internal/f;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/internal/f$2;->a:Lcom/facebook/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/internal/f$2;->a:Lcom/facebook/internal/f;

    invoke-static {v0, p1}, Lcom/facebook/internal/f;->a(Lcom/facebook/internal/f;Landroid/os/Bundle;)V

    .line 104
    return-void
.end method
