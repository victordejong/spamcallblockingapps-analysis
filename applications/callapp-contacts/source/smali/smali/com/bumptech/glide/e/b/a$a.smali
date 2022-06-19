.class public final Lcom/bumptech/glide/e/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    .line 50
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/b/a$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/bumptech/glide/e/b/a$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/e/b/a;
    .locals 3

    .line 76
    new-instance v0, Lcom/bumptech/glide/e/b/a;

    iget v1, p0, Lcom/bumptech/glide/e/b/a$a;->b:I

    iget-boolean v2, p0, Lcom/bumptech/glide/e/b/a$a;->a:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/e/b/a;-><init>(IZ)V

    return-object v0
.end method
