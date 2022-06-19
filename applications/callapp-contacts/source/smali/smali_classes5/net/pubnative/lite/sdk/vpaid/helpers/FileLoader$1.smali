.class Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->maybeLoadFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->access$000(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)V

    return-void
.end method
