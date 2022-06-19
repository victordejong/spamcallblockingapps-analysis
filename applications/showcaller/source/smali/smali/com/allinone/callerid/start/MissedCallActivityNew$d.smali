.class Lcom/allinone/callerid/start/MissedCallActivityNew$d;
.super Ljava/lang/Object;
.source "MissedCallActivityNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/MissedCallActivityNew;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/MissedCallActivityNew;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$d;->d:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$d;->d:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->Z(Lcom/allinone/callerid/start/MissedCallActivityNew;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/util/a1;->e0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->f0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->K1(I)V

    :cond_0
    return-void
.end method
