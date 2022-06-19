.class final Lcom/callerid/block/f/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/a;->p(Landroid/view/View;Lcom/callerid/block/search/CallLogBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/callerid/block/f/a;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/f/a;->n(Landroid/content/Context;)V

    return-void
.end method
