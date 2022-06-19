.class public final synthetic Lcom/criteo/publisher/-$$Lambda$ZLL9-oTNgmXvDi5HdqVdew1etHA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/criteo/publisher/q;


# direct methods
.method public synthetic constructor <init>(Lcom/criteo/publisher/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/-$$Lambda$ZLL9-oTNgmXvDi5HdqVdew1etHA;->f$0:Lcom/criteo/publisher/q;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/criteo/publisher/-$$Lambda$ZLL9-oTNgmXvDi5HdqVdew1etHA;->f$0:Lcom/criteo/publisher/q;

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->E()Lcom/criteo/publisher/logging/j;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/logging/d;

    return-object v0
.end method
