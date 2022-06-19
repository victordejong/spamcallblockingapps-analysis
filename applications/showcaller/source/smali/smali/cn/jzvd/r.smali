.class public final synthetic Lcn/jzvd/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcn/jzvd/JzvdStd;


# direct methods
.method public synthetic constructor <init>(Lcn/jzvd/JzvdStd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jzvd/r;->d:Lcn/jzvd/JzvdStd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/jzvd/r;->d:Lcn/jzvd/JzvdStd;

    invoke-virtual {v0}, Lcn/jzvd/JzvdStd;->j0()V

    return-void
.end method
