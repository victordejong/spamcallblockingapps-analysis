.class public final synthetic Lcn/jzvd/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcn/jzvd/JZMediaSystem;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcn/jzvd/JZMediaSystem;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jzvd/g;->d:Lcn/jzvd/JZMediaSystem;

    iput p2, p0, Lcn/jzvd/g;->e:I

    iput p3, p0, Lcn/jzvd/g;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/jzvd/g;->d:Lcn/jzvd/JZMediaSystem;

    iget v1, p0, Lcn/jzvd/g;->e:I

    iget v2, p0, Lcn/jzvd/g;->f:I

    invoke-virtual {v0, v1, v2}, Lcn/jzvd/JZMediaSystem;->d(II)V

    return-void
.end method
