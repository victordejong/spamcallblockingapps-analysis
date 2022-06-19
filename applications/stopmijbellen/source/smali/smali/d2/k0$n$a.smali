.class public Ld2/k0$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0$n;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/k0$n;


# direct methods
.method public constructor <init>(Ld2/k0$n;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/k0$n$a;->b:Ld2/k0$n;

    iput-object p2, p0, Ld2/k0$n$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/k0$n$a;->b:Ld2/k0$n;

    iget-object v0, v0, Ld2/k0$n;->a:Ld2/k0;

    iget-object v1, p0, Ld2/k0$n$a;->a:Ld2/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "ad_session_id"

    .line 4
    invoke-virtual {v2, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v0, Ld2/k0;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/j0;

    if-nez v3, :cond_0

    .line 6
    iget-object v1, v1, Ld2/t0;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2}, Ld2/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v3}, Ld2/k0;->d(Ld2/j0;)V

    :goto_0
    return-void
.end method
