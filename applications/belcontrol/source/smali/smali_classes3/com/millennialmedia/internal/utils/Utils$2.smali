.class public final Lcom/millennialmedia/internal/utils/Utils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/Utils;->vibrate([JILcom/millennialmedia/internal/utils/Utils$VibrateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$vibrateListener:Lcom/millennialmedia/internal/utils/Utils$VibrateListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/utils/Utils$VibrateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/Utils$2;->val$vibrateListener:Lcom/millennialmedia/internal/utils/Utils$VibrateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/Utils$2;->val$vibrateListener:Lcom/millennialmedia/internal/utils/Utils$VibrateListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/Utils$VibrateListener;->onFinished()V

    return-void
.end method
