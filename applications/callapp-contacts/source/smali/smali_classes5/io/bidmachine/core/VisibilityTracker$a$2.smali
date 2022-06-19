.class final Lio/bidmachine/core/VisibilityTracker$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/VisibilityTracker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/core/VisibilityTracker$a;


# direct methods
.method constructor <init>(Lio/bidmachine/core/VisibilityTracker$a;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lio/bidmachine/core/VisibilityTracker$a$2;->this$0:Lio/bidmachine/core/VisibilityTracker$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 263
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a$2;->this$0:Lio/bidmachine/core/VisibilityTracker$a;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker$a;->access$200(Lio/bidmachine/core/VisibilityTracker$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a$2;->this$0:Lio/bidmachine/core/VisibilityTracker$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/core/VisibilityTracker$a;->access$302(Lio/bidmachine/core/VisibilityTracker$a;Z)Z

    .line 265
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a$2;->this$0:Lio/bidmachine/core/VisibilityTracker$a;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker$a;->access$000(Lio/bidmachine/core/VisibilityTracker$a;)V

    :cond_0
    return-void
.end method
