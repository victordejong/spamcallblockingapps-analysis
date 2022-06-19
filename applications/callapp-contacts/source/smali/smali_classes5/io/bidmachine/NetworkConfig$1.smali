.class final Lio/bidmachine/NetworkConfig$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "network"

    .line 39
    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "format"

    .line 40
    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "ad_units"

    .line 41
    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkConfig$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
