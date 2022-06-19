.class final Lcom/verizon/ads/events/Events$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/events/Events;->unsubscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/events/EventReceiver;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/verizon/ads/events/EventMatcher;


# direct methods
.method constructor <init>(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/verizon/ads/events/Events$2;->a:Lcom/verizon/ads/events/EventReceiver;

    iput-object p2, p0, Lcom/verizon/ads/events/Events$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/verizon/ads/events/Events$2;->c:Lcom/verizon/ads/events/EventMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/verizon/ads/events/Events$2;->a:Lcom/verizon/ads/events/EventReceiver;

    iget-object v1, p0, Lcom/verizon/ads/events/Events$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/verizon/ads/events/Events$2;->c:Lcom/verizon/ads/events/EventMatcher;

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/events/Events;->b(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V

    return-void
.end method
