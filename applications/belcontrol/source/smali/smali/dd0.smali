.class public final synthetic Ldd0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lld0;

.field public final synthetic b:Lta0;

.field public final synthetic c:Lmd0;


# direct methods
.method public synthetic constructor <init>(Lld0;Lta0;Lmd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd0;->a:Lld0;

    iput-object p2, p0, Ldd0;->b:Lta0;

    iput-object p3, p0, Ldd0;->c:Lmd0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ldd0;->a:Lld0;

    iget-object v1, p0, Ldd0;->b:Lta0;

    iget-object v2, p0, Ldd0;->c:Lmd0;

    invoke-virtual {v0, v1, v2, p1}, Lld0;->k(Lta0;Lmd0;Landroid/view/View;)V

    return-void
.end method
