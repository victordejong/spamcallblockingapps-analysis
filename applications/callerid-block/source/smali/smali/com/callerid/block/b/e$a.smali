.class public Lcom/callerid/block/b/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/callerid/block/b/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f090423

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/b/e$a;->a:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/e$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/e$a;->a:Landroid/widget/TextView;

    return-object p0
.end method
