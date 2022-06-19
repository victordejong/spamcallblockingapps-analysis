.class final Lio/bidmachine/core/VisibilityTracker$a$3;
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

    .line 270
    iput-object p1, p0, Lio/bidmachine/core/VisibilityTracker$a$3;->this$0:Lio/bidmachine/core/VisibilityTracker$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 273
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a$3;->this$0:Lio/bidmachine/core/VisibilityTracker$a;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker$a;->access$400(Lio/bidmachine/core/VisibilityTracker$a;)V

    return-void
.end method
