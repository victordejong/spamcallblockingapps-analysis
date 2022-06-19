.class Landroidx/appcompat/app/f$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Landroidx/appcompat/app/f$2;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Landroidx/appcompat/app/f$2;->a:Landroidx/appcompat/app/f;

    iget v0, v0, Landroidx/appcompat/app/f;->s:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroidx/appcompat/app/f$2;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/f;->h(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f$2;->a:Landroidx/appcompat/app/f;

    iget v0, v0, Landroidx/appcompat/app/f;->s:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Landroidx/appcompat/app/f$2;->a:Landroidx/appcompat/app/f;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/f;->h(I)V

    .line 265
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f$2;->a:Landroidx/appcompat/app/f;

    iput-boolean v2, v0, Landroidx/appcompat/app/f;->r:Z

    .line 266
    iget-object v0, p0, Landroidx/appcompat/app/f$2;->a:Landroidx/appcompat/app/f;

    iput v2, v0, Landroidx/appcompat/app/f;->s:I

    .line 267
    return-void
.end method
