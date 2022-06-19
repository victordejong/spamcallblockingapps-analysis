.class public Lcom/allinone/callerid/a/c;
.super Ljava/util/TimerTask;
.source "JobTimerTask.java"


# instance fields
.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput p1, p0, Lcom/allinone/callerid/a/c;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
