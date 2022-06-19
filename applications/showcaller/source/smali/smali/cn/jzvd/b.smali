.class public final synthetic Lcn/jzvd/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcn/jzvd/JZMediaSystem;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcn/jzvd/JZMediaSystem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jzvd/b;->d:Lcn/jzvd/JZMediaSystem;

    iput p2, p0, Lcn/jzvd/b;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/jzvd/b;->d:Lcn/jzvd/JZMediaSystem;

    iget v1, p0, Lcn/jzvd/b;->e:I

    invoke-virtual {v0, v1}, Lcn/jzvd/JZMediaSystem;->a(I)V

    return-void
.end method
