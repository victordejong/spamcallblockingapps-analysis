.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d$b;,
        Lcom/bumptech/glide/d$a;,
        Lcom/bumptech/glide/d$c;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/l<",
            "**>;>;"
        }
    .end annotation
.end field

.field final b:Lcom/bumptech/glide/f$a;

.field c:Lcom/bumptech/glide/load/engine/k;

.field d:Lcom/bumptech/glide/load/engine/a/e;

.field e:Lcom/bumptech/glide/load/engine/a/b;

.field public f:Lcom/bumptech/glide/load/engine/b/h;

.field g:Lcom/bumptech/glide/load/engine/c/a;

.field public h:Lcom/bumptech/glide/load/engine/c/a;

.field i:Lcom/bumptech/glide/load/engine/b/a$a;

.field j:Lcom/bumptech/glide/load/engine/b/i;

.field k:Lcom/bumptech/glide/manager/d;

.field public l:I

.field m:Lcom/bumptech/glide/c$a;

.field n:Lcom/bumptech/glide/manager/o$a;

.field o:Lcom/bumptech/glide/load/engine/c/a;

.field p:Z

.field q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/bumptech/glide/f$a;

    invoke-direct {v0}, Lcom/bumptech/glide/f$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    const/4 v0, 0x4

    .line 54
    iput v0, p0, Lcom/bumptech/glide/d;->l:I

    .line 55
    new-instance v0, Lcom/bumptech/glide/d$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d$1;-><init>(Lcom/bumptech/glide/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e/h;)Lcom/bumptech/glide/d;
    .locals 1

    .line 224
    new-instance v0, Lcom/bumptech/glide/d$2;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/d$2;-><init>(Lcom/bumptech/glide/d;Lcom/bumptech/glide/e/h;)V

    const-string p1, "Argument must not be null"

    .line 2023
    invoke-static {v0, p1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1249
    check-cast p1, Lcom/bumptech/glide/c$a;

    iput-object p1, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    return-object p0
.end method
