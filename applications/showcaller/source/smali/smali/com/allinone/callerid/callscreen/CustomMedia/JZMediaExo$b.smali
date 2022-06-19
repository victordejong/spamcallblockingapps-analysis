.class Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;
.super Ljava/lang/Object;
.source "JZMediaExo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;-><init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)V

    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iget-object v0, v0, Lcn/jzvd/u;->jzvd:Lcn/jzvd/Jzvd;

    invoke-virtual {v0, p1}, Lcn/jzvd/Jzvd;->setBufferProgress(I)V

    return-void
.end method


# virtual methods
.method public synthetic b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->a(I)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->access$000(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)Lcom/google/android/exoplayer2/x0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->access$000(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)Lcom/google/android/exoplayer2/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/t;->U()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iget-object v1, v1, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/allinone/callerid/callscreen/CustomMedia/g;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/callscreen/CustomMedia/g;-><init>(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iget-object v1, v0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->access$100(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b;->d:Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    iget-object v1, v0, Lcn/jzvd/u;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;->access$100(Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
