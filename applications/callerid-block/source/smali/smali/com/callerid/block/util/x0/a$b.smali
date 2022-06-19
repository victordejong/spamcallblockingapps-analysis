.class final Lcom/callerid/block/util/x0/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/hjq/permissions/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/x0/a;->i(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/util/x0/a$g;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/callerid/block/util/x0/a$g;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/x0/a$b;->a:Lcom/callerid/block/util/x0/a$g;

    iput-object p2, p0, Lcom/callerid/block/util/x0/a$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/callerid/block/util/x0/a$b;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/hjq/permissions/d;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/callerid/block/util/x0/a$b;->a:Lcom/callerid/block/util/x0/a$g;

    invoke-interface {p1}, Lcom/callerid/block/util/x0/a$g;->a()V

    :cond_0
    return-void
.end method
