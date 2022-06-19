.class public final Lcom/flurry/sdk/kt$3;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kt;->b(Lcom/flurry/sdk/mg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/mg;

.field public final synthetic b:Lcom/flurry/sdk/kt;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kt;Lcom/flurry/sdk/mg;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kt$3;->b:Lcom/flurry/sdk/kt;

    iput-object p2, p0, Lcom/flurry/sdk/kt$3;->a:Lcom/flurry/sdk/mg;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kt$3;->a:Lcom/flurry/sdk/mg;

    invoke-virtual {v0}, Lcom/flurry/sdk/mg;->h()V

    return-void
.end method
