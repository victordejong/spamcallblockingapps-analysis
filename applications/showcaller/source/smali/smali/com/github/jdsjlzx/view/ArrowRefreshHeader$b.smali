.class Lcom/github/jdsjlzx/view/ArrowRefreshHeader$b;
.super Ljava/lang/Object;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/github/jdsjlzx/view/ArrowRefreshHeader;


# direct methods
.method constructor <init>(Lcom/github/jdsjlzx/view/ArrowRefreshHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$b;->d:Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$b;->d:Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setState(I)V

    return-void
.end method
