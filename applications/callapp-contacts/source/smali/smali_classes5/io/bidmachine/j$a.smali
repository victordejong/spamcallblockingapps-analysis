.class final Lio/bidmachine/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final referenceHolder:Lio/bidmachine/j$a;

.field private final trackingMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/j$a;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/j$a;->trackingMap:Ljava/util/EnumMap;

    .line 25
    iput-object p1, p0, Lio/bidmachine/j$a;->referenceHolder:Lio/bidmachine/j$a;

    return-void
.end method


# virtual methods
.method public final getCount(Lio/bidmachine/TrackEventType;)I
    .locals 1

    .line 40
    iget-object v0, p0, Lio/bidmachine/j$a;->trackingMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/j$a;->trackingMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final track(Lio/bidmachine/TrackEventType;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lio/bidmachine/j$a;->referenceHolder:Lio/bidmachine/j$a;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Lio/bidmachine/j$a;->track(Lio/bidmachine/TrackEventType;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lio/bidmachine/j$a;->trackingMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lio/bidmachine/j$a;->trackingMap:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lio/bidmachine/j$a;->trackingMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
