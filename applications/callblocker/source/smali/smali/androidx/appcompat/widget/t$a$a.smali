.class Landroidx/appcompat/widget/t$a$a;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/t$a;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/appcompat/widget/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/t$a;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/appcompat/widget/t;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Landroidx/appcompat/widget/t$a$a;->a:Landroidx/appcompat/widget/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Landroidx/appcompat/widget/t$a$a;->b:Ljava/lang/ref/WeakReference;

    .line 361
    iput-object p3, p0, Landroidx/appcompat/widget/t$a$a;->c:Landroid/graphics/Typeface;

    .line 362
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Landroidx/appcompat/widget/t$a$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/t;

    .line 367
    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/t$a$a;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
