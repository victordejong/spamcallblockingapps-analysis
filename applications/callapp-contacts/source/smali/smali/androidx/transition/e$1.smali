.class final Landroidx/transition/e$1;
.super Landroidx/transition/Transition$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->a(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/transition/e;


# direct methods
.method constructor <init>(Landroidx/transition/e;Landroid/graphics/Rect;)V
    .locals 0

    .line 93
    iput-object p1, p0, Landroidx/transition/e$1;->b:Landroidx/transition/e;

    iput-object p2, p0, Landroidx/transition/e$1;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroidx/transition/Transition$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/transition/e$1;->a:Landroid/graphics/Rect;

    return-object v0
.end method
