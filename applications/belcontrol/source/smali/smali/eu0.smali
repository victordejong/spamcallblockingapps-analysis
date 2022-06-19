.class public final synthetic Leu0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Llu0;

.field public final synthetic b:Lst0;


# direct methods
.method public synthetic constructor <init>(Llu0;Lst0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu0;->a:Llu0;

    iput-object p2, p0, Leu0;->b:Lst0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Leu0;->a:Llu0;

    iget-object v1, p0, Leu0;->b:Lst0;

    invoke-virtual {v0, v1, p1}, Llu0;->d(Lst0;Landroid/view/View;)V

    return-void
.end method
