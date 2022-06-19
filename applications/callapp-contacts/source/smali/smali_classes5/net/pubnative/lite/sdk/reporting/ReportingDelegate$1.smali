.class Lnet/pubnative/lite/sdk/reporting/ReportingDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->reportEventRaw(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate$1;->this$0:Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    invoke-static {}, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->access$000()Ljava/lang/String;

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {}, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->access$000()Ljava/lang/String;

    return-void
.end method
