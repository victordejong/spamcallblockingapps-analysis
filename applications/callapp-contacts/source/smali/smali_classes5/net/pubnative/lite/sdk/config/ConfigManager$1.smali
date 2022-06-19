.class Lnet/pubnative/lite/sdk/config/ConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/config/ConfigManager;->refreshConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/config/ConfigManager;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/config/ConfigManager;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager$1;->this$0:Lnet/pubnative/lite/sdk/config/ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigFetchFailed(Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    invoke-static {}, Lnet/pubnative/lite/sdk/config/ConfigManager;->access$000()Ljava/lang/String;

    return-void
.end method

.method public onConfigFetched()V
    .locals 0

    .line 41
    invoke-static {}, Lnet/pubnative/lite/sdk/config/ConfigManager;->access$000()Ljava/lang/String;

    return-void
.end method
