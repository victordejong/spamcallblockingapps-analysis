.class final Lcom/facebook/internal/k$2;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/k;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/k$a;


# direct methods
.method constructor <init>(Lcom/facebook/internal/k$a;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/internal/k$2;->a:Lcom/facebook/internal/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/internal/k$2;->a:Lcom/facebook/internal/k$a;

    invoke-interface {v0}, Lcom/facebook/internal/k$a;->a()V

    .line 157
    return-void
.end method
