.class public Lcom/facebook/login/widget/LoginButton$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lqn0;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ltn0;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lqn0;->d:Lqn0;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$d;->a:Lqn0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$d;->b:Ljava/util/List;

    sget-object v0, Ltn0;->h:Ltn0;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$d;->c:Ltn0;

    const-string v0, "rerequest"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$d;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/widget/LoginButton$d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton$d;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lqn0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$d;->a:Lqn0;

    return-object v0
.end method

.method public d()Ltn0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$d;->c:Ltn0;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$d;->b:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$d;->d:Ljava/lang/String;

    return-void
.end method

.method public g(Lqn0;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$d;->a:Lqn0;

    return-void
.end method

.method public h(Ltn0;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$d;->c:Ltn0;

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$d;->b:Ljava/util/List;

    return-void
.end method
