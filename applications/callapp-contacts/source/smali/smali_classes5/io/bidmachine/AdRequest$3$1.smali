.class final Lio/bidmachine/AdRequest$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$CancelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/AdRequest$3;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest$3;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lio/bidmachine/AdRequest$3$1;->this$1:Lio/bidmachine/AdRequest$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 1

    .line 381
    iget-object v0, p0, Lio/bidmachine/AdRequest$3$1;->this$1:Lio/bidmachine/AdRequest$3;

    iget-object v0, v0, Lio/bidmachine/AdRequest$3;->this$0:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$300(Lio/bidmachine/AdRequest;)V

    return-void
.end method
