.class public Lpo0$a;
.super Lfm0$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfm0<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Ljava/lang/Object;",
        ">.a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpo0;


# direct methods
.method public constructor <init>(Lpo0;)V
    .locals 0

    iput-object p1, p0, Lpo0$a;->a:Lpo0;

    invoke-direct {p0, p1}, Lfm0$a;-><init>(Lfm0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lpo0;Loo0;)V
    .locals 0

    invoke-direct {p0, p1}, Lpo0$a;-><init>(Lpo0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 0

    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1, p2}, Lpo0$a;->d(Lcom/facebook/share/internal/LikeContent;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lyl0;
    .locals 0

    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lpo0$a;->e(Lcom/facebook/share/internal/LikeContent;)Lyl0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/facebook/share/internal/LikeContent;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/facebook/share/internal/LikeContent;)Lyl0;
    .locals 2

    iget-object v0, p0, Lpo0$a;->a:Lpo0;

    invoke-virtual {v0}, Lpo0;->e()Lyl0;

    move-result-object v0

    new-instance v1, Lpo0$a$a;

    invoke-direct {v1, p0, p1}, Lpo0$a$a;-><init>(Lpo0$a;Lcom/facebook/share/internal/LikeContent;)V

    invoke-static {}, Lpo0;->m()Ldm0;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lem0;->i(Lyl0;Lem0$a;Ldm0;)V

    return-object v0
.end method
