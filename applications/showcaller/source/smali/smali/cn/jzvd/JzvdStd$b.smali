.class public Lcn/jzvd/JzvdStd$b;
.super Ljava/util/TimerTask;
.source "JzvdStd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jzvd/JzvdStd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcn/jzvd/JzvdStd;


# direct methods
.method public constructor <init>(Lcn/jzvd/JzvdStd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/jzvd/JzvdStd$b;->d:Lcn/jzvd/JzvdStd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/jzvd/JzvdStd$b;->d:Lcn/jzvd/JzvdStd;

    invoke-virtual {v0}, Lcn/jzvd/JzvdStd;->h0()V

    return-void
.end method
