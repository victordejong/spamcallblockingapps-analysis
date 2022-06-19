.class final Lcom/callerid/block/f/a$b;
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


# instance fields
.field final synthetic b:Lcom/callerid/block/search/CallLogBean;


# direct methods
.method constructor <init>(Lcom/callerid/block/search/CallLogBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/f/a$b;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/callerid/block/f/a;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/f/a;->n(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lcom/callerid/block/f/a;->b()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/f/a$b;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/i0;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
