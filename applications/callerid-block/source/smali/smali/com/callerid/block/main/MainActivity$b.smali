.class Lcom/callerid/block/main/MainActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/main/MainActivity;
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

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$b;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900bb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$b;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->J0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/e/a;->dismiss()V

    :goto_0
    return-void
.end method
