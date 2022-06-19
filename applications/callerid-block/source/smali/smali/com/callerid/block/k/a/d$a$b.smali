.class Lcom/callerid/block/k/a/d$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/k/a/d$a;->d(Le/e/a/a;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/k/a/d$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/k/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/k/a/d$a$b;->b:Lcom/callerid/block/k/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/callerid/block/k/a/d$a$b;->b:Lcom/callerid/block/k/a/d$a;

    iget-object v1, v1, Lcom/callerid/block/k/a/d$a;->a:Lcom/callerid/block/k/a/d;

    invoke-static {v1}, Lcom/callerid/block/k/a/d;->a(Lcom/callerid/block/k/a/d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
