.class final Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/views/CloseableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UnsetPressedState"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/views/CloseableContainer;


# direct methods
.method private constructor <init>(Lnet/pubnative/lite/sdk/views/CloseableContainer;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;->this$0:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/pubnative/lite/sdk/views/CloseableContainer;Lnet/pubnative/lite/sdk/views/CloseableContainer$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;-><init>(Lnet/pubnative/lite/sdk/views/CloseableContainer;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 270
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;->this$0:Lnet/pubnative/lite/sdk/views/CloseableContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->access$100(Lnet/pubnative/lite/sdk/views/CloseableContainer;Z)V

    return-void
.end method
