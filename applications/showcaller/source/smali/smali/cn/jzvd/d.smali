.class public final synthetic Lcn/jzvd/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcn/jzvd/JZMediaSystem;

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcn/jzvd/JZMediaSystem;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jzvd/d;->d:Lcn/jzvd/JZMediaSystem;

    iput p2, p0, Lcn/jzvd/d;->e:F

    iput p3, p0, Lcn/jzvd/d;->f:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/jzvd/d;->d:Lcn/jzvd/JZMediaSystem;

    iget v1, p0, Lcn/jzvd/d;->e:F

    iget v2, p0, Lcn/jzvd/d;->f:F

    invoke-virtual {v0, v1, v2}, Lcn/jzvd/JZMediaSystem;->k(FF)V

    return-void
.end method
