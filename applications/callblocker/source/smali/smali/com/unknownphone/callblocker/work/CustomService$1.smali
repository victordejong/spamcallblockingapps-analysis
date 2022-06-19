.class Lcom/unknownphone/callblocker/work/CustomService$1;
.super Ljava/lang/Object;
.source "CustomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/work/CustomService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/work/CustomService;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/work/CustomService;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unknownphone/callblocker/work/CustomService$1;->a:Lcom/unknownphone/callblocker/work/CustomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/unknownphone/callblocker/work/CustomService$1;->a:Lcom/unknownphone/callblocker/work/CustomService;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/work/CustomService;->stopSelf()V

    .line 43
    return-void
.end method
