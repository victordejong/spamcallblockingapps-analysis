.class public final synthetic Lsu0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Luu0;

.field public final synthetic b:Lst0;

.field public final synthetic c:Llq0;


# direct methods
.method public synthetic constructor <init>(Luu0;Lst0;Llq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsu0;->a:Luu0;

    iput-object p2, p0, Lsu0;->b:Lst0;

    iput-object p3, p0, Lsu0;->c:Llq0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lsu0;->a:Luu0;

    iget-object v1, p0, Lsu0;->b:Lst0;

    iget-object v2, p0, Lsu0;->c:Llq0;

    invoke-virtual {v0, v1, v2, p1}, Luu0;->e(Lst0;Llq0;Landroid/view/View;)V

    return-void
.end method
