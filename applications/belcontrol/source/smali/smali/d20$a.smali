.class public Ld20$a;
.super Landroidx/transition/Transition$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld20;->v(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ld20;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p2, p0, Ld20$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroidx/transition/Transition$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    iget-object p1, p0, Ld20$a;->a:Landroid/graphics/Rect;

    return-object p1
.end method
