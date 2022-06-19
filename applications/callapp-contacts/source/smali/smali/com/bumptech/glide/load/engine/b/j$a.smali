.class final Lcom/bumptech/glide/load/engine/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lcom/bumptech/glide/g/a/b;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    new-instance v0, Lcom/bumptech/glide/g/a/b$a;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/b$a;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/j$a;->b:Lcom/bumptech/glide/g/a/b;

    .line 68
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/j$a;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final m_()Lcom/bumptech/glide/g/a/b;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/j$a;->b:Lcom/bumptech/glide/g/a/b;

    return-object v0
.end method
