.class public final Lcom/flurry/sdk/jo$14;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/jo;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jo;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jo$14;->a:Lcom/flurry/sdk/jo;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/jo$14;->a:Lcom/flurry/sdk/jo;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/flurry/sdk/jo;->a(Lcom/flurry/sdk/jo;ZJ)V

    return-void
.end method
