.class Lcom/callerid/block/main/MainActivity$k$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity$k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/main/MainActivity$k;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity$k;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$k$e;->a:Lcom/callerid/block/main/MainActivity$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x240c8400

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "week_no_incoming_call"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$e;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callerid/block/util/n0;->w0(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
