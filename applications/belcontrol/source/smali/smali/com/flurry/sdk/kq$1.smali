.class public final Lcom/flurry/sdk/kq$1;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/ko;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/kp;

.field public final synthetic b:Lcom/flurry/sdk/ko;

.field public final synthetic c:Lcom/flurry/sdk/kq;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kq;Lcom/flurry/sdk/kp;Lcom/flurry/sdk/ko;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kq$1;->c:Lcom/flurry/sdk/kq;

    iput-object p2, p0, Lcom/flurry/sdk/kq$1;->a:Lcom/flurry/sdk/kp;

    iput-object p3, p0, Lcom/flurry/sdk/kq$1;->b:Lcom/flurry/sdk/ko;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/kq$1;->a:Lcom/flurry/sdk/kp;

    iget-object v1, p0, Lcom/flurry/sdk/kq$1;->b:Lcom/flurry/sdk/ko;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/kp;->a(Lcom/flurry/sdk/ko;)V

    return-void
.end method
