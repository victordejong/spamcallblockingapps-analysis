.class Lcom/allinone/callerid/dialog/k$b;
.super Ljava/lang/Object;
.source "DialogToRate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/k;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/dialog/k;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/k$b;->d:Lcom/allinone/callerid/dialog/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->X1(J)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->l1(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->X1(J)V

    :goto_0
    return-void
.end method
