.class public final Lcom/bumptech/glide/load/resource/b/c;
.super Lcom/bumptech/glide/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/l<",
        "Lcom/bumptech/glide/load/resource/b/c;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/bumptech/glide/l;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/bumptech/glide/load/resource/b/c;
    .locals 2

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/resource/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/b/c;-><init>()V

    .line 1087
    new-instance v1, Lcom/bumptech/glide/e/b/a$a;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/e/b/a$a;-><init>(I)V

    .line 1106
    invoke-virtual {v1}, Lcom/bumptech/glide/e/b/a$a;->a()Lcom/bumptech/glide/e/b/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/b/c;->a(Lcom/bumptech/glide/e/b/a;)Lcom/bumptech/glide/load/resource/b/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e/b/a;)Lcom/bumptech/glide/load/resource/b/c;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/b/c;->a(Lcom/bumptech/glide/e/b/e;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/b/c;

    return-object p1
.end method
