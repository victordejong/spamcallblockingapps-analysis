.class public final synthetic Ld61;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/core/CallService;


# direct methods
.method public synthetic constructor <init>(Lcom/kedlin/cca/core/CallService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld61;->a:Lcom/kedlin/cca/core/CallService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld61;->a:Lcom/kedlin/cca/core/CallService;

    invoke-virtual {v0}, Lcom/kedlin/cca/core/CallService;->c()V

    return-void
.end method
