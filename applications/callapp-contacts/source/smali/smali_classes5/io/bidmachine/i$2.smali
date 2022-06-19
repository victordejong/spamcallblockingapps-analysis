.class final Lio/bidmachine/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/i;->notifyError(Ljava/util/List;Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$Callback<",
        "Ljava/lang/String;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$info:Lio/bidmachine/TrackEventInfo;

.field final synthetic val$trackErrorUrls:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lio/bidmachine/TrackEventInfo;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lio/bidmachine/i$2;->val$trackErrorUrls:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/i$2;->val$info:Lio/bidmachine/TrackEventInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lio/bidmachine/utils/BMError;)V
    .locals 3

    if-nez p1, :cond_0

    .line 131
    sget-object p1, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    .line 132
    :cond_0
    iget-object v0, p0, Lio/bidmachine/i$2;->val$trackErrorUrls:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/i$2;->val$info:Lio/bidmachine/TrackEventInfo;

    sget-object v2, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    invoke-virtual {v2}, Lio/bidmachine/TrackEventType;->getOrtbActionValue()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/i;->access$000(Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/i$2;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/i$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
