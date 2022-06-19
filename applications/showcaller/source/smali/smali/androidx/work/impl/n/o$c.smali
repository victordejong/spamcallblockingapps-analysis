.class Landroidx/work/impl/n/o$c;
.super Landroidx/room/n;
.source "WorkProgressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/n/o;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/work/impl/n/o;


# direct methods
.method constructor <init>(Landroidx/work/impl/n/o;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/n/o$c;->d:Landroidx/work/impl/n/o;

    invoke-direct {p0, p2}, Landroidx/room/n;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM WorkProgress"

    return-object v0
.end method
