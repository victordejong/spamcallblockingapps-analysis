.class final Lcom/bumptech/glide/load/engine/y/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/o/l/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/y/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final b:Ljava/security/MessageDigest;

.field private final c:Lcom/bumptech/glide/o/l/c;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/o/l/c;->a()Lcom/bumptech/glide/o/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/y/j$b;->c:Lcom/bumptech/glide/o/l/c;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/y/j$b;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public j()Lcom/bumptech/glide/o/l/c;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/y/j$b;->c:Lcom/bumptech/glide/o/l/c;

    return-object v0
.end method
