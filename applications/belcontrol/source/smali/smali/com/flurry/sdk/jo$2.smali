.class public final Lcom/flurry/sdk/jo$2;
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

.field public final synthetic b:Lcom/flurry/sdk/jo;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jo;J)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jo$2;->b:Lcom/flurry/sdk/jo;

    iput-wide p2, p0, Lcom/flurry/sdk/jo$2;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    iget-wide v1, p0, Lcom/flurry/sdk/jo$2;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/is;->a(J)V

    return-void
.end method
