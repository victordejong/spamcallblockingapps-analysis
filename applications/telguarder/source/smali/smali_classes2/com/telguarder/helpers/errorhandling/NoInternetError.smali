.class public Lcom/telguarder/helpers/errorhandling/NoInternetError;
.super Ljava/lang/Exception;
.source "NoInternetError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "Your are not connected to the Internet.\n Please connect to the Internet, and try again."

    return-object v0
.end method
