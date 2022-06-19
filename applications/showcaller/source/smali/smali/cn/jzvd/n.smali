.class public final synthetic Lcn/jzvd/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcn/jzvd/Jzvd$b;


# direct methods
.method public synthetic constructor <init>(Lcn/jzvd/Jzvd$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jzvd/n;->d:Lcn/jzvd/Jzvd$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/jzvd/n;->d:Lcn/jzvd/Jzvd$b;

    invoke-virtual {v0}, Lcn/jzvd/Jzvd$b;->b()V

    return-void
.end method
