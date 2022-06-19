.class final Landroidx/fragment/app/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/b;->a(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/z$b;Landroidx/fragment/app/z$b;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/v;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:Landroidx/fragment/app/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/b;Landroidx/fragment/app/v;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 493
    iput-object p1, p0, Landroidx/fragment/app/b$8;->d:Landroidx/fragment/app/b;

    iput-object p2, p0, Landroidx/fragment/app/b$8;->a:Landroidx/fragment/app/v;

    iput-object p3, p0, Landroidx/fragment/app/b$8;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/b$8;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 496
    iget-object v0, p0, Landroidx/fragment/app/b$8;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/b$8;->c:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroidx/fragment/app/v;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
