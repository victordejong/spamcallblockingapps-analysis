.class public Lcom/callerid/block/a/c;
.super Ljava/util/TimerTask;
.source ""


# instance fields
.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p1, p0, Lcom/callerid/block/a/c;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
