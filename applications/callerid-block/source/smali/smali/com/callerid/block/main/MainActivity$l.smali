.class Lcom/callerid/block/main/MainActivity$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$l;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$l;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callerid/block/main/MainActivity;->v0(Lcom/callerid/block/main/MainActivity;Landroid/content/Context;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/callerid/block/util/t0;->c:Z

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$l;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->w0(Lcom/callerid/block/main/MainActivity;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "overlay_per_dialog_cancel"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    return-void
.end method
