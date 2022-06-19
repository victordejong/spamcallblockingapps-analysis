.class public Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/XIncentivizedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XIncentiveEvent"
.end annotation


# static fields
.field public static final INCENTIVE_VIDEO_COMPLETE:Ljava/lang/String; = "IncentiveVideoComplete"


# instance fields
.field public final args:Ljava/lang/String;

.field public final eventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;->eventId:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;->args:Ljava/lang/String;

    return-void
.end method
