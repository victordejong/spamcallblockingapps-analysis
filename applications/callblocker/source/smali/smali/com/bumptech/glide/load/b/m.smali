.class public Lcom/bumptech/glide/load/b/m;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h/f",
            "<",
            "Lcom/bumptech/glide/load/b/m$a",
            "<TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/m;-><init>(J)V

    .line 28
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/b/m$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/b/m$1;-><init>(Lcom/bumptech/glide/load/b/m;J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/m;->a:Lcom/bumptech/glide/h/f;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/m$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/m$a;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/bumptech/glide/load/b/m;->a:Lcom/bumptech/glide/h/f;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/m$a;->a()V

    .line 52
    return-object v1
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/m$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/m$a;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/bumptech/glide/load/b/m;->a:Lcom/bumptech/glide/h/f;

    invoke-virtual {v1, v0, p4}, Lcom/bumptech/glide/h/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
