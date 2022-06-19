.class final Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;
.super Lio/bidmachine/unified/UnifiedMediationParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/displays/HeaderBiddingAdObjectParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;


# direct methods
.method private constructor <init>(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedMediationParams;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Lio/bidmachine/displays/HeaderBiddingAdObjectParams$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;-><init>(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    .line 129
    invoke-static {v0}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->access$200(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->containsServerParams(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-static {v0}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->access$200(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->containsClientParams(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getBool(Ljava/lang/String;Z)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-static {v0, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->access$100(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 94
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    return p2
.end method

.method public final getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 102
    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-static {v0, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->access$100(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 107
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    return-wide p2
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 115
    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-static {v0, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->access$100(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 120
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 1

    .line 62
    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-static {v0, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->access$100(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    return p2
.end method

.method public final getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-static {v0, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->access$100(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    return-object p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;->this$0:Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-static {v0, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->access$100(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method
