.class public final Lpj0$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpj0;->m(Llj0;Lcom/facebook/GraphRequest;Laj0;Lzj0;Lwj0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llj0;

.field public final synthetic b:Lzj0;


# direct methods
.method public constructor <init>(Llj0;Lzj0;)V
    .locals 0

    iput-object p1, p0, Lpj0$f;->a:Llj0;

    iput-object p2, p0, Lpj0$f;->b:Lzj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lpj0$f;->a:Llj0;

    iget-object v1, p0, Lpj0$f;->b:Lzj0;

    invoke-static {v0, v1}, Lqj0;->a(Llj0;Lzj0;)V

    return-void
.end method
