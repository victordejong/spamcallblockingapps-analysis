.class public final Lel0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkm0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lel0;->h()V
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
.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lel0;->e()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    const-string v0, "DATA_DETECTION_ADDRESS"

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldl0;

    new-instance v0, Lel0$c$a;

    invoke-direct {v0, p0}, Lel0$c$a;-><init>(Lel0$c;)V

    invoke-virtual {p1, v0}, Ldl0;->g(Ljava/lang/Runnable;)V

    return-void
.end method
