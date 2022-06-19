.class public interface abstract Lcom/telguarder/features/rateAndFeedback/Reportable;
.super Ljava/lang/Object;
.source "Reportable.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getAllReportablePhoneNumbers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReportableAddress()Ljava/lang/String;
.end method

.method public abstract getReportableName()Ljava/lang/String;
.end method

.method public abstract getReportablePhoneNumber()Ljava/lang/String;
.end method

.method public abstract getReportableWebUrl()Ljava/lang/String;
.end method
