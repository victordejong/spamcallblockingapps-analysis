.class public final Lcom/flurry/sdk/lu$4;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/lu;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/ls;

.field public final synthetic b:Lcom/flurry/sdk/lu;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lu;Lcom/flurry/sdk/ls;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lu$4;->b:Lcom/flurry/sdk/lu;

    iput-object p2, p0, Lcom/flurry/sdk/lu$4;->a:Lcom/flurry/sdk/ls;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/lu$4;->b:Lcom/flurry/sdk/lu;

    iget-object v1, p0, Lcom/flurry/sdk/lu$4;->a:Lcom/flurry/sdk/ls;

    invoke-static {v0, v1}, Lcom/flurry/sdk/lu;->a(Lcom/flurry/sdk/lu;Lcom/flurry/sdk/ls;)V

    return-void
.end method
