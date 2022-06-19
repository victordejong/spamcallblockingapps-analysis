.class public final Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/google/firebase/perf/v1/IosApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/IosApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/IosApplicationInfo;",
        "Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/IosApplicationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$000()Lcom/google/firebase/perf/v1/IosApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/perf/v1/IosApplicationInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBundleShortVersion()Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$500(Lcom/google/firebase/perf/v1/IosApplicationInfo;)V

    return-object p0
.end method

.method public clearMccMnc()Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$800(Lcom/google/firebase/perf/v1/IosApplicationInfo;)V

    return-object p0
.end method

.method public clearNetworkConnectionInfo()Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$1200(Lcom/google/firebase/perf/v1/IosApplicationInfo;)V

    return-object p0
.end method

.method public clearSdkVersion()Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$200(Lcom/google/firebase/perf/v1/IosApplicationInfo;)V

    return-object p0
.end method

.method public getBundleShortVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getBundleShortVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundleShortVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getBundleShortVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMccMncBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getMccMncBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkConnectionInfo()Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getNetworkConnectionInfo()Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getSdkVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasBundleShortVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->hasBundleShortVersion()Z

    move-result v0

    return v0
.end method

.method public hasMccMnc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->hasMccMnc()Z

    move-result v0

    return v0
.end method

.method public hasNetworkConnectionInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->hasNetworkConnectionInfo()Z

    move-result v0

    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->hasSdkVersion()Z

    move-result v0

    return v0
.end method

.method public mergeNetworkConnectionInfo(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$1100(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V

    return-object p0
.end method

.method public setBundleShortVersion(Ljava/lang/String;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$400(Lcom/google/firebase/perf/v1/IosApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBundleShortVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$600(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMccMnc(Ljava/lang/String;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/IosApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMccMncBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$900(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNetworkConnectionInfo(Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$1000(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V

    return-object p0
.end method

.method public setNetworkConnectionInfo(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$1000(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V

    return-object p0
.end method

.method public setSdkVersion(Ljava/lang/String;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$100(Lcom/google/firebase/perf/v1/IosApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->access$300(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
