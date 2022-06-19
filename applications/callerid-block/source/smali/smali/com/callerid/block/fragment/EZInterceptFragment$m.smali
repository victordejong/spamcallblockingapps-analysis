.class Lcom/callerid/block/fragment/EZInterceptFragment$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->t2(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$m;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment$m;->b:Landroid/app/Activity;

    invoke-static {p2}, Lcom/callerid/block/util/x0/a;->e(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
