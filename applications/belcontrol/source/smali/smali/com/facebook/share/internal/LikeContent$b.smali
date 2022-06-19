.class public Lcom/facebook/share/internal/LikeContent$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeContent$b;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/share/internal/LikeContent$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/share/internal/LikeContent$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/facebook/share/internal/LikeContent$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/share/internal/LikeContent$b;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/facebook/share/internal/LikeContent;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/facebook/share/internal/LikeContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/LikeContent;-><init>(Lcom/facebook/share/internal/LikeContent$b;Lcom/facebook/share/internal/LikeContent$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent$b;->b:Ljava/lang/String;

    return-object p0
.end method
