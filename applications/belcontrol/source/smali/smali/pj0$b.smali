.class public final Lpj0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpj0;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lpj0;->c()Loj0;

    move-result-object v0

    invoke-static {v0}, Lqj0;->b(Loj0;)V

    new-instance v0, Loj0;

    invoke-direct {v0}, Loj0;-><init>()V

    invoke-static {v0}, Lpj0;->d(Loj0;)Loj0;

    return-void
.end method
