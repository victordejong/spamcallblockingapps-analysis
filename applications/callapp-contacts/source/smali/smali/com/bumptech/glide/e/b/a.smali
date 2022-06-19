.class public final Lcom/bumptech/glide/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/b/e<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private c:Lcom/bumptech/glide/e/b/b;


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/bumptech/glide/e/b/a;->a:I

    .line 25
    iput-boolean p2, p0, Lcom/bumptech/glide/e/b/a;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lcom/bumptech/glide/e/b/d<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    if-ne p1, v0, :cond_0

    .line 31
    invoke-static {}, Lcom/bumptech/glide/e/b/c;->b()Lcom/bumptech/glide/e/b/d;

    move-result-object p1

    return-object p1

    .line 1036
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/e/b/a;->c:Lcom/bumptech/glide/e/b/b;

    if-nez p1, :cond_1

    .line 1037
    new-instance p1, Lcom/bumptech/glide/e/b/b;

    iget v0, p0, Lcom/bumptech/glide/e/b/a;->a:I

    iget-boolean v1, p0, Lcom/bumptech/glide/e/b/a;->b:Z

    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/e/b/b;-><init>(IZ)V

    iput-object p1, p0, Lcom/bumptech/glide/e/b/a;->c:Lcom/bumptech/glide/e/b/b;

    .line 1039
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/e/b/a;->c:Lcom/bumptech/glide/e/b/b;

    return-object p1
.end method
