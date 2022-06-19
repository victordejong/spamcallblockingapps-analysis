.class final Lio/bidmachine/core/VisibilityTracker$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/core/VisibilityTracker$a;->start()V
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

    .line 59
    iput-object p1, p0, Lio/bidmachine/core/VisibilityTracker$a$1;->this$0:Lio/bidmachine/core/VisibilityTracker$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a$1;->this$0:Lio/bidmachine/core/VisibilityTracker$a;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker$a;->access$000(Lio/bidmachine/core/VisibilityTracker$a;)V

    const/4 v0, 0x1

    return v0
.end method
