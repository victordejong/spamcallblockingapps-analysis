.class Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$d;
.super Ljava/lang/Object;
.source "MissedCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity$d;->d:Lcom/allinone/callerid/mvc/controller/guidep/MissedCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->J1(J)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->K1(I)V

    return-void
.end method
