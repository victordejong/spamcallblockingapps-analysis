.class public Lio/bidmachine/core/VisibilityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;,
        Lio/bidmachine/core/VisibilityTracker$a;
    }
.end annotation


# static fields
.field private static final NO_TRACK:I = -0x1

.field private static final holders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/core/VisibilityTracker$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/bidmachine/core/VisibilityTracker;->holders:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 13
    sget-object v0, Lio/bidmachine/core/VisibilityTracker;->holders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static startTracking(Landroid/view/View;JFZLio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;)V
    .locals 9

    .line 284
    sget-object v0, Lio/bidmachine/core/VisibilityTracker;->holders:Ljava/util/ArrayList;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-static {p0}, Lio/bidmachine/core/VisibilityTracker;->stopTracking(Landroid/view/View;)V

    .line 286
    new-instance v8, Lio/bidmachine/core/VisibilityTracker$a;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/core/VisibilityTracker$a;-><init>(Landroid/view/View;JFZLio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;)V

    .line 291
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v8}, Lio/bidmachine/core/VisibilityTracker$a;->start()V

    .line 293
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static stopTracking(Landroid/view/View;)V
    .locals 4

    .line 297
    sget-object v0, Lio/bidmachine/core/VisibilityTracker;->holders:Ljava/util/ArrayList;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/core/VisibilityTracker$a;

    .line 299
    invoke-static {v2}, Lio/bidmachine/core/VisibilityTracker$a;->access$500(Lio/bidmachine/core/VisibilityTracker$a;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 300
    invoke-static {v2}, Lio/bidmachine/core/VisibilityTracker$a;->access$400(Lio/bidmachine/core/VisibilityTracker$a;)V

    .line 304
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
