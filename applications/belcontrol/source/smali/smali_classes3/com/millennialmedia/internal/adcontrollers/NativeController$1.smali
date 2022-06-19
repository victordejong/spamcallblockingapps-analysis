.class public Lcom/millennialmedia/internal/adcontrollers/NativeController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/NativeController;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/NativeController;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/NativeController;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->impTrackers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
