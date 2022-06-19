.class public Lzx$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/mediarouter/app/OverlayListView$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzx;->d(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldz$i;

.field public final synthetic b:Lzx;


# direct methods
.method public constructor <init>(Lzx;Ldz$i;)V
    .locals 0

    iput-object p1, p0, Lzx$a;->b:Lzx;

    iput-object p2, p0, Lzx$a;->a:Ldz$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lzx$a;->b:Lzx;

    iget-object v0, v0, Lzx;->I:Ljava/util/Set;

    iget-object v1, p0, Lzx$a;->a:Ldz$i;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzx$a;->b:Lzx;

    iget-object v0, v0, Lzx;->E:Lzx$r;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
