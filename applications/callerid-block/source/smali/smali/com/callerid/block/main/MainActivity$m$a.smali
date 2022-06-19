.class Lcom/callerid/block/main/MainActivity$m$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity$m;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/main/MainActivity$m;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity$m;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$m$a;->b:Lcom/callerid/block/main/MainActivity$m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$m$a;->b:Lcom/callerid/block/main/MainActivity$m;

    iget-object v0, v0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->A0(Lcom/callerid/block/main/MainActivity;)V

    return-void
.end method
