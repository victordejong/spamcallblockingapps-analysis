.class public final synthetic Lpu0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lru0;

.field public final synthetic b:Lst0;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lru0;Lst0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpu0;->a:Lru0;

    iput-object p2, p0, Lpu0;->b:Lst0;

    iput-object p3, p0, Lpu0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lpu0;->a:Lru0;

    iget-object v1, p0, Lpu0;->b:Lst0;

    iget-object v2, p0, Lpu0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lru0;->e(Lst0;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
