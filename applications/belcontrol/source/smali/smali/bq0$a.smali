.class public final Lbq0$a;
.super Lbq0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldq0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldq0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lbq0;-><init>()V

    iput-object p1, p0, Lbq0$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldq0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbq0$a;->a:Ljava/util/List;

    return-object v0
.end method
