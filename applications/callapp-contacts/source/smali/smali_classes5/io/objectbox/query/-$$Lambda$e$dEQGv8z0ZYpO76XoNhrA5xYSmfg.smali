.class public final synthetic Lio/objectbox/query/-$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/objectbox/query/e;

.field public final synthetic f$1:Lio/objectbox/c/a;


# direct methods
.method public synthetic constructor <init>(Lio/objectbox/query/e;Lio/objectbox/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/query/-$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg;->f$0:Lio/objectbox/query/e;

    iput-object p2, p0, Lio/objectbox/query/-$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg;->f$1:Lio/objectbox/c/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/objectbox/query/-$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg;->f$0:Lio/objectbox/query/e;

    iget-object v1, p0, Lio/objectbox/query/-$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg;->f$1:Lio/objectbox/c/a;

    invoke-static {v0, v1}, Lio/objectbox/query/e;->lambda$dEQGv8z0ZYpO76XoNhrA5xYSmfg(Lio/objectbox/query/e;Lio/objectbox/c/a;)V

    return-void
.end method
