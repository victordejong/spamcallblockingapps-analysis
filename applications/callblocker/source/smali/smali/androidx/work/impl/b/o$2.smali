.class Landroidx/work/impl/b/o$2;
.super Landroidx/room/o;
.source "WorkProgressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/b/o;-><init>(Landroidx/room/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/b/o;


# direct methods
.method constructor <init>(Landroidx/work/impl/b/o;Landroidx/room/i;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroidx/work/impl/b/o$2;->a:Landroidx/work/impl/b/o;

    invoke-direct {p0, p2}, Landroidx/room/o;-><init>(Landroidx/room/i;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "DELETE from WorkProgress where work_spec_id=?"

    .line 57
    const-string/jumbo v0, "DELETE from WorkProgress where work_spec_id=?"

    return-object v0
.end method
