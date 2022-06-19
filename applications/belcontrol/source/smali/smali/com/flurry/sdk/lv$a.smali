.class public final Lcom/flurry/sdk/lv$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/lv;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lv;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lv$a;->a:Lcom/flurry/sdk/lv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/lv$a;->a:Lcom/flurry/sdk/lv;

    invoke-virtual {v0}, Lcom/flurry/sdk/lv;->a()V

    new-instance v0, Lcom/flurry/sdk/lw;

    invoke-direct {v0}, Lcom/flurry/sdk/lw;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/ko;)V

    return-void
.end method
