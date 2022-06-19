.class final Lio/bidmachine/AdRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 103
    iput-object p1, p0, Lio/bidmachine/AdRequest$1;->this$0:Lio/bidmachine/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lio/bidmachine/AdRequest$1;->this$0:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$000(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lio/bidmachine/AdRequest$1;->this$0:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->cancel()V

    .line 108
    iget-object v0, p0, Lio/bidmachine/AdRequest$1;->this$0:Lio/bidmachine/AdRequest;

    sget-object v1, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->access$100(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V

    :cond_0
    return-void
.end method
