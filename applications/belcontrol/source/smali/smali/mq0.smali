.class public Lmq0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ld71$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ld71$b;->a:Ljava/lang/String;

    iget v0, p1, Ld71$b;->b:I

    iput v0, p0, Lmq0;->a:I

    iget-object v0, p1, Ld71$b;->c:Ljava/lang/String;

    iput-object v0, p0, Lmq0;->b:Ljava/lang/String;

    iget-object v0, p1, Ld71$b;->d:Ljava/lang/String;

    iget-object v0, p1, Ld71$b;->f:Ljava/lang/String;

    iput-object v0, p0, Lmq0;->c:Ljava/lang/String;

    iget p1, p1, Ld71$b;->g:I

    iput p1, p0, Lmq0;->d:I

    return-void
.end method

.method public constructor <init>(Lw61$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lw61$b;->a:Ljava/lang/String;

    iget v0, p1, Lw61$b;->b:I

    iput v0, p0, Lmq0;->a:I

    iget-object v0, p1, Lw61$b;->c:Ljava/lang/String;

    iput-object v0, p0, Lmq0;->b:Ljava/lang/String;

    iget-object v0, p1, Lw61$b;->d:Ljava/lang/String;

    iget-object v0, p1, Lw61$b;->f:Ljava/lang/String;

    iput-object v0, p0, Lmq0;->c:Ljava/lang/String;

    iget p1, p1, Lw61$b;->k:I

    iput p1, p0, Lmq0;->d:I

    return-void
.end method
