.class public Ld2/k0$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0$c;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/k0$c;


# direct methods
.method public constructor <init>(Ld2/k0$c;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/k0$c$a;->b:Ld2/k0$c;

    iput-object p2, p0, Ld2/k0$c$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/k0$c$a;->b:Ld2/k0$c;

    iget-object v0, v0, Ld2/k0$c;->a:Ld2/k0;

    .line 2
    iget-object v0, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p0, Ld2/k0$c$a;->a:Ld2/t0;

    .line 4
    iget-object v1, v1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 5
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/q;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Ld2/q;->a:Landroid/support/v4/media/a;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
