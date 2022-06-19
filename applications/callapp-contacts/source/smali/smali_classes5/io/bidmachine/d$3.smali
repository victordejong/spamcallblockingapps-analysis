.class final Lio/bidmachine/d$3;
.super Lio/bidmachine/TrackingObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/d;


# direct methods
.method constructor <init>(Lio/bidmachine/d;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lio/bidmachine/d$3;->this$0:Lio/bidmachine/d;

    invoke-direct {p0}, Lio/bidmachine/TrackingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTrackingKey()Ljava/lang/Object;
    .locals 1

    .line 127
    const-class v0, Lio/bidmachine/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
