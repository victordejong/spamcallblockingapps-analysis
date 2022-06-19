.class final Landroidx/core/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/c/b;->a(Landroid/content/Context;Landroidx/core/c/a;Landroidx/core/content/res/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/c/c$a<",
        "Landroidx/core/c/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/content/res/f$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/content/res/f$a;Landroid/os/Handler;)V
    .locals 0

    .line 273
    iput-object p1, p0, Landroidx/core/c/b$2;->a:Landroidx/core/content/res/f$a;

    iput-object p2, p0, Landroidx/core/c/b$2;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 273
    check-cast p1, Landroidx/core/c/b$c;

    if-nez p1, :cond_0

    .line 1277
    iget-object p1, p0, Landroidx/core/c/b$2;->a:Landroidx/core/content/res/f$a;

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/core/c/b$2;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroidx/core/content/res/f$a;->a(ILandroid/os/Handler;)V

    return-void

    .line 1279
    :cond_0
    iget v0, p1, Landroidx/core/c/b$c;->b:I

    if-nez v0, :cond_1

    .line 1280
    iget-object v0, p0, Landroidx/core/c/b$2;->a:Landroidx/core/content/res/f$a;

    iget-object p1, p1, Landroidx/core/c/b$c;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroidx/core/c/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroidx/core/content/res/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    return-void

    .line 1282
    :cond_1
    iget-object v0, p0, Landroidx/core/c/b$2;->a:Landroidx/core/content/res/f$a;

    iget p1, p1, Landroidx/core/c/b$c;->b:I

    iget-object v1, p0, Landroidx/core/c/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroidx/core/content/res/f$a;->a(ILandroid/os/Handler;)V

    return-void
.end method
