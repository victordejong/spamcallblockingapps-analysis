.class public Lnet/pubnative/lite/sdk/utils/MarkupUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVastXml(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 9
    :try_start_0
    const-class v1, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;

    invoke-static {p0, v1}, Lnet/pubnative/lite/sdk/vpaid/xml/XmlParser;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method
