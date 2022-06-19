.class Lorg/mistergroup/shouldianswer/model/v$2;
.super Landroidx/room/b;
.source "NumberCaptionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/v;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/v;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/v;Landroidx/room/j;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/v$2;->a:Lorg/mistergroup/shouldianswer/model/v;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `NumberCaption` WHERE `id` = ?"

    return-object v0
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/v$2;->a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/NumberCaption;)V

    return-void
.end method

.method public a(Landroidx/i/a/f;Lorg/mistergroup/shouldianswer/model/NumberCaption;)V
    .locals 2

    .line 76
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroidx/i/a/f;->a(IJ)V

    return-void
.end method
