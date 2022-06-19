.class public interface abstract Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "POBVerificationScriptResource"
.end annotation


# virtual methods
.method public abstract getJavaScriptResource()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVendorKey()Ljava/lang/String;
.end method

.method public abstract getVerificationParameter()Ljava/lang/String;
.end method
