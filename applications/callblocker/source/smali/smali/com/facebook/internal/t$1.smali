.class Lcom/facebook/internal/t$1;
.super Landroid/os/Handler;
.source "PlatformServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/t;-><init>(Landroid/content/Context;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/t;


# direct methods
.method constructor <init>(Lcom/facebook/internal/t;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/internal/t$1;->a:Lcom/facebook/internal/t;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/internal/t$1;->a:Lcom/facebook/internal/t;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/t;->a(Landroid/os/Message;)V

    .line 65
    return-void
.end method
