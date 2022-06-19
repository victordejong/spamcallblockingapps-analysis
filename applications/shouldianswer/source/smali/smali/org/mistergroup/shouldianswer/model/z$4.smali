.class Lorg/mistergroup/shouldianswer/model/z$4;
.super Landroidx/room/p;
.source "NumberReportDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/z;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/z;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/z;Landroidx/room/j;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/z$4;->a:Lorg/mistergroup/shouldianswer/model/z;

    invoke-direct {p0, p2}, Landroidx/room/p;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM numberreport"

    return-object v0
.end method
