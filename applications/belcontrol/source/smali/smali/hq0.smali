.class public Lhq0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhq0$a;
    }
.end annotation


# instance fields
.field public final a:Lcq0;


# direct methods
.method public constructor <init>(Lcq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhq0;->a:Lcq0;

    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lhq0$a;

    const-string v1, "JobParameters is invalid"

    invoke-direct {v0, v1, p0}, Lhq0$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0
.end method


# virtual methods
.method public a(Lzp0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzp0;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lhq0;->a:Lcq0;

    invoke-interface {v0, p1}, Lcq0;->a(Lzp0;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lzp0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lhq0;->a(Lzp0;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lhq0;->b(Ljava/util/List;)V

    return-void
.end method
