.class final Lcom/callerid/block/util/o0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/o0;->c(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/o0$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/util/o0$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/util/o0$a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/callerid/block/util/o0$a;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/callerid/block/util/o0;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
