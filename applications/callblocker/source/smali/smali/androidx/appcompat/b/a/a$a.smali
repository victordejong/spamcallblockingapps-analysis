.class Landroidx/appcompat/b/a/a$a;
.super Landroidx/appcompat/b/a/a$f;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Animatable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/a$f;-><init>(Landroidx/appcompat/b/a/a$1;)V

    .line 371
    iput-object p1, p0, Landroidx/appcompat/b/a/a$a;->a:Landroid/graphics/drawable/Animatable;

    .line 372
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroidx/appcompat/b/a/a$a;->a:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 377
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroidx/appcompat/b/a/a$a;->a:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 382
    return-void
.end method
