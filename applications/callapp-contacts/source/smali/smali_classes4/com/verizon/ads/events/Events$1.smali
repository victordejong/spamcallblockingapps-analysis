.class final Lcom/verizon/ads/events/Events$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/events/Events;->subscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V
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

    .line 121
    iput-object p1, p0, Lcom/verizon/ads/events/Events$1;->a:Lcom/verizon/ads/events/EventReceiver;

    iput-object p2, p0, Lcom/verizon/ads/events/Events$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/verizon/ads/events/Events$1;->c:Lcom/verizon/ads/events/EventMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/verizon/ads/events/Events$1;->a:Lcom/verizon/ads/events/EventReceiver;

    iget-object v1, p0, Lcom/verizon/ads/events/Events$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/verizon/ads/events/Events$1;->c:Lcom/verizon/ads/events/EventMatcher;

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/events/Events;->a(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;Lcom/verizon/ads/events/EventMatcher;)V

    return-void
.end method
