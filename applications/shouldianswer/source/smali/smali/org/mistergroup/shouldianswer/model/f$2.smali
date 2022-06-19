.class Lorg/mistergroup/shouldianswer/model/f$2;
.super Landroidx/room/b;
.source "BlockExceptionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/f;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Lorg/mistergroup/shouldianswer/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/f;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/f;Landroidx/room/j;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/f$2;->a:Lorg/mistergroup/shouldianswer/model/f;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `BlockException` WHERE `id` = ?"

    return-object v0
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p2, Lorg/mistergroup/shouldianswer/model/d;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/f$2;->a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/d;)V

    return-void
.end method

.method public a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/d;)V
    .locals 2

    .line 70
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/d;->a()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroidx/i/a/f;->a(IJ)V

    return-void
.end method
