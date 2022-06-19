.class final Lcom/bumptech/glide/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/e/h;)Lcom/bumptech/glide/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/e/h;

.field final synthetic b:Lcom/bumptech/glide/d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/d;Lcom/bumptech/glide/e/h;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/bumptech/glide/d$2;->b:Lcom/bumptech/glide/d;

    iput-object p2, p0, Lcom/bumptech/glide/d$2;->a:Lcom/bumptech/glide/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/e/h;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/bumptech/glide/d$2;->a:Lcom/bumptech/glide/e/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    return-object v0
.end method
