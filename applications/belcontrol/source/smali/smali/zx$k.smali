.class public Lzx$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzx;->c(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lzx;


# direct methods
.method public constructor <init>(Lzx;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lzx$k;->c:Lzx;

    iput-object p2, p0, Lzx$k;->a:Ljava/util/Map;

    iput-object p3, p0, Lzx$k;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lzx$k;->c:Lzx;

    iget-object v0, v0, Lzx;->D:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lzx$k;->c:Lzx;

    iget-object v1, p0, Lzx$k;->a:Ljava/util/Map;

    iget-object v2, p0, Lzx$k;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lzx;->d(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
