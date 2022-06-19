.class Lcom/callerid/block/fragment/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/util/x0/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/b;->Z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$e;->a:Lcom/callerid/block/fragment/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/b$e;->a:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->R1(Lcom/callerid/block/fragment/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b$e;->a:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->S1(Lcom/callerid/block/fragment/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b$e;->a:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->T1(Lcom/callerid/block/fragment/b;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b$e;->a:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->U1(Lcom/callerid/block/fragment/b;)V

    return-void
.end method
