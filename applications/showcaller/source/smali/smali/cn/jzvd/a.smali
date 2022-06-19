.class public final synthetic Lcn/jzvd/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcn/jzvd/JZMediaSystem;


# direct methods
.method public synthetic constructor <init>(Lcn/jzvd/JZMediaSystem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jzvd/a;->d:Lcn/jzvd/JZMediaSystem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/jzvd/a;->d:Lcn/jzvd/JZMediaSystem;

    invoke-virtual {v0}, Lcn/jzvd/JZMediaSystem;->f()V

    return-void
.end method
