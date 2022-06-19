.class final Lio/bidmachine/AdRequest$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$Callback<",
        "Lcom/explorestack/protobuf/openrtb/Response;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/AdRequest$3;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest$3;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lio/bidmachine/AdRequest$3$2;->this$1:Lio/bidmachine/AdRequest$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lio/bidmachine/AdRequest$3$2;->this$1:Lio/bidmachine/AdRequest$3;

    iget-object v0, v0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    invoke-static {v0, p1}, Lio/bidmachine/AdRequest;->access$500(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    .line 367
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest$3$2;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lio/bidmachine/AdRequest$3$2;->this$1:Lio/bidmachine/AdRequest$3;

    iget-object v0, v0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    invoke-static {v0, p1}, Lio/bidmachine/AdRequest;->access$400(Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 367
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest$3$2;->onSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V

    return-void
.end method
