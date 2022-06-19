.class public final Lcom/criteo/publisher/f/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/f/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/f/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f/p<",
            "Lcom/criteo/publisher/f/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f/p<",
            "Lcom/criteo/publisher/f/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/f/z$a;->a:Lcom/criteo/publisher/f/p;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/criteo/publisher/f/z$a;->a:Lcom/criteo/publisher/f/p;

    invoke-interface {v0}, Lcom/criteo/publisher/f/p;->a()I

    move-result v0

    return v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/s;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/criteo/publisher/f/z$a;->a:Lcom/criteo/publisher/f/p;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/f/p;->a(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .line 20
    check-cast p1, Lcom/criteo/publisher/f/s;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/criteo/publisher/f/z$a;->a:Lcom/criteo/publisher/f/p;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/f/p;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
