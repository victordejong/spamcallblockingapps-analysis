.class public final synthetic Llw0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwe;


# instance fields
.field public final synthetic a:Lrw0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lrw0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llw0;->a:Lrw0;

    iput-object p2, p0, Llw0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Llw0;->a:Lrw0;

    iget-object v1, p0, Llw0;->b:Landroid/view/View;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lrw0;->q(Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method
