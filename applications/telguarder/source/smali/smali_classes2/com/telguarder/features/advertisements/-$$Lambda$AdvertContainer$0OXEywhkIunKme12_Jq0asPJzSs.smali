.class public final synthetic Lcom/telguarder/features/advertisements/-$$Lambda$AdvertContainer$0OXEywhkIunKme12_Jq0asPJzSs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/advertisements/AdvertContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/advertisements/AdvertContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertContainer$0OXEywhkIunKme12_Jq0asPJzSs;->f$0:Lcom/telguarder/features/advertisements/AdvertContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertContainer$0OXEywhkIunKme12_Jq0asPJzSs;->f$0:Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertContainer;->lambda$advertAddToHolder$1$AdvertContainer()V

    return-void
.end method
