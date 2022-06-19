.class Lorg/mistergroup/shouldianswer/model/q$3;
.super Landroidx/room/p;
.source "CheckedCallDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/q;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/q;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/q;Landroidx/room/j;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/q$3;->a:Lorg/mistergroup/shouldianswer/model/q;

    invoke-direct {p0, p2}, Landroidx/room/p;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM checkedcall"

    return-object v0
.end method
