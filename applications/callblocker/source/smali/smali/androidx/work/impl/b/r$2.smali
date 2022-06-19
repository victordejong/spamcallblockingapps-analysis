.class Landroidx/work/impl/b/r$2;
.super Landroidx/room/o;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/b/r;-><init>(Landroidx/room/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/b/r;


# direct methods
.method constructor <init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Landroidx/work/impl/b/r$2;->a:Landroidx/work/impl/b/r;

    invoke-direct {p0, p2}, Landroidx/room/o;-><init>(Landroidx/room/i;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string/jumbo v0, "DELETE FROM workspec WHERE id=?"

    .line 149
    const-string/jumbo v0, "DELETE FROM workspec WHERE id=?"

    return-object v0
.end method
