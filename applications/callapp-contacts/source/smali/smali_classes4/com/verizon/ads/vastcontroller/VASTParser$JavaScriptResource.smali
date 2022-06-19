.class public Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaScriptResource"
.end annotation


# instance fields
.field public final apiFramework:Ljava/lang/String;

.field public final browserOptional:Z

.field public final uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;->apiFramework:Ljava/lang/String;

    .line 712
    iput-boolean p2, p0, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;->browserOptional:Z

    .line 713
    iput-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;->uri:Ljava/lang/String;

    return-void
.end method
