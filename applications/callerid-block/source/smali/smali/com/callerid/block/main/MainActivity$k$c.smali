.class Lcom/callerid/block/main/MainActivity$k$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity$k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/main/MainActivity$k;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity$k;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$k$c;->a:Lcom/callerid/block/main/MainActivity$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$c;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->Z(Lcom/callerid/block/main/MainActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$c;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->m0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
