.class public Ld2/f3$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f3;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f3;


# direct methods
.method public constructor <init>(Ld2/f3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f3$h;->a:Ld2/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/f3$h;->a:Ld2/f3;

    invoke-virtual {v0, p1}, Ld2/f3;->c(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Ld2/f3$h;->a:Ld2/f3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "font_style"

    .line 4
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Ld2/f3;->f:I

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    :goto_0
    return-void
.end method
