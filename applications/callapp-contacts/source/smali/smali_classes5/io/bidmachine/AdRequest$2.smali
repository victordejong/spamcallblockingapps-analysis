.class final Lio/bidmachine/AdRequest$2;
.super Lio/bidmachine/TrackingObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lio/bidmachine/AdRequest$2;->this$0:Lio/bidmachine/AdRequest;

    invoke-direct {p0}, Lio/bidmachine/TrackingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTrackingKey()Ljava/lang/Object;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/bidmachine/AdRequest$2;->this$0:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$200(Lio/bidmachine/AdRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lio/bidmachine/AdRequest$2;->this$0:Lio/bidmachine/AdRequest;

    iget-object v0, v0, Lio/bidmachine/AdRequest;->trackUrls:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/AdRequest$2;->this$0:Lio/bidmachine/AdRequest;

    iget-object v0, v0, Lio/bidmachine/AdRequest;->trackUrls:Ljava/util/Map;

    .line 123
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lio/bidmachine/TrackingObject;->getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
