.class Landroidx/appcompat/b/a/a$c;
.super Landroidx/appcompat/b/a/a$f;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/k/a/a/c;


# direct methods
.method constructor <init>(Landroidx/k/a/a/c;)V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/a$f;-><init>(Landroidx/appcompat/b/a/a$1;)V

    .line 434
    iput-object p1, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/k/a/a/c;

    .line 435
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/k/a/a/c;

    invoke-virtual {v0}, Landroidx/k/a/a/c;->start()V

    .line 440
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/k/a/a/c;

    invoke-virtual {v0}, Landroidx/k/a/a/c;->stop()V

    .line 445
    return-void
.end method
