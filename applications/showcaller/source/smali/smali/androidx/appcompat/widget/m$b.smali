.class Landroidx/appcompat/widget/m$b;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/m;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/graphics/Typeface;

.field final synthetic f:I

.field final synthetic g:Landroidx/appcompat/widget/m;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/m;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/m$b;->g:Landroidx/appcompat/widget/m;

    iput-object p2, p0, Landroidx/appcompat/widget/m$b;->d:Landroid/widget/TextView;

    iput-object p3, p0, Landroidx/appcompat/widget/m$b;->e:Landroid/graphics/Typeface;

    iput p4, p0, Landroidx/appcompat/widget/m$b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m$b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/m$b;->e:Landroid/graphics/Typeface;

    iget v2, p0, Landroidx/appcompat/widget/m$b;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
