.class public Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field private final b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->a:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;)Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
