.class public final Lcom/flurry/sdk/jo$6;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jo;->a(J)V
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

    iput-object p1, p0, Lcom/flurry/sdk/jo$6;->b:Lcom/flurry/sdk/jo;

    iput-wide p2, p0, Lcom/flurry/sdk/jo$6;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/jo$6;->b:Lcom/flurry/sdk/jo;

    iget-wide v1, p0, Lcom/flurry/sdk/jo$6;->a:J

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/flurry/sdk/jo;->a(Lcom/flurry/sdk/jo;ZJ)V

    return-void
.end method
