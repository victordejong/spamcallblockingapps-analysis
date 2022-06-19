.class public final Lcom/flurry/sdk/jo$4;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jo;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:Lcom/flurry/sdk/jo;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jo;JJJI)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jo$4;->e:Lcom/flurry/sdk/jo;

    iput-wide p2, p0, Lcom/flurry/sdk/jo$4;->a:J

    iput-wide p4, p0, Lcom/flurry/sdk/jo$4;->b:J

    iput-wide p6, p0, Lcom/flurry/sdk/jo$4;->c:J

    iput p8, p0, Lcom/flurry/sdk/jo$4;->d:I

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/flurry/sdk/jo$4;->e:Lcom/flurry/sdk/jo;

    iget-wide v1, p0, Lcom/flurry/sdk/jo$4;->a:J

    iget-wide v3, p0, Lcom/flurry/sdk/jo$4;->b:J

    iget-wide v5, p0, Lcom/flurry/sdk/jo$4;->c:J

    iget v7, p0, Lcom/flurry/sdk/jo$4;->d:I

    invoke-virtual/range {v0 .. v7}, Lcom/flurry/sdk/jo;->a(JJJI)Lcom/flurry/sdk/jl;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jo$4;->e:Lcom/flurry/sdk/jo;

    invoke-static {v1}, Lcom/flurry/sdk/jo;->f(Lcom/flurry/sdk/jo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/flurry/sdk/jo$4;->e:Lcom/flurry/sdk/jo;

    invoke-static {v1}, Lcom/flurry/sdk/jo;->f(Lcom/flurry/sdk/jo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/flurry/sdk/jo$4;->e:Lcom/flurry/sdk/jo;

    invoke-virtual {v0}, Lcom/flurry/sdk/jo;->a()V

    return-void
.end method
