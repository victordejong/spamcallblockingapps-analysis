.class Lcom/allinone/callerid/h/c$d;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->N0(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$d;->a:Lcom/allinone/callerid/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/c$d;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0, p1}, Lcom/allinone/callerid/h/c;->j0(Lcom/allinone/callerid/h/c;Z)Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/h/c$d;->a:Lcom/allinone/callerid/h/c;

    invoke-static {p1, p2}, Lcom/allinone/callerid/h/c;->l0(Lcom/allinone/callerid/h/c;I)I

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/h/c$d;->a:Lcom/allinone/callerid/h/c;

    invoke-static {p1, p3}, Lcom/allinone/callerid/h/c;->o0(Lcom/allinone/callerid/h/c;I)I

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/h/c$d;->a:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->c0(Lcom/allinone/callerid/h/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "searchWikiData--block_count:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " declined_count:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wiki"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/h/c$d;->a:Lcom/allinone/callerid/h/c;

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/h/c;->b0(Lcom/allinone/callerid/h/c;II)V

    :cond_1
    return-void
.end method
