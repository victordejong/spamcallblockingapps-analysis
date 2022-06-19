.class Lcom/callerid/block/start/MissedCallActivity$4$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/MissedCallActivity$4;->d(Lcom/rey/material/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callerid/block/start/MissedCallActivity$4;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/MissedCallActivity$4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$4$a;->b:Lcom/callerid/block/start/MissedCallActivity$4;

    iput-object p2, p0, Lcom/callerid/block/start/MissedCallActivity$4$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$4$a;->a:Ljava/lang/String;

    new-instance v0, Lcom/callerid/block/start/MissedCallActivity$4$a$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/MissedCallActivity$4$a$a;-><init>(Lcom/callerid/block/start/MissedCallActivity$4$a;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/c/b;->c(Ljava/lang/String;Lcom/callerid/block/h/a/a;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/callerid/block/bean/EZBlackList;

    invoke-direct {p1}, Lcom/callerid/block/bean/EZBlackList;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZBlackList;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity$4$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/start/MissedCallActivity$4$a$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/MissedCallActivity$4$a$b;-><init>(Lcom/callerid/block/start/MissedCallActivity$4$a;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/c/b;->a(Lcom/callerid/block/bean/EZBlackList;Lcom/callerid/block/h/a/a;)V

    :goto_0
    return-void
.end method
