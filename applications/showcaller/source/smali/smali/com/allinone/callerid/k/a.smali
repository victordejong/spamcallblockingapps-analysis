.class public final synthetic Lcom/allinone/callerid/k/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/allinone/callerid/k/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/allinone/callerid/k/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/k/a;->d:Lcom/allinone/callerid/k/c$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/allinone/callerid/k/a;->d:Lcom/allinone/callerid/k/c$a;

    invoke-virtual {v0}, Lcom/allinone/callerid/k/c$a;->o()V

    return-void
.end method
