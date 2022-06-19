.class public final Lcom/flurry/sdk/jn$b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jn$b;->b(ILcom/flurry/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/flurry/sdk/a;

.field public final synthetic c:Lcom/flurry/sdk/jn$b;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jn$b;ILcom/flurry/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jn$b$1;->c:Lcom/flurry/sdk/jn$b;

    iput p2, p0, Lcom/flurry/sdk/jn$b$1;->a:I

    iput-object p3, p0, Lcom/flurry/sdk/jn$b$1;->b:Lcom/flurry/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/jn$b$1;->c:Lcom/flurry/sdk/jn$b;

    iget v1, p0, Lcom/flurry/sdk/jn$b$1;->a:I

    iget-object v2, p0, Lcom/flurry/sdk/jn$b$1;->b:Lcom/flurry/sdk/a;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/jn$b;->a(ILcom/flurry/sdk/a;)V

    return-void
.end method
