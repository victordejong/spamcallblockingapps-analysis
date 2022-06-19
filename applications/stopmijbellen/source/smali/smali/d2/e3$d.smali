.class public Ld2/e3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/e3;


# direct methods
.method public constructor <init>(Ld2/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e3$d;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/e3$d;->a:Ld2/e3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "ad_session_id"

    .line 4
    invoke-virtual {v0, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->l()Ld2/k0;

    move-result-object v1

    .line 6
    iget-object v1, v1, Ld2/k0;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/j;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "use_custom_close"

    .line 9
    invoke-static {p1, v1}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ld2/j;->setNoCloseButton(Z)V

    :goto_0
    return-void
.end method
