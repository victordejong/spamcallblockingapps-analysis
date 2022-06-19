.class final Landroidx/c/a/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Landroidx/c/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/a/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/a<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/c/a/a;Lcom/google/common/util/concurrent/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a/a<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/a<",
            "+TV;>;)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Landroidx/c/a/a$f;->a:Landroidx/c/a/a;

    .line 269
    iput-object p2, p0, Landroidx/c/a/a$f;->b:Lcom/google/common/util/concurrent/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 274
    iget-object v0, p0, Landroidx/c/a/a$f;->a:Landroidx/c/a/a;

    iget-object v0, v0, Landroidx/c/a/a;->c:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Landroidx/c/a/a$f;->b:Lcom/google/common/util/concurrent/a;

    invoke-static {v0}, Landroidx/c/a/a;->a(Lcom/google/common/util/concurrent/a;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    sget-object v1, Landroidx/c/a/a;->b:Landroidx/c/a/a$a;

    iget-object v2, p0, Landroidx/c/a/a$f;->a:Landroidx/c/a/a;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/c/a/a$a;->a(Landroidx/c/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/c/a/a$f;->a:Landroidx/c/a/a;

    invoke-static {v0}, Landroidx/c/a/a;->a(Landroidx/c/a/a;)V

    :cond_1
    return-void
.end method
