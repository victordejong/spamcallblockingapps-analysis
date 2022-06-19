.class Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;->this$0:Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$1;->this$0:Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->closeLayout()V

    return-void
.end method
