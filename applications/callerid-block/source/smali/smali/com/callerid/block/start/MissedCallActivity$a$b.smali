.class Lcom/callerid/block/start/MissedCallActivity$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/MissedCallActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/MissedCallActivity$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/MissedCallActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$a$b;->a:Lcom/callerid/block/start/MissedCallActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$a$b;->a:Lcom/callerid/block/start/MissedCallActivity$a;

    iget-object p1, p1, Lcom/callerid/block/start/MissedCallActivity$a;->b:Lcom/callerid/block/start/MissedCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/MissedCallActivity;->T(Lcom/callerid/block/start/MissedCallActivity;)V

    :cond_0
    return-void
.end method
